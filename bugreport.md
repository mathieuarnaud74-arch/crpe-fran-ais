# Bug Report — CRPE Prep Platform

<!-- METADATA
report_id: bugreport-2026-03-23-01
date: 2026-03-23
agent: audit-loop
-->

## Résumé exécutif

- **5 bugs critiques** (sécurité / données corrompues) *(inchangé — aucun nouveau bug critique trouvé en passes 8 et 9)*
- **22 bugs majeurs** (logique métier incorrecte / comportements inattendus) *(inchangé — aucun nouveau bug majeur trouvé en passes 8 et 9)*
- **41 bugs mineurs** (qualité / UX / edge cases) *(+3 passe 9)*

### Note sur les correctifs intervenus entre les passes
Commit `416a1e9 fix(audit)` (2026-03-23) a corrigé plusieurs bugs documentés dans les passes 1–4 (notamment CRIT-003 partial, MIN-003, MIN-011 partial, MAJ-006 partial, MAJ-007 partial). Les bugs CRIT-001 à CRIT-005 restent présents — voir annotations par bug. Le commit `3fc59a9 refactor` a découpé `exercise-player.tsx` et ajouté des tests mais n'a pas traité les bugs de logique métier.

---

## Bugs critiques (bloquants / sécurité)

### [CRIT-001] Race condition sur le quota freemium — double soumission possible

- **Fichier** : `features/exercises/server/actions.ts:88-96`
- **Description** : La vérification du quota (`getAttemptsCountToday` + `canSubmitAttempt`) et l'insertion dans `attempts` sont deux opérations séquentielles sans verrou. Un utilisateur peut envoyer simultanément deux requêtes : les deux passent le check (même `count` lu), les deux insèrent. L'utilisateur consomme ainsi 2 tentatives pour 1 quota vérifié.
- **Impact** : Un utilisateur gratuit peut dépasser son quota journalier (20/30 questions) en soumettant des requêtes rapprochées (double-clic, multi-onglets).
- **Données pour correcteur** :
  ```ts
  // actions.ts:88-131
  const attemptsToday = await getAttemptsCountToday(user.id);   // lit N
  if (!canSubmitAttempt(attemptsToday, premium)) { ... }         // check avec N
  // ...traitement...
  const { error } = await supabase.from("attempts").insert(...); // insert — pas atomique avec le check
  ```
- **Suggestion de fix** : Utiliser une RPC Postgres atomique (`SELECT COUNT ... FOR UPDATE`) ou une contrainte d'unicité partielle par (user_id, date). Le rate limiter actuel (in-memory) ne protège pas contre ce vecteur.

---

### [CRIT-002] Singleton admin Supabase partagé entre toutes les requêtes serverless

- **Fichier** : `lib/supabase/admin.ts:6-25`
- **Description** : Le client admin (service role) est créé une seule fois dans `let adminClient` au niveau module. Sur Vercel, les fonctions serverless peuvent être réutilisées (warm instances). Le client admin bypasse tous les Row Level Security (RLS) de Supabase. Si le singleton est partagé dans un contexte de concurrence, des opérations d'un utilisateur peuvent potentiellement influencer celles d'un autre.
- **Impact** : Risque d'accès aux données sans RLS dans un contexte warm instance partagé. Si le client est corrompu en mémoire (ex. clé tournée), toutes les opérations Stripe/webhook échouent silencieusement.
- **Données pour correcteur** :
  ```ts
  // lib/supabase/admin.ts:6
  let adminClient: ReturnType<typeof createClient<Database>> | null = null;
  // ...
  if (!adminClient) {
    adminClient = createClient<Database>(...); // stocké globalement
  }
  return adminClient;
  ```
- **Suggestion de fix** : Créer un nouveau client à chaque appel (le client `@supabase/supabase-js` sans session à persister est léger). Supprimer le singleton.

---

### [CRIT-003] Stripe checkout : daily/weekly créés en `mode: "subscription"` mais le webhook attend `mode: "payment"`

- **Fichier** : `app/api/stripe/checkout/route.ts:93` et `app/api/stripe/webhook/route.ts:80-103`
- **Description** : Les prix `premium_daily` et `premium_weekly` sont traités comme des accès one-time dans le webhook (branche `session.mode === "payment"`), mais la session Stripe est toujours créée avec `mode: "subscription"`. La branche `mode === "payment"` du webhook ne sera donc jamais déclenchée pour ces achats. Le webhook tombera dans la branche `mode === "subscription"`, et la durée d'accès sera calculée depuis `current_period_end` Stripe (1 mois standard), pas depuis `ONE_TIME_DURATIONS`.
- **Impact** : Les achats "accès 24h" et "accès 7 jours" accordent un accès d'1 mois au lieu de 1 ou 7 jours. Erreur de facturation / accès non conforme à l'offre vendue.
- **Données pour correcteur** :
  ```ts
  // checkout/route.ts:93 — mode toujours "subscription"
  const session = await stripe.checkout.sessions.create({
    mode: "subscription",   // <-- jamais "payment" même pour daily/weekly
    ...
  });
  // webhook/route.ts:80 — branche morte
  if (session.mode === "payment" && userId && priceId) { // jamais true
    const days = ONE_TIME_DURATIONS[priceId]; // jamais atteint
  }
  ```
- **Suggestion de fix** : Changer `mode` à `"payment"` pour `isLimitedAccess` dans le checkout. Cela activera la branche webhook correcte qui insère avec la durée calculée depuis `ONE_TIME_DURATIONS`. Attention : les prix Stripe doivent être configurés comme prix ponctuels (one-time), pas récurrents.

---

## Bugs majeurs (fonctionnels)

### [MAJ-001] Calcul UTC du début de journée Paris — logique incorrecte dans `getAttemptsCountToday`

- **Fichier** : `features/exercises/server/queries.ts:334-347`
- **Description** : La logique pour calculer l'heure UTC de début du jour Paris utilise `setUTCHours(-(parisHour - 12))`. En été (UTC+2), `parisHour` calculé via `noonUtc.toLocaleString` à midi UTC en heure Paris est 14, donc `setUTCHours(-(14-12)) = setUTCHours(-2)` → recule au jour précédent à 22:00 UTC, ce qui est bien minuit Paris UTC+2. En hiver (UTC+1), `parisHour = 13`, `setUTCHours(-1)` → jour précédent 23:00 UTC = minuit Paris UTC+1. La logique fonctionne techniquement grâce au comportement de `setUTCHours` avec des valeurs négatives, MAIS elle est extrêmement fragile : le calcul `parisHour` à midi peut retourner `24` (si représentation hour12=false renvoie "24" à minuit), ce qui produirait `setUTCHours(-(24-12)) = setUTCHours(-12)` = deux jours en arrière.
- **Impact** : Si `toLocaleString` retourne "24" au lieu de "0" pour minuit Paris (comportement dépendant du runtime Node.js), le quota est calculé sur une fenêtre de 2 jours au lieu d'1, permettant à l'utilisateur de consommer le quota sans limite.
- **Données pour correcteur** :
  ```ts
  // queries.ts:336-341
  const parisHour = parseInt(
    noonUtc.toLocaleString("en-US", { timeZone: "Europe/Paris", hour: "numeric", hour12: false }),
    10,
  );
  const startOfDay = new Date(`${parisDate}T00:00:00Z`);
  startOfDay.setUTCHours(-(parisHour - 12)); // fragile
  ```
- **Suggestion de fix** : Approche directe et robuste :
  ```ts
  const startOfDay = new Date(`${parisDate}T00:00:00`);
  // Obtenir l'offset Paris en ms via Intl.DateTimeFormat
  ```
  Ou utiliser `date-fns-tz` déjà potentiellement dans le projet.

---

### [MAJ-002] XP calculé différemment côté client et serveur — rollback potentiellement incorrect

- **Fichier** : `features/exercises/components/exercise-player.tsx:149-154` + `features/exercises/server/actions.ts:113-120`
- **Description** : Le client calcule le XP sans `dailyStreak` (appel à `calculateXpEarned` sans 6e argument, donc `dailyStreak=0`). Le serveur recalcule avec `currentDailyStreak` récupéré depuis la DB. Si un utilisateur a un streak journalier ≥3, le XP serveur sera supérieur au XP client. Le rollback côté client (`ROLLBACK_XP`) utilise le XP client, pas le XP serveur.
- **Impact** : Lorsqu'un utilisateur avec streak journalier actif a une erreur réseau lors de la soumission, le rollback annule moins de XP que ce qui a réellement pu être crédité (ou plus, selon l'ordre d'exécution). État XP incohérent entre affichage et base.
- **Données pour correcteur** :
  ```ts
  // player.tsx:149 — dailyStreak non passé (= 0 par défaut)
  const xp = calculateXpEarned(evaluation.isCorrect, consecutiveCorrectRef.current, timeSpentMs, mode);
  // actions.ts:113 — dailyStreak passé depuis la DB
  const xpEarned = calculateXpEarned(isCorrect, streak, timeSpentMs, mode, 60_000, currentDailyStreak);
  ```

---

### [MAJ-003] `goToPreviousQuestion` navigue vers la dernière question répondue, pas la précédente dans l'ordre

- **Fichier** : `features/exercises/components/exercise-player.tsx:225-241`
- **Description** : La fonction cherche la dernière question **répondue** (`if (results[session.questions[i].id])`) parmi les questions précédant l'index courant, au lieu de simplement aller à `currentIndex - 1`.
- **Impact** : Si l'utilisateur est à la question 5 et que 3 et 4 sont non répondues, le bouton "Précédente" l'amène à la question 2, sautant 3 et 4. UX confuse et comportement non attendu.
- **Données pour correcteur** :
  ```ts
  // player.tsx:228-232
  for (let i = currentIndex - 1; i >= 0; i--) {
    if (results[session.questions[i].id]) { // cherche répondue, pas juste i-1
      prevIdx = i; break;
    }
  }
  ```

---

### [MAJ-004] `getExerciseSessionById` charge tout le catalogue pour trouver une session par ID

- **Fichier** : `features/exercises/server/queries.ts:278-285`
- **Description** : Pour résoudre une session par ID, la fonction charge l'intégralité des sessions françaises (pagination de 1000 exercices, boucle while) puis si non trouvée toutes les sessions de maths. Appelée depuis `generateMetadata` ET depuis la page `ExerciseDetailPage` dans Next.js 15 App Router — deux exécutions distinctes dont le cache `React.cache` ne se partage pas.
- **Impact** : Chaque visite sur `/exercices/[id]` déclenche potentiellement 4 passes (2 appels × 2 sujets) de boucles de pagination, chacune requêtant 1000 lignes en base. Performance critique dégradée à mesure que le catalogue grandit.
- **Données pour correcteur** :
  ```ts
  // queries.ts:279-284
  const frenchSessions = await getExercises({ subject: "Francais" }); // charge tout
  const found = frenchSessions.find((session) => session.id === id);
  if (found) return found;
  const mathSessions = await getExercises({ subject: "Mathematiques" }); // charge tout
  ```
- **Suggestion de fix** : L'ID de session a le format `session-{topicKey}-{level}-{chunk}`. Extraire `topicKey` depuis l'ID et requêter directement `exercises` filtrés par `topic_key`.

---

### [MAJ-005] `attemptsToday` dashboard calculé en heure UTC — incohérence avec le quota serveur en heure Paris

- **Fichier** : `lib/dashboard/build-dashboard-data.ts:435-440`
- **Description** : Le comptage `attemptsToday` pour l'affichage dashboard utilise `new Date().setHours(0,0,0,0)` — heure locale du process Node.js (UTC en production sur Vercel). Le quota serveur (`getAttemptsCountToday`) utilise minuit Paris. Divergence possible de ±2h selon la saison.
- **Impact** : L'indicateur `remainingToday` sur le tableau de bord peut afficher un quota inexact. Un utilisateur peut voir "5 questions restantes" mais sa prochaine tentative est bloquée (ou inversement).
- **Données pour correcteur** :
  ```ts
  // build-dashboard-data.ts:435-440
  const startOfDay = new Date();
  startOfDay.setHours(0, 0, 0, 0); // UTC en prod, pas Paris
  ```

---

### [MAJ-006] Race condition dans `updateUserXp` — lecture + écriture non atomique du XP

- **Fichier** : `features/gamification/server/queries.ts:72-102`
- **Description** : `updateUserXp` lit `getUserGamification` (avec `React.cache` par requête), calcule `newXp = old + delta`, puis `.update({ xp: newXp })`. Si deux réponses sont soumises simultanément depuis deux onglets, les deux lisent le même `xp=100`, les deux calculent `110`, et la seconde écrase la première. Un delta est perdu.
- **Impact** : Perte de XP lors de soumissions simultanées (multi-onglets, mobile + desktop). Impact gamification.
- **Données pour correcteur** :
  ```ts
  // gamification/queries.ts:73-74
  const gamification = await getUserGamification(userId); // lit xp = 100
  const newXp = gamification.xp + xpDelta;               // 100 + 10 = 110
  // si concurrent a déjà écrit 110, cet update repasse à 110 (perte de 10)
  await supabase.from("user_gamification").update({ xp: newXp }).eq("user_id", userId);
  ```
- **Suggestion de fix** : RPC Postgres atomique : `UPDATE user_gamification SET xp = xp + $delta WHERE user_id = $id RETURNING *`.

---

### [MAJ-007] `normalizeSubdomains` — cast unsafe de JSONB sans vérification de types

- **Fichier** : `features/diagnostic/server/queries.ts:27-51`
- **Description** : Lorsque `raw` est un objet (format JSONB stocké en base), `value.score` et `value.total` sont utilisés sans vérifier `typeof`. Si une valeur en base est corrompue (`score: null`, `score: "abc"`), `value.score ?? 0` retourne `0` pour `null` mais pas pour `"abc"`. Le calcul `computeMastery("abc", 0)` produit `"a_consolider"` incorrectement.
- **Impact** : Affichage de résultats de diagnostic incorrects pour les utilisateurs dont les données sont corrompues. Non bloquant mais trompe l'utilisateur sur ses forces/faiblesses.

---

## Bugs mineurs (qualité / UX)

### [MIN-001] `requireAdmin` — erreur Supabase `.single()` non loggée si profil absent

- **Fichier** : `features/auth/server/guards.ts:28-38`
- **Description** : `.single()` retourne une erreur PostgREST si aucun profil n'existe. L'erreur est ignorée (destructuring `{ data: profile }` sans `error`). La sécurité n'est pas compromise (redirect si pas admin), mais l'erreur DB n'est jamais loggée.
- **Données pour correcteur** :
  ```ts
  const { data: profile } = await supabase // error ignorée
    .from("profiles").select("role").eq("id", user.id).single();
  ```

---

### [MIN-002] Checkout Stripe — `cancel_at_period_end` dans `subscription_data` est ignoré par Stripe

- **Fichier** : `app/api/stripe/checkout/route.ts:85-90`
- **Description** : `cancel_at_period_end` dans `subscription_data` lors de la création d'une Checkout Session n'est pas un paramètre valide selon l'API Stripe. Il est silencieusement ignoré. (Note : lié à [CRIT-003] mais indépendant — même si le mode était correct, cette option ne fonctionnerait pas.)
- **Impact** : Les abonnements daily/weekly ne s'annulent pas automatiquement à l'issue de la période.
- **Données pour correcteur** :
  ```ts
  ...(isLimitedAccess && { cancel_at_period_end: true }), // ignoré par Stripe
  ```

---

### [MIN-003] Diagnostic invité — `localStorage` supprimé avant confirmation de succès de la requête

- **Fichier** : `features/auth/components/auth-form.tsx:74-85` et `:106-117`
- **Description** : Le résultat du diagnostic invité est envoyé via `fetch`, puis `localStorage.removeItem` est appelé immédiatement après, sans vérifier si la réponse HTTP est un succès. Si le réseau coupe ou si le serveur renvoie une erreur, le diagnostic est perdu définitivement.
- **Impact** : Perte du diagnostic invité lors d'une connexion avec réseau instable. L'erreur est attrapée par un `catch {}` vide — aucune indication à l'utilisateur.
- **Données pour correcteur** :
  ```ts
  // auth-form.tsx:76-82
  await fetch("/api/diagnostic/complete", { method: "POST", body: savedDiagnostic });
  localStorage.removeItem("guest_diagnostic_result"); // supprimé même si fetch échoue
  ```
- **Suggestion de fix** :
  ```ts
  const resp = await fetch(...);
  if (resp.ok) localStorage.removeItem("guest_diagnostic_result");
  ```

---

### [MIN-004] Timer — son `onWarning` potentiellement joué deux fois

- **Fichier** : `features/exercises/components/exercise-timer.tsx:55-59`
- **Description** : `onUpdate` est rappelé à chaque tick. Si un re-render React se produit exactement quand `remainingTime === 10`, `onWarning` peut être appelé deux fois. Pas de guard de déduplication.
- **Impact** : Son "timerWarning" joué deux fois de suite. UX légèrement dégradée.

---

### [MIN-005] `getRandomExercises` — toujours limité aux exercices gratuits, même pour les utilisateurs premium

- **Fichier** : `features/exercises/server/queries.ts:307-330`
- **Description** : Filtre `.eq("access_tier", "free")` codé en dur sans tenir compte du statut premium de l'utilisateur.
- **Impact** : Les abonnés premium ne voient pas leurs exercices premium en mode aléatoire. Fonctionnalité partiellement dégradée.
- **Données pour correcteur** :
  ```ts
  // queries.ts:315
  .eq("access_tier", "free") // toujours, même pour premium
  ```

---

### [MIN-006] Rate limiter in-memory — contournable en déploiement multi-instance

- **Fichier** : `lib/rate-limit.ts:8`
- **Description** : Le `store` Map vit en mémoire d'une instance Node.js. En déploiement serverless (Vercel), chaque instance a son propre store. Un acteur malveillant peut contourner les limites en distribuant ses requêtes sur plusieurs instances.
- **Impact** : Protection rate-limit sur `/api/diagnostic/complete` et `/api/stripe/checkout` contournable. Risque d'abus API Stripe (coût).
- **Suggestion de fix** : Redis/Upstash pour un store partagé.

---

### [MIN-007] `buildDashboardData` — `attemptsToday` calculé sur `attempts` non scopés

- **Fichier** : `lib/dashboard/build-dashboard-data.ts:438`
- **Description** : `attemptsToday` est calculé depuis `attempts` (toutes tentatives passées en paramètre, incluant tous sujets), pas depuis `scopedAttempts` (filtrées pour les sessions visibles du sujet courant). Si l'utilisateur a des tentatives sur les deux sujets (Français + Maths), `attemptsToday` sera surestimé sur chaque dashboard individuel.
- **Impact** : `remainingToday` affiché trop bas — l'utilisateur croit avoir moins de questions disponibles qu'il n'en a réellement.
- **Données pour correcteur** :
  ```ts
  // build-dashboard-data.ts:438
  const attemptsToday = attempts.filter(...).length; // "attempts" = toutes matières
  // à corriger : utiliser scopedAttempts.filter(...)
  ```

---

### [MIN-008] `exercise-player.tsx` — `useEffect` de résultats dépend de `session.questions` mais pas de `session.id`

- **Fichier** : `features/exercises/components/exercise-player.tsx:89-127`
- **Description** : Le `useEffect` sur `[results, session.questions, playSound]` est déclenché à chaque changement de `results`. Si le composant est réutilisé avec une nouvelle session (même instance React mais `session` changée), `prevResultsCount.current` n'est pas remis à zéro. La note en ligne 77 (eslint-disable) pour le `useMemo` supprime également `session.questions` des dépendances — intentionnel mais risqué si les questions changent sans que l'ID change.
- **Impact** : Si une session est remplacée sans remontage du composant, les sons et confettis peuvent se déclencher incorrectement pour les résultats de la nouvelle session.

---

---

## Bugs majeurs — passe 2 (2026-03-23)

### [MAJ-008] Race condition sur le quota fiches — même vecteur que CRIT-001

- **Fichier** : `features/fiches/server/actions.ts:36-45`
- **Description** : `markFicheReadAction` vérifie `getFicheReadsCountToday` puis insère avec `upsert`, sans verrou. Même vulnérabilité que CRIT-001 : deux onglets ouverts sur deux fiches différentes peuvent passer le check simultanément, consommant 2 quotas pour 1 vérification.
- **Impact** : Un utilisateur gratuit peut dépasser le quota journalier de fiches (5/jour par défaut) en ouvrant plusieurs fiches en parallèle.
- **Données pour correcteur** :
  ```ts
  // actions.ts:36-45
  const ficheReadsToday = await getFicheReadsCountToday(user.id);
  if (!canReadFiche(ficheReadsToday, premium)) return; // check non atomique
  // ...
  await supabase.from("fiche_completions").upsert(...); // insert séparé
  ```
- **Suggestion de fix** : RPC Postgres atomique ou contrainte d'unicité `(user_id, fiche_slug, date)` avec comptage sur la contrainte.

---

### [MAJ-009] `markFicheReadAction` — quota consommé même si la fiche est déjà lue (double-comptage potentiel)

- **Fichier** : `features/fiches/server/actions.ts:22-33` vs `app/(app)/fiches/[slug]/page.tsx:86`
- **Description** : La page vérifie `completedSlugs.has(fiche.slug)` avant d'afficher le contenu, et évite le quota si déjà lue. Mais `MarkFicheRead` est rendu inconditionnellement (ligne 132 de la page) même pour les fiches déjà lues. Dans `markFicheReadAction`, la branche "déjà lue" fait un `upsert` silencieux sans consommer de quota — ce qui est correct. **Cependant**, le composant `MarkFicheRead` utilise un `useRef(false)` pour éviter les appels répétés, mais ce guard est réinitialisé si l'action rejette (`called.current = false`). Si le réseau est intermittent, la server action peut être appelée plusieurs fois en mode retry. Comme l'upsert ne pose pas de problème de quota pour les fiches déjà lues, l'impact est limité, mais pour une **nouvelle fiche** : si l'action réussit côté base mais que la réponse réseau échoue (timeout), `called.current` est remis à `false` et l'action est rejoujée — la fiche sera upsertée une 2ème fois sans ajouter au quota (upsert), donc safe, mais le comportement de retry silencieux est trompeur.
- **Impact** : Comportement de retry non documenté. Pas de double quota pour les fiches existantes, mais logique fragile en cas d'erreurs réseau successives.
- **Données pour correcteur** :
  ```ts
  // mark-fiche-read.tsx:13-16
  markFicheReadAction(slug).catch(() => {
    called.current = false; // retry possible si erreur réseau
  });
  ```

---

### [MAJ-010] `/app/(app)/revision/page.tsx` — appels `getExerciseById` séquentiels en boucle `for`

- **Fichier** : `app/(app)/revision/page.tsx:61-65`
- **Description** : La page SRS charge les exercices dus via `getDueExercises` (1 requête), puis pour chacun appelle `getExerciseById` dans une boucle `for...of` séquentielle — N requêtes DB en série au lieu de 1 requête groupée.
- **Impact** : Pour 20 exercices dues, 20 requêtes DB séquentielles à chaque visite de la page `/revision`. Latence O(N) au lieu de O(1).
- **Données pour correcteur** :
  ```ts
  // revision/page.tsx:62-65
  for (const item of dueItems) {
    const ex = await getExerciseById(item.exercise_id); // séquentiel !
    if (ex) exercises.push(ex);
  }
  ```
- **Suggestion de fix** : Utiliser `Promise.all(dueItems.map(...))` ou ajouter une requête `getExercisesByIds(ids: string[])` avec un filtre `.in("id", ids)`.

---

## Bugs mineurs — passe 2 (2026-03-23)

### [MIN-009] `getFicheReadsCountToday` — même logique fragile UTC/Paris que MAJ-001

- **Fichier** : `features/fiches/server/queries.ts:14-33`
- **Description** : Identique à MAJ-001 — utilise `setUTCHours(-(parisHour - 12))` pour calculer le début de journée Paris. La même fragilité existe : si `toLocaleString` retourne "24" au lieu de "0", la fenêtre temporelle est de 2 jours au lieu d'1. Copier-coller du bug.
- **Impact** : Même risque que MAJ-001 — quota fiche calculé sur une fenêtre incorrecte selon le runtime Node.js.
- **Suggestion de fix** : Même correction que MAJ-001 (approche `Intl.DateTimeFormat` ou `date-fns-tz`).

---

### [MIN-010] `addXp` dans `GamificationContext` — `leveledUp` et `newLevel` calculés hors du batch de state

- **Fichier** : `features/gamification/context.tsx:38-53`
- **Description** : `addXp` utilise `setGamification` avec une fonction de mise à jour (pour éviter le stale closure), mais `leveledUp` et `newLevel` sont des variables locales mutées **à l'intérieur** de la callback de `setGamification`. En React Strict Mode (double invocation des fonctions de state en développement), ou lors d'un re-render concurrent, la callback peut être appelée deux fois. La valeur retournée (`{ leveledUp, newLevel }`) est calculée **synchroniquement** avant que le re-render ne soit commis — donc potentiellement stale si le scheduler React diffère le commit.
- **Impact** : `leveledUp` peut retourner `false` même si un level-up vient d'avoir lieu (ou vice versa) en développement Strict Mode. Animations de level-up manquées ou déclenchées en double.
- **Données pour correcteur** :
  ```ts
  // context.tsx:40-51
  let leveledUp = false;
  let newLevel = gamification.level; // valeur capturée avant le set
  setGamification((prev) => {
    newLevel = getLevelForXp(prev.xp + amount); // muté dans la callback
    leveledUp = newLevel > prev.level;
    return { ...prev, xp: prev.xp + amount, level: newLevel };
  });
  return { leveledUp, newLevel }; // retourné synchroniquement, pas garanti
  ```

---

### [MIN-011] `auth/callback/route.ts` — paramètre `next` non validé, open redirect potentiel

- **Fichier** : `app/api/auth/callback/route.ts:9`
- **Description** : Le paramètre `next` provenant de l'URL est utilisé directement dans `NextResponse.redirect(new URL(next, request.url))` sans validation. Un attaquant peut forger un lien de réinitialisation de mot de passe avec `?next=https://evil.com`, et après échange du code OAuth, l'utilisateur est redirigé vers un site externe.
- **Impact** : Open redirect — vecteur de phishing après un flux d'authentification légitime (réinitialisation de mot de passe, connexion sociale). Gravité modérée car nécessite un lien forgé, mais l'URL d'origine est `*.supabase.co` (lien d'email vérifié), ce qui donne de la crédibilité à l'attaque.
- **Données pour correcteur** :
  ```ts
  // callback/route.ts:9
  const next = searchParams.get("next") ?? "/tableau-de-bord";
  // ...
  const response = NextResponse.redirect(new URL(next, request.url)); // pas validé
  ```
- **Suggestion de fix** :
  ```ts
  const rawNext = searchParams.get("next") ?? "/tableau-de-bord";
  const next = rawNext.startsWith("/") ? rawNext : "/tableau-de-bord";
  ```

---

### [MIN-012] `leaderboard-table.tsx` — callout "hors top 50" jamais affiché si l'utilisateur est dans `rest` mais rang ≤ 20

- **Fichier** : `features/leaderboard/components/leaderboard-table.tsx:176`
- **Description** : La condition d'affichage du callout de position est `currentUserInRest && currentUser.rank > 20`. Or, `currentUserInRest` est `true` si `currentUser.rank > 3` (car `rest = entries.filter(e => e.rank > 3)`). Si l'utilisateur est classé entre la 4e et la 20e place, il est dans `rest` (affiché dans la table), mais le callout ne s'affiche pas (condition `> 20`). Ce n'est pas un bug en soi, mais la condition `> 20` semble vouloir dire "non visible dans le scroll limité", or la table affiche tous les `rest` sans pagination. Si `limit=50`, tous les rangs 4–50 sont dans `rest`, donc le callout ne s'affichera jamais pour un utilisateur classé 4–20.
- **Impact** : UX : le callout de position n'est jamais visible pour un utilisateur classé 4–20, alors que c'est précisément là qu'il est le plus informatif.
- **Données pour correcteur** :
  ```ts
  // leaderboard-table.tsx:176
  {currentUserInRest && currentUser.rank > 20 && ( // jamais vrai si rank <= 20
  ```

---

---

## Bugs critiques — passe 3 (2026-03-23)

### [CRIT-004] `middleware.ts` — aucune protection de route côté middleware : toutes les pages protégées dépendent uniquement des Server Components

- **Fichier** : `middleware.ts:6-36`
- **Description** : Le middleware appelle `supabase.auth.getUser()` pour rafraîchir la session, mais **ne redirige jamais** les utilisateurs non authentifiés vers `/connexion`. La protection de toutes les routes `/(app)/*` repose exclusivement sur `requireUser()` dans chaque layout/page Server Component. Si un Server Component oublie d'appeler `requireUser()` (ou est ajouté par un développeur sans le guard), la route est accessible sans authentification. De plus, le middleware correspond à **toutes les routes** (y compris `/(app)`), ce qui crée une fausse impression de sécurité côté middleware.
- **Impact** : Toute route protégée ajoutée sans appel explicite à `requireUser()` sera publiquement accessible. Pas de filet de sécurité middleware. Le risque est systémique à mesure que la codebase grandit.
- **Données pour correcteur** :
  ```ts
  // middleware.ts:33-35 — le middleware ne redirige jamais
  await supabase.auth.getUser(); // rafraîchit la session mais n'agit pas sur le résultat
  return response; // toujours 200, jamais de redirect
  ```
- **Suggestion de fix** : Ajouter un bloc après `getUser()` :
  ```ts
  const { data: { user } } = await supabase.auth.getUser();
  const isProtectedRoute = request.nextUrl.pathname.startsWith("/tableau-de-bord")
    || request.nextUrl.pathname.startsWith("/francais")
    // ... autres routes (app)
  if (isProtectedRoute && !user) {
    return NextResponse.redirect(new URL("/connexion", request.url));
  }
  ```

---

## Bugs majeurs — passe 3 (2026-03-23)

### [MAJ-011] `getDashboardData` appelé deux fois sur `/francais/[domain]` et `/maths/[domain]` — sans cache partagé

- **Fichier** : `app/(app)/francais/[domain]/page.tsx:102` et `app/(app)/maths/[domain]/page.tsx:102`
- **Description** : `getDashboardData` charge l'intégralité des sessions (`getExercises`) + les 500 dernières tentatives DB à chaque appel. Ces pages appellent `getDashboardData` dans leur `default export` page function. Dans Next.js 15, `generateMetadata` et la page sont exécutés dans des contextes distincts — mais ici `generateMetadata` ne pose pas le problème : c'est le fait que la page `/francais/[domain]` charge tout le dashboard Français, et le tableau de bord (`/tableau-de-bord`) le recharge aussi si visité dans la même navigation. `React.cache` dans `getExercises` ne s'applique qu'à la même requête HTTP. Chaque visite page → 2 appels DB lourds (sessions + attempts).
- **Impact** : Performance : chaque visite de `/francais/[domain]` ou `/maths/[domain]` déclenche une requête `getExercises` (pagination 1000 lignes par sujet) + une requête `attempts LIMIT 500`. Latence O(catalogue) à chaque affichage de filtre.
- **Suggestion de fix** : Créer une query `getDomainSessions(userId, domain, subject)` qui filtre directement par subdomain en base, au lieu de charger tout le catalogue en mémoire puis filtrer côté JS.

---

### [MAJ-012] `updateUserXp` — daily streak recalculé à chaque soumission, même si déjà incrémenté dans la journée

- **Fichier** : `features/gamification/server/queries.ts:80-101`
- **Description** : `computeDailyStreakUpdate` reçoit `gamification.last_activity_date` (lu depuis la DB au début de `updateUserXp`). Si `lastActivityDate === today`, la fonction retourne `justIncremented: false` correctement. **Cependant**, la valeur `today` est calculée via `getParisToday()` à l'intérieur de `updateUserXp` **après** avoir lu le snapshot de gamification via le `React.cache` de `getUserGamification`. Si deux soumissions arrivent dans la même request (multi-question sprint), le cache retourne le même snapshot (avec `last_activity_date` = hier), et les deux appels `updateUserXp` voient `lastActivityDate !== today`. La deuxième soumission incrémente le streak une seconde fois, ce qui écrase la première mise à jour.
- **Impact** : Streak incrémenté deux fois sur la même journée si deux soumissions s'exécutent dans le même contexte React Server (peu probable avec l'architecture actuelle, mais possible avec les sprints et soumissions groupées). Streak corrompu : `daily_streak = currentDailyStreak + 2` au lieu de `+1`.
- **Données pour correcteur** :
  ```ts
  // queries.ts:72 — lit depuis cache React (snapshot figé)
  const gamification = await getUserGamification(userId); // React.cache
  // queries.ts:75 — today calculé au runtime
  const today = getParisToday();
  // Si getUserGamification est appelé deux fois dans la même request,
  // les deux retournent last_activity_date = yesterday → deux increments
  ```

---

### [MAJ-013] `rate-limit.ts` — `setInterval` dans un module Next.js : fuite mémoire + comportement indéfini en Edge Runtime

- **Fichier** : `lib/rate-limit.ts:11-16`
- **Description** : Un `setInterval` de nettoyage est lancé au niveau module lors de l'import. Dans Next.js (App Router), les modules sont importés à chaque cold start serverless. Sur Vercel, les fonctions lambda ont une durée de vie limitée. Le `setInterval` crée un timer qui empêche le garbage collection de la Map `store`, même si la lambda n'est plus utilisée. En Edge Runtime (si jamais `rate-limit.ts` y est importé), `setInterval` peut ne pas être supporté ou se comporter différemment.
- **Impact** : Fuite mémoire progressive sur les instances longues. Si Next.js utilise un Edge Runtime pour certaines routes API, le module plante au démarrage (`setInterval is not defined`). L'intervalle empêche aussi la terminaison propre des workers.
- **Données pour correcteur** :
  ```ts
  // rate-limit.ts:11
  setInterval(() => { ... }, 60_000); // lancé à l'import du module, jamais nettoyé
  ```
- **Suggestion de fix** : Supprimer le `setInterval` et nettoyer au moment de l'accès (lazy cleanup) : vérifier `entry.resetAt <= now` directement dans `rateLimit()` sans timer global.

---

## Bugs mineurs — passe 3 (2026-03-23)

### [MIN-013] `middleware.ts` — `isSupabaseConfigured()` court-circuite le refresh de session si Supabase n'est pas configuré

- **Fichier** : `middleware.ts:11`
- **Description** : Si `isSupabaseConfigured()` retourne `false` (environnement de dev sans clés Supabase), le middleware retourne immédiatement sans rafraîchir la session. Les cookies de session ne sont jamais mis à jour. Si un développeur tourne l'app en local avec des variables partielles, la session expire silencieusement à chaque requête.
- **Impact** : En développement local sans Supabase configuré, les utilisateurs sont constamment déconnectés. Difficile à diagnostiquer car aucune erreur n'est remontée.

---

### [MIN-014] `env.ts` — `NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY` exposée dans le bundle client mais jamais utilisée côté client

- **Fichier** : `lib/env.ts:17-18`
- **Description** : `stripePublishableKey` est définie dans `env` depuis `NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY`. Or, aucune utilisation de `env.stripePublishableKey` n'existe dans les fichiers client (grep confirme : seulement `lib/env.ts`). La clé publique Stripe est bien publiable (c'est son rôle), mais exposer une variable `NEXT_PUBLIC_*` inutilisée côté client augmente la surface d'exposition et peut prêter à confusion si des développeurs croient qu'elle est active.
- **Impact** : Mineur — la clé publiable Stripe ne permet pas d'actions malveillantes, mais crée une confusion architecturale et une exposition de donnée inutile.

---

### [MIN-015] `diagnostic-client.tsx` — `summaries` calculé dans le render sans `useMemo`, recalculé à chaque keystroke

- **Fichier** : `features/diagnostic/components/diagnostic-client.tsx:119-155`
- **Description** : `summaries` et `subdomainSummaries` sont des calculs dérivés de `answers` et `questions`. Ils sont recalculés **à chaque render**, y compris les renders causés par les mises à jour d'état qui ne touchent pas ces données (ex. changement de `phase`, de `currentQuestion`). Ces calculs incluent un `Array.reduce` + `.map` + `.sort` sur le tableau de questions et réponses.
- **Impact** : Performance dégradée pendant la passation du diagnostic (chaque interaction re-calcule l'ensemble des statistiques). Mineur car le volume est faible (~20 questions), mais antipattern React notable.
- **Suggestion de fix** : Encapsuler `summaries` et `subdomainSummaries` dans un `useMemo` dépendant de `[answers, questions]`.

---

### [MIN-016] `getDashboardData` (server) — `syncBadges` déclenché à chaque visite du tableau de bord, même sans nouvelles tentatives

- **Fichier** : `features/dashboard/server/queries.ts:47-52`
- **Description** : `syncBadges` est appelé inconditionnellement après `buildDashboardData`. `syncBadges` fait d'abord une requête `getUserBadgeIds` (SELECT), puis si de nouveaux badges existent, un INSERT. Si l'utilisateur visite le tableau de bord plusieurs fois par jour sans faire d'exercice, `computeEarnedBadges` retourne les mêmes badges, `syncBadges` compare avec les IDs existants → pas d'INSERT, mais la requête SELECT est exécutée à chaque visite. Sur un tableau de bord déjà chargé, c'est une requête DB inutile.
- **Impact** : 1 requête DB supplémentaire par visite du tableau de bord même sans activité. Mineure en isolation, significative si le dashboard est consulté fréquemment.

---

## Fichiers inspectés lors de cette passe (passe 3)

- `middleware.ts`
- `app/api/diagnostic/complete/route.ts`
- `app/api/stripe/checkout/route.ts`
- `app/api/stripe/webhook/route.ts`
- `app/api/stripe/portal/route.ts`
- `app/api/gamification/sprint-best/route.ts`
- `app/api/gamification/onboarding/route.ts`
- `app/api/auth/callback/route.ts`
- `app/(app)/tableau-de-bord/page.tsx` (complet)
- `app/(app)/exercices/[id]/page.tsx`
- `app/(app)/francais/[domain]/page.tsx`
- `app/(app)/maths/[domain]/page.tsx`
- `app/(app)/layout.tsx`
- `app/admin/layout.tsx`
- `app/layout.tsx`
- `features/auth/server/guards.ts`
- `features/billing/server/queries.ts`
- `features/billing/components/checkout-button.tsx`
- `features/diagnostic/components/diagnostic-client.tsx`
- `features/diagnostic/server/queries.ts`
- `features/exercises/server/actions.ts`
- `features/exercises/server/queries.ts` (partiel)
- `features/exercises/components/exercise-player.tsx` (partiel)
- `features/exercises/shared/evaluation.ts`
- `features/gamification/server/queries.ts`
- `features/srs/server/queries.ts`
- `features/badges/server/queries.ts`
- `features/dashboard/server/queries.ts`
- `lib/dashboard/build-dashboard-data.ts` (partiel)
- `lib/env.ts`
- `lib/freemium.ts`
- `lib/daily-streak.ts`
- `lib/xp.ts`
- `lib/rate-limit.ts`
- `lib/srs.ts`
- `lib/supabase/admin.ts`
- `lib/supabase/server.ts`

---

## Fichiers inspectés lors des passes précédentes

- `features/fiches/server/actions.ts`
- `features/fiches/server/queries.ts`
- `features/fiches/lib/get-fiche.ts`
- `features/fiches/components/mark-fiche-read.tsx`
- `features/fiches/components/fiche-quiz.tsx`
- `features/fiches/components/fiche-sprint.tsx`
- `features/fiches/components/download-fiche-button.tsx`
- `features/leaderboard/server/actions.ts`
- `features/leaderboard/server/queries.ts`
- `features/leaderboard/components/leaderboard-table.tsx`
- `features/leaderboard/components/display-name-form.tsx`
- `features/onboarding/components/onboarding-tour.tsx`
- `features/onboarding/components/onboarding-tour-wrapper.tsx`
- `features/homepage/server/actions.ts`
- `features/homepage/server/queries.ts`
- `features/srs/server/queries.ts`
- `features/badges/server/queries.ts`
- `features/gamification/server/queries.ts`
- `features/gamification/context.tsx`
- `features/auth/components/auth-form.tsx`
- `features/auth/components/auth-dialog.tsx`
- `features/auth/components/reset-password-form.tsx`
- `app/(app)/revision/page.tsx`
- `app/(app)/classement/page.tsx`
- `app/(app)/tableau-de-bord/page.tsx` (partiel)
- `app/(app)/francais/[domain]/page.tsx`
- `app/(app)/abonnement/page.tsx`
- `app/(app)/profil/page.tsx`
- `app/(app)/historique/page.tsx`
- `app/(app)/progression/page.tsx`
- `app/(app)/exercice-aleatoire/page.tsx`
- `app/(app)/fiches/[slug]/page.tsx`
- `app/(app)/layout.tsx`
- `app/(auth)/connexion/page.tsx`
- `app/(auth)/reinitialiser-mot-de-passe/page.tsx`
- `app/(marketing)/offre/page.tsx`
- `app/api/auth/callback/route.ts`
- `app/api/gamification/sprint-best/route.ts`
- `app/api/gamification/onboarding/route.ts`
- `lib/srs.ts`
- `lib/constants.ts`
- `lib/env.ts`
- `lib/freemium.ts`
- `lib/daily-streak.ts`

---

## Bugs majeurs — passe 4 (2026-03-23)

### [MAJ-014] `goToNextQuestion` — navigation saute les questions non répondues dans certains cas

- **Fichier** : `features/exercises/components/exercise-player.tsx:202-222`
- **Description** : Quand `currentIndex < session.questions.length - 1`, la fonction cherche d'abord la première question non répondue **après** l'index courant (`unansweredAfter`). Si elle en trouve une, elle y saute directement. Ce comportement est intentionnel pour aller à la prochaine question non répondue. **Cependant**, si la question courante vient d'être répondue et que la prochaine dans l'ordre (`currentIndex + 1`) est aussi non répondue, la fonction saute correctement à `currentIndex + 1 = unansweredAfter`. Mais si `currentIndex + 1` est **déjà répondue** et qu'une question non répondue existe plus loin, la navigation saute les questions répondues entre les deux — l'utilisateur ne peut plus y accéder facilement via "Suivant". La logique de navigation avant/arrière est asymétrique : "Précédent" cherche la dernière répondue (MAJ-003), "Suivant" cherche la prochaine non répondue. Aucune logique cohérente de navigation séquentielle.
- **Impact** : Dans une session mixte (certaines questions répondues, d'autres non), l'utilisateur ne peut pas naviguer séquentiellement (+1) pour revoir une question répondue. Il ne peut naviguer "en avant" que vers les questions non répondues. UX confuse.
- **Données pour correcteur** :
  ```ts
  // player.tsx:206-209
  const unansweredAfter = session.questions.findIndex(
    (q, i) => i > currentIndex && !results[q.id],
  );
  if (unansweredAfter !== -1) nextIdx = unansweredAfter; // saute les répondues
  ```

---

### [MAJ-015] `RESET_SESSION` dans le reducer — `sessionXp`, `lastXpEarned`, `xpTrigger`, `runningXp` non remis à zéro

- **Fichier** : `features/exercises/components/exercise-reducer.ts:85-94`
- **Description** : L'action `RESET_SESSION` réinitialise `results`, `currentIndex`, `draftAnswer`, `consecutiveCorrect`, `showConfetti`, `streakCelebration` — mais **pas** `sessionXp`, `lastXpEarned`, `xpTrigger`, ni `runningXp`. Si l'utilisateur clique "Recommencer" après une session, la barre XP conserve le XP accumulé visuellement (`runningXp`), le compteur "XP cette série" (`sessionXp`) affiche encore les XP de la session précédente, et `xpTrigger` peut déclencher la popup XP lors du reset.
- **Impact** : Après "Recommencer", l'affichage de la barre XP ne correspond pas au XP réel du compte (le vrai XP est en DB, `runningXp` est local). Le compteur de session reste non nul. UX incohérente.
- **Données pour correcteur** :
  ```ts
  // exercise-reducer.ts:85-94
  case "RESET_SESSION":
    return {
      ...state,
      results: {}, currentIndex: 0, draftAnswer: "",
      consecutiveCorrect: 0, showConfetti: false, streakCelebration: null,
      // sessionXp, lastXpEarned, xpTrigger, runningXp : non remis à zéro
    };
  ```

---

### [MAJ-016] `XpBar` — affichage incohérent au niveau maximum (niveau 20)

- **Fichier** : `components/ui/xp-bar.tsx:94-96` et `lib/xp.ts:72-79`
- **Description** : `getXpForNextLevel` retourne `xpNeededForNext: 0` et `progress: 1` au niveau maximum. La barre XP affiche alors `{xpInCurrentLevel} / 0 XP` (dénominateur zéro visible), et "Niv. 21" (`currentLevel + 1`) qui n'existe pas dans `LEVEL_THRESHOLDS` ni dans `XP_LEVEL_LABELS`. Le label "Niv. 21" est donc vide ou `undefined` (non rendu, mais le texte "Niv. 21" est hardcodé dans le JSX).
- **Impact** : Un utilisateur niveau 20 voit "XX / 0 XP" et "Niv. 21" en clair. UX dégradée pour les utilisateurs en fin de progression.
- **Données pour correcteur** :
  ```tsx
  // xp-bar.tsx:92-96
  <span>{xpInCurrentLevel} / {xpNeededForNext} XP</span>  // affiche "NNN / 0 XP"
  <span>Niv. {currentLevel + 1}</span>                    // affiche "Niv. 21"
  ```
  La correction nécessite de détecter `isMaxLevel` (via `xpNeededForNext === 0`) dans `XpBar` et d'afficher "Niveau max" au lieu de "Niv. 21".

---

## Bugs mineurs — passe 4 (2026-03-23)

### [MIN-017] Formulaires auth — messages d'erreur non annoncés aux lecteurs d'écran

- **Fichier** : `features/auth/components/auth-form.tsx:167-171`, `features/auth/components/forgot-password-form.tsx:59-69`, `features/auth/components/reset-password-form.tsx:84-93`
- **Description** : Les messages d'erreur/succès sont des `<p>` simples affichés conditionnellement. Aucun `role="alert"`, `aria-live="assertive"`, ou `aria-describedby` ne lie le message au formulaire. Un utilisateur naviguant au clavier ou avec un lecteur d'écran ne recevra pas d'annonce lorsqu'un message d'erreur apparaît après soumission.
- **Impact** : Accessibilité dégradée — les erreurs d'authentification ne sont pas perceptibles par les lecteurs d'écran. Violation WCAG 2.1 – critère 4.1.3 (Messages de statut).
- **Données pour correcteur** :
  ```tsx
  // auth-form.tsx:167-171 — aucun rôle d'alerte
  {message ? (
    <p className="rounded-xl ...">
      {message}  // jamais annoncé aux AT
    </p>
  ) : null}
  ```
  Correction : `<p role="alert" aria-live="assertive">` ou `<div aria-live="polite">`.

---

### [MIN-018] `AuthDialog` — pas de `aria-labelledby` liant le Dialog à son titre

- **Fichier** : `features/auth/components/auth-dialog.tsx:55-63`
- **Description** : `DialogPrimitive.Content` ne reçoit pas `aria-labelledby` pointant vers `DialogPrimitive.Title`. Radix Dialog injecte automatiquement `aria-labelledby` si un `DialogPrimitive.Title` est présent **en enfant direct**, mais ici `Title` est à l'intérieur du `Content` sans que son `id` soit lié. En pratique, Radix gère cela automatiquement via `useId`, mais aucun `aria-describedby` ne pointe vers la `Description`. Les lecteurs d'écran peuvent manquer la description du dialog.
- **Impact** : Accessibilité — la description du modal (expliquant l'objectif de l'inscription/connexion) n'est pas systématiquement annoncée à l'ouverture du dialog par tous les lecteurs d'écran.
- **Données pour correcteur** :
  ```tsx
  // auth-dialog.tsx:55 — aucun aria-describedby sur Content
  <DialogPrimitive.Content className={cn(...)}>
  ```
  Radix recommande de passer `aria-describedby={undefined}` explicitement si la description est déjà visible, ou d'utiliser `asChild` pour lier les IDs.

---

### [MIN-019] `HighlightPropositionsInput` — état local `assignment` non remis à zéro lors d'un changement de question

- **Fichier** : `features/exercises/components/highlight-propositions-input.tsx:73`
- **Description** : Le composant utilise `useState<Record<string, string>>({})` pour `assignment` et `activeGroupId`. Ces états sont locaux et persistent tant que le composant React reste monté. Le composant est rendu avec `key={`${question.id}-${triResetKey}`}` dans `exercise-question-panel.tsx:152`, ce qui force un remontage lors d'un changement de question ou d'un retry. **Cependant**, si `triResetKey` ne change pas (cas normal : navigation vers une autre question via "Suivant"/"Précédent" sans retry), l'état précédent persiste pour la même instance React. Si deux questions de type `surlignage_propositions` se suivent avec des `question.id` différents, le `key` change et l'état est bien réinitialisé. Le bug n'apparaît que si l'utilisateur revient sur une question `surlignage_propositions` déjà répondue (via "Précédent") : le composant est re-rendu avec `disabled=true` et l'état `assignment` reflète la réponse initiale — ce qui est correct. **Mais** si `RETRY_QUESTION` incrémente `triResetKey`, l'état est bien remis à zéro. Le vrai problème : `activeGroupId` est initialisé à `groups[0]?.id ?? null` et n'est jamais remis à zéro lors d'un retry (le remontage le recrée à zéro via `useState`). Ce comportement est correct. Aucun bug net ici — **reclassé comme note d'architecture** : le comportement est correct grâce au pattern `key`, mais fragile si quelqu'un retire le `key`.
- **Impact** : Risque potentiel de régression si le pattern `key` est modifié. Architecture fragile.

---

### [MIN-020] `next.config.ts` — absence de `Content-Security-Policy` (CSP)

- **Fichier** : `next.config.ts:8-23`
- **Description** : Les headers de sécurité configurés sont `X-Frame-Options: DENY`, `X-Content-Type-Options: nosniff`, `Referrer-Policy`, et `Permissions-Policy`. Aucun `Content-Security-Policy` n'est défini. Sans CSP, toute injection XSS (si une vulnérabilité venait à être introduite dans le contenu utilisateur) pourrait exécuter des scripts arbitraires. L'absence de `Strict-Transport-Security` (HSTS) est également notable pour un site en production HTTPS.
- **Impact** : Surface d'attaque XSS non mitigée par couche réseau. En production Vercel, HSTS peut être géré par l'infrastructure, mais aucune garantie applicative. Impact modéré (pas de contenu utilisateur HTML non sanitisé visible à ce stade).
- **Données pour correcteur** :
  ```ts
  // next.config.ts — headers manquants
  // Pas de: Content-Security-Policy
  // Pas de: Strict-Transport-Security
  ```

---

### [MIN-021] `xp.test.ts` — `calculateDailyStreakMultiplier` et l'argument `dailyStreak` de `calculateXpEarned` non testés

- **Fichier** : `__tests__/xp.test.ts:121-164`
- **Description** : La suite de tests `calculateXpEarned` couvre le streak de questions consécutives, les modes, et la vitesse. Elle ne teste **jamais** le paramètre `dailyStreak` (6e argument de `calculateXpEarned`). La fonction `calculateDailyStreakMultiplier` n'est pas importée ni testée directement. Or, `calculateDailyStreakMultiplier` est appelée dans `calculateXpEarned` (ligne 133 de `lib/xp.ts`). Les seuils 3, 7, 14, 30 jours ne sont jamais vérifiés.
- **Impact** : Coverage insuffisante — un bug dans `calculateDailyStreakMultiplier` ne serait pas détecté par les tests. La correction de MAJ-002 (XP serveur vs client) dépend de cette fonction.
- **Suggestion de fix** : Ajouter une suite `describe("calculateDailyStreakMultiplier")` et des cas `calculateXpEarned(true, 0, null, "standard", 60_000, 3)` etc.

---

### [MIN-022] `onboarding-tour.tsx` — `onComplete` appelé dans `onDestroyStarted` avant `driverObj.destroy()`, potentiel appel en double

- **Fichier** : `features/onboarding/components/onboarding-tour.tsx:87-90`
- **Description** : `onDestroyStarted` est un callback déclenché lorsque `driver.js` commence la destruction (au clic "C'est parti !" ou fermeture). À l'intérieur, `onComplete()` est appelé, puis `driverObj.destroy()` est appelé manuellement. Si `driver.js` appelle également `onDestroyStarted` lors d'un appel automatique à `destroy()` (ex : unmount React), `onComplete()` peut être déclenché deux fois. La server action `completeOnboarding` faisant un upsert, ce n'est pas destructif, mais l'API Gamification (`/api/gamification/onboarding`) est appelée deux fois.
- **Impact** : Double appel à l'API d'onboarding lors de fermetures rapides ou d'unmounts React pendant la destruction du driver. Impact mineur car l'opération est idempotente.

---

### [MIN-023] `exercise-question-panel.tsx` — le `<label>` wrappant le `<Textarea>` n'a pas d'attribut `htmlFor` lié à un `id`

- **Fichier** : `features/exercises/components/exercise-question-panel.tsx:182-201`
- **Description** : Pour les exercices à réponse courte/texte, la zone de saisie est rendue avec un `<label className="block space-y-2">` qui contient le `<Textarea>` en enfant direct. L'association implicite (label wrappant l'input) est valide HTML et fonctionne. Cependant, `<Textarea>` ne reçoit pas d'`id`, donc `htmlFor` ne peut pas être utilisé. L'association implicite est moins robuste que l'association explicite (`htmlFor`/`id`) pour certains lecteurs d'écran (notamment JAWS < 18). Par ailleurs, le placeholder `"Saisissez votre réponse (Ctrl+Entrée pour valider)"` est la seule indication de l'instruction clavier — non accessible aux utilisateurs qui ne peuvent pas voir le placeholder.
- **Impact** : Accessibilité mineure — l'association implicite fonctionne dans la majorité des cas, mais `Ctrl+Entrée` n'est pas annoncé en dehors du placeholder.

---

## Fichiers inspectés lors de cette passe (passe 4)

- `features/auth/components/auth-form.tsx`
- `features/auth/components/auth-dialog.tsx`
- `features/auth/components/forgot-password-form.tsx`
- `features/auth/components/reset-password-form.tsx`
- `features/exercises/components/exercise-reducer.ts`
- `features/exercises/components/exercise-player.tsx`
- `features/exercises/components/exercise-question-panel.tsx`
- `features/exercises/components/exercise-choice-list.tsx`
- `features/exercises/components/highlight-propositions-input.tsx`
- `features/exercises/components/tri-categories-input.tsx`
- `features/exercises/components/exercise-xp-header.tsx`
- `features/exercises/components/exercise-results-panel.tsx` (grep ARIA)
- `features/exercises/components/exercise-session-header.tsx` (grep ARIA)
- `features/exercises/components/exercise-timer.tsx` (grep ARIA)
- `features/billing/components/checkout-button.tsx`
- `features/srs/server/queries.ts`
- `features/onboarding/components/onboarding-tour.tsx`
- `features/diagnostic/components/diagnostic-client.tsx` (partiel)
- `features/gamification/server/queries.ts` (partiel)
- `components/ui/button.tsx`
- `components/ui/input.tsx`
- `components/ui/accordion.tsx`
- `components/ui/xp-bar.tsx`
- `app/api/stripe/webhook/route.ts`
- `lib/constants.ts`
- `lib/xp.ts`
- `lib/srs.ts`
- `lib/utils.ts`
- `next.config.ts`
- `__tests__/xp.test.ts`
- `__tests__/billing.test.ts`
- `__tests__/api-stripe-webhook.test.ts`
- `__tests__/submit-attempt-action.test.ts`
- `__tests__/api-diagnostic-complete.test.ts`
- `__tests__/daily-streak.test.ts`
- `__tests__/freemium.test.ts`
- `__tests__/evaluation.test.ts`

---

## Bugs critiques — passe 5 (2026-03-23)

### [CRIT-005] `fiche_completions` — politique RLS UPDATE manquante : l'`upsert` silencieusement rejeté pour les fiches déjà lues

- **Fichier** : `supabase/migrations/20260502_create_fiche_completions.sql:12-19` + `features/fiches/server/actions.ts:25-31`
- **Description** : La table `fiche_completions` a des politiques RLS pour `SELECT` et `INSERT`, mais **aucune pour `UPDATE`**. Dans `markFicheReadAction`, quand une fiche a déjà été lue (`completedSlugs.has(ficheSlug)`), le code fait un `upsert` avec `onConflict: "user_id,fiche_slug"` pour mettre à jour le timestamp. Supabase exécute alors un `UPDATE` sur la ligne existante — mais cette opération est bloquée par RLS (aucune policy UPDATE). Le client Supabase avec session utilisateur retourne une erreur silencieuse (le `await` n'est pas vérifié), et le timestamp n'est jamais mis à jour. Plus grave : pour les fiches **nouvelles**, l'`upsert` tente aussi un UPDATE en cas de conflit de clé primaire (race condition ou retry réseau) — cet UPDATE est également rejeté, mais ici la fiche est tout de même marquée comme lue côté quota puisque la vérification a déjà eu lieu. Le comportement est incohérent selon le timing.
- **Impact** : Pour les fiches déjà lues, le `completed_at` n'est jamais mis à jour (timestamp figé à la première lecture). En cas de retry réseau sur une fiche nouvelle, l'UPDATE du retry est rejeté silencieusement — comportement ambigu mais non critique pour la donnée. La politique manquante crée une surface d'erreur invisible.
- **Données pour correcteur** :
  ```sql
  -- 20260502_create_fiche_completions.sql — aucune policy UPDATE
  create policy "Users can insert their own completions"
    on public.fiche_completions for insert
    with check (auth.uid() = user_id);
  -- MANQUANT : policy UPDATE
  ```
  ```ts
  // actions.ts:26-31 — upsert → UPDATE rejeté par RLS
  await supabase
    .from("fiche_completions")
    .upsert({ user_id: user.id, fiche_slug: ficheSlug }, { onConflict: "user_id,fiche_slug" });
  // error non vérifié
  ```
- **Suggestion de fix** : Ajouter la migration suivante :
  ```sql
  create policy "Users can update their own completions"
    on public.fiche_completions for update
    using (auth.uid() = user_id);
  ```

---

## Bugs majeurs — passe 5 (2026-03-23)

### [MAJ-017] `submitAttemptAction` — état partiellement mis à jour si `updateUserXp` réussit mais SRS échoue (et vice versa)

- **Fichier** : `features/exercises/server/actions.ts:148-164`
- **Description** : Après l'insertion de la tentative, deux opérations indépendantes sont exécutées séquentiellement dans des blocs `try/catch` séparés : `updateUserXp` (XP + streak) et `recordSrsReview` (révision espacée). Si `updateUserXp` réussit et que `recordSrsReview` lève une exception, le XP est crédité mais la carte SRS n'est pas mise à jour — l'exercice ne sera pas reprogrammé en révision espacée. Inversement, si `updateUserXp` échoue (le `catch` silencieux ne rethrow pas), le XP n'est pas crédité mais la tentative est bien insérée. L'état de la base est alors partiellement mis à jour sans notification à l'utilisateur et sans possibilité de rejouer les opérations échouées.
- **Impact** : Un utilisateur peut perdre du XP ou voir sa révision espacée désynchronisée avec ses tentatives réelles, sans aucun message d'erreur. La corruption est silencieuse et difficile à diagnostiquer.
- **Données pour correcteur** :
  ```ts
  // actions.ts:148-164 — deux blocs try/catch indépendants, aucune transaction
  try {
    const result = await updateUserXp(user.id, xpEarned, currentStreak); // peut réussir
    ...
  } catch { /* silencieux */ }

  try {
    await recordSrsReview(user.id, exerciseId, ...); // peut échouer
  } catch { /* silencieux */ }
  ```
- **Suggestion de fix** : Utiliser `Promise.allSettled` pour exécuter les deux en parallèle et logger les rejets. Envisager une RPC Postgres regroupant XP + SRS en une seule transaction atomique.

---

### [MAJ-018] Index manquant sur `exercises(is_published, subject)` — scan complet à chaque visite de page d'exercices

- **Fichier** : `supabase/migrations/20260311_init.sql:76-77` + `features/exercises/server/queries.ts:214-251`
- **Description** : La requête `fetchAllExercises` filtre systématiquement par `is_published = true` ET `subject = X`. Les index existants sur `exercises` sont : `exercises_subdomain_idx (subdomain)`, `exercises_access_tier_idx (access_tier)`, `exercises_topic_key_idx (topic_key)`. Il n'existe **aucun index** sur `subject` ni sur `is_published`, et aucun index composite couvrant la combinaison `(is_published, subject)` qui est le filtre primaire de toutes les requêtes de chargement du catalogue. Postgres doit donc effectuer un scan séquentiel de la table `exercises` complète (qui dépasse aujourd'hui plusieurs milliers de lignes) à chaque appel.
- **Impact** : Chaque visite d'une page d'exercices (français ou maths) déclenche un ou plusieurs scans séquentiels de la table entière. La latence croît linéairement avec le nombre d'exercices. Avec ~2 000 exercices actuels et pagination 1 000, cela représente déjà 2 scans de table par visite. Impact critique à mesure que le catalogue grandit.
- **Données pour correcteur** :
  ```sql
  -- Aucun de ces index n'existe :
  -- exercises(is_published, subject)
  -- exercises(subject, is_published, subdomain)
  ```
  ```ts
  // queries.ts:221-228 — filtre toujours sur is_published + subject
  .eq("is_published", true)
  .eq("subject", subject)
  ```
- **Suggestion de fix** :
  ```sql
  CREATE INDEX exercises_published_subject_idx ON public.exercises (subject, is_published)
    WHERE is_published = true;
  -- Index partiel : ne couvre que les exercices publiés, très compact
  ```

---

## Bugs mineurs — passe 5 (2026-03-23)

### [MIN-024] `auth-form.tsx` — `router.push` + `router.refresh()` appelés séquentiellement après connexion : double requête sur `/tableau-de-bord`

- **Fichier** : `features/auth/components/auth-form.tsx:119-120`
- **Description** : Après une connexion réussie, le code appelle `router.push("/tableau-de-bord")` immédiatement suivi de `router.refresh()`. En Next.js 15, `router.push` démarre une navigation vers la nouvelle route et `router.refresh()` invalide le cache du Server Component courant. Combinés, ils déclenchent deux chargements distincts : la navigation vers `/tableau-de-bord` + le refresh du composant courant (page de connexion). Le second peut créer une requête de refetch sur le layout partagé `(app)` pendant que la navigation est en cours, causant potentiellement deux appels simultanés à `getDashboardData` ou aux guards `requireUser`.
- **Impact** : Double requête DB lors de chaque connexion. UX légèrement dégradée (flash de rechargement possible). Impact modéré car la navigation est rapide.
- **Données pour correcteur** :
  ```ts
  // auth-form.tsx:119-120
  router.push("/tableau-de-bord"); // navigation démarrée
  router.refresh();                 // refresh de la page courante (redondant après push)
  ```
- **Suggestion de fix** : Supprimer `router.refresh()` — `router.push` suffit pour naviguer vers une page Server Component qui recharge ses données depuis la DB.

---

### [MIN-025] `admin-editor.tsx` — suppression de section homepage sans confirmation : perte de données en un clic

- **Fichier** : `features/homepage/components/admin-editor.tsx:188-193`
- **Description** : Le bouton "Supprimer" dans l'éditeur admin de la homepage soumet directement `deleteHomepageSectionAction` sans aucune confirmation (`confirm()`, dialog, ou étape intermédiaire). Un clic accidentel sur ce bouton supprime immédiatement la section du brouillon et déclenche `revalidatePath("/")`. Il n'existe pas de mécanisme d'annulation (undo) ni de corbeille. La seule récupération possible est de recréer la section depuis le catalogue de blocs par défaut (avec perte du contenu personnalisé).
- **Impact** : Suppression accidentelle irréversible de sections de la homepage par un administrateur. Risque opérationnel réel en environnement de production.
- **Données pour correcteur** :
  ```tsx
  // admin-editor.tsx:188-193
  <form action={deleteHomepageSectionAction}>
    <input type="hidden" name="sectionId" value={section.id} />
    <Button variant="destructive" size="sm" type="submit">
      Supprimer  {/* aucune confirmation */}
    </Button>
  </form>
  ```
- **Suggestion de fix** : Ajouter un `onClick={(e) => { if (!confirm("Supprimer ce bloc ?")) e.preventDefault(); }}` sur le bouton, ou remplacer par un Dialog de confirmation Radix.

---

### [MIN-026] `features/fiches/components/fiche-block-renderer.tsx` — `switch` sans cas `default` : nouveaux types de blocs silencieusement ignorés

- **Fichier** : `features/fiches/components/fiche-block-renderer.tsx:12-30`
- **Description** : Le `switch (block.kind)` liste 8 types de blocs (`rule`, `example`, `table`, `watchout`, `tip`, `decision-tree`, `didactic`, `related`) mais **n'a pas de branche `default`**. Le type de retour de la fonction est inféré par TypeScript comme `JSX.Element | undefined`. Si un nouveau type de bloc est ajouté dans les fiches (côté données) sans être ajouté dans le renderer, le bloc est silencieusement ignoré (retourne `undefined`) sans aucun avertissement en console ni erreur TypeScript (car `FicheBlock` est un union type qui n'est pas exhaustivement vérifié).
- **Impact** : Contenu de fiche manquant sans indication d'erreur. Un développeur ajoutant un nouveau type de bloc côté données peut ne pas réaliser qu'il faut aussi mettre à jour le renderer.
- **Données pour correcteur** :
  ```tsx
  // fiche-block-renderer.tsx:12-30
  switch (block.kind) {
    case "rule": return <BlockRule block={block} />;
    // ...
    case "related": return <BlockRelated block={block} />;
    // Pas de default : tout type non listé retourne undefined
  }
  ```
- **Suggestion de fix** : Ajouter `default: return null;` (ou un assertNever pour forcer l'exhaustivité TypeScript) et un `console.warn` pour les types inconnus.

---

### [MIN-027] `getRandomExercises` — pool limité aux 100 premiers exercices selon l'ordre de création, pas de randomisation côté DB

- **Fichier** : `features/exercises/server/queries.ts:307-329`
- **Description** : `getRandomExercises` charge les 100 premiers exercices publiés gratuits (ordre par défaut de Postgres, généralement par `created_at`) puis applique un Fisher-Yates en mémoire. Sans clause `ORDER BY RANDOM()` côté DB, le pool est toujours le même ensemble des 100 exercices les plus anciens. Si le catalogue dépasse 100 exercices gratuits (ce qui est déjà le cas), les exercices créés après les 100 premiers ne sont **jamais** sélectionnés en mode aléatoire.
- **Impact** : L'exercice aléatoire ne couvre qu'un sous-ensemble fixe des exercices disponibles. Les exercices récemment ajoutés (potentiellement de meilleure qualité, plus ciblés CRPE) ne sont jamais proposés. La diversité des révisions est artificiellement limitée.
- **Données pour correcteur** :
  ```ts
  // queries.ts:311-317 — pas d'ORDER BY RANDOM(), toujours les 100 premiers
  const { data } = await supabase
    .from("exercises")
    .select("*")
    .eq("is_published", true)
    .eq("subject", subject ?? DEFAULT_SUBJECT)
    .eq("access_tier", "free")
    .limit(POOL_SIZE); // sans ORDER BY RANDOM()
  ```
- **Suggestion de fix** : Ajouter `.order("id", { ascending: false })` avec un offset aléatoire, ou utiliser une RPC Postgres `SELECT ... ORDER BY RANDOM() LIMIT 100`.

---

### [MIN-028] `diagnostic_results` — pas de politique RLS UPDATE : impossibilité de mettre à jour un diagnostic existant

- **Fichier** : `supabase/migrations/20260319_add_diagnostic_results.sql:20-28`
- **Description** : La table `diagnostic_results` a une contrainte d'unicité sur `user_id` (un seul diagnostic par utilisateur) et des politiques RLS `SELECT` et `INSERT`. Il n'existe pas de politique `UPDATE`. Si un utilisateur refait le diagnostic après en avoir déjà complété un, l'API `/api/diagnostic/complete` tente un `INSERT` qui échoue avec `error.code === "23505"` (violation d'unicité) — la route traite cela comme un succès silencieux (`return NextResponse.json({ ok: true })`). Le résultat du nouveau diagnostic est donc définitivement perdu. Un utilisateur ne peut jamais mettre à jour son diagnostic même s'il a progressé.
- **Impact** : Les résultats du diagnostic sont figés à la première passation. Toute amélioration de l'utilisateur n'est pas reflétée dans ses recommandations de révision. Comportement non documenté qui peut frustrer les utilisateurs.
- **Données pour correcteur** :
  ```ts
  // api/diagnostic/complete/route.ts:68-72
  if (error) {
    if (error.code === "23505") {
      return NextResponse.json({ ok: true }); // nouvelle passation silencieusement ignorée
    }
  }
  ```
  ```sql
  -- 20260319 — aucune policy UPDATE ni UPSERT
  -- aucune migration ne crée de policy UPDATE sur diagnostic_results
  ```
- **Suggestion de fix** : Remplacer l'INSERT par un UPSERT avec `onConflict: "user_id"` côté API, et ajouter la migration :
  ```sql
  CREATE POLICY "Users can update own diagnostic result"
    ON public.diagnostic_results FOR UPDATE
    USING (auth.uid() = user_id);
  ```

---

## Fichiers inspectés lors de cette passe (passe 5)

- `features/homepage/components/renderer.tsx`
- `features/homepage/components/admin-shell.tsx`
- `features/homepage/components/admin-editor.tsx`
- `features/homepage/server/actions.ts`
- `features/homepage/server/queries.ts`
- `features/fiches/components/fiche-block-renderer.tsx`
- `features/fiches/components/blocks/block-related.tsx`
- `features/fiches/server/actions.ts`
- `features/exercises/server/actions.ts` (complet)
- `features/exercises/server/queries.ts` (complet)
- `features/exercises/components/exercise-player.tsx` (complet)
- `features/gamification/server/queries.ts` (complet)
- `features/diagnostic/server/queries.ts` (complet)
- `features/auth/server/guards.ts`
- `features/auth/components/auth-form.tsx` (partiel)
- `app/admin/layout.tsx`
- `app/admin/homepage/page.tsx` (via glob)
- `app/(app)/exercice-aleatoire/page.tsx`
- `app/(app)/fiches/[slug]/page.tsx` (partiel)
- `app/(app)/tableau-de-bord/loading.tsx`
- `app/api/diagnostic/complete/route.ts`
- `lib/supabase/server.ts`
- `supabase/migrations/20260311_init.sql`
- `supabase/migrations/20260312_add_exercise_topics.sql`
- `supabase/migrations/20260313_add_admin_role.sql`
- `supabase/migrations/20260319_add_diagnostic_results.sql`
- `supabase/migrations/20260326_add_tri_categories_type.sql`
- `supabase/migrations/20260330_add_surlignage_type.sql`
- `supabase/migrations/20260341_add_gamification_tables.sql`
- `supabase/migrations/20260354_add_srs_cards.sql`
- `supabase/migrations/20260355_add_daily_streak.sql`
- `supabase/migrations/20260429_add_leaderboard_function.sql`
- `supabase/migrations/20260502_create_fiche_completions.sql`

---

## Bugs majeurs — passe 6 (2026-03-23)

### [MAJ-019] `sprint-player.tsx` et `swipe-player.tsx` — `consecutiveCorrect` stale closure fausse le calcul XP de streak

- **Fichier** : `features/exercises/components/sprint-player.tsx:104-105` et `features/exercises/components/swipe-player.tsx:83-84`
- **Description** : Dans `submitAnswer` (sprint) et `handleSwipe` (swipe), le calcul du XP utilise la variable `consecutiveCorrect` issue de la closure React — c'est la valeur **avant** la mise à jour `setConsecutiveCorrect`. Par exemple, si l'utilisateur vient de répondre correctement et que `consecutiveCorrect` devrait passer de 2 à 3 pour déclencher un bonus de streak, le XP est calculé avec `streak = 2` (valeur courante) puis `setConsecutiveCorrect(3)` est appelé en asynchrone. Le XP réellement calculé est correct dans ce sens (le streak actuel, avant la question qui vient d'être répondue), mais le `streak` passé à `submitAttemptAction` en FormData (ligne 129 sprint, équivalent dans swipe) est aussi le streak **avant** mise à jour, ce qui correspond à ce que le serveur reçoit. La cohérence client/serveur est préservée — mais cela diffère du comportement de `exercise-player.tsx` qui utilise `consecutiveCorrectRef.current` (une ref synchrone), ce qui donne un résultat de streak décalé d'une question entre les trois players.
- **Impact** : Le XP de streak affiché dans les modes Sprint et Swipe est calculé avec un décalage de 1 par rapport au XP réel crédité côté serveur (qui utilise le streak renvoyé par la server action). Les modes Sprint et Swipe sous-évaluent le XP de la question courante d'un cran de streak. Pour les utilisateurs en streak long (≥ 5 réponses consécutives), le XP client peut différer sensiblement du XP serveur.
- **Données pour correcteur** :
  ```ts
  // sprint-player.tsx:104-105 — streak = stale state (avant cette réponse)
  const streak = evaluation.isCorrect ? consecutiveCorrect : 0;
  const xp = calculateXpEarned(evaluation.isCorrect, streak, timeMs, "sprint");
  // setConsecutiveCorrect((c) => c + 1) — appelé APRÈS
  ```
  ```ts
  // exercise-player.tsx utilise une ref synchrone :
  const streak = consecutiveCorrectRef.current; // mis à jour synchronement avant calcul
  ```
- **Suggestion de fix** : Utiliser une ref (`consecutiveCorrectRef`) comme dans `exercise-player.tsx`, ou calculer le streak avant l'appel au setter : `const newStreak = evaluation.isCorrect ? consecutiveCorrect + 1 : 0` et utiliser `newStreak - 1` pour le XP (streak actuel) et `newStreak` pour le prochain calcul.

---

### [MAJ-020] `app/(app)/maths/page.tsx` — navigation de domaine via `<a href>` natif au lieu de `<Link>` Next.js

- **Fichier** : `app/(app)/maths/page.tsx:130-189`
- **Description** : La table de domaines dans la page Mathématiques utilise des balises `<a href={domain.href}>` natives pour chaque ligne de domaine. La page Français équivalente (`app/(app)/francais/page.tsx`) utilise correctement `<Link href={domain.href}>` de Next.js. Avec un `<a>` natif, chaque clic sur un domaine déclenche une navigation complète (full page reload), perdant l'état client React, les transitions d'animation, le scroll position et le cache de données Next.js. La page refetch toutes ses données DB depuis zéro.
- **Impact** : Performance dégradée : chaque clic sur un domaine maths déclenche un rechargement complet de la page (équivalent à un `window.location.href = ...`). Sur mobile avec une connexion lente, la latence est de 300–800 ms supplémentaires. Incohérence avec le comportement de la page Français (navigation soft). L'état du layout partagé (header, navigation) est recréé inutilement.
- **Données pour correcteur** :
  ```tsx
  // maths/page.tsx:130 — balise native
  <a key={domain.key} href={domain.href} className={cn(...)}>
  // francais/page.tsx:131 — correct
  <Link key={domain.key} href={domain.href} className={cn(...)}>
  ```
- **Suggestion de fix** : Remplacer `<a href=...>` par `<Link href=...>` de `next/link` (déjà importé dans le fichier pour le composant `Link` non utilisé dans la table).

---

## Bugs mineurs — passe 6 (2026-03-23)

### [MIN-029] `forgot-password-form.tsx` — `process.env.NEXT_PUBLIC_APP_URL` utilisé directement, bypasse `lib/env.ts`

- **Fichier** : `features/auth/components/forgot-password-form.tsx:23`
- **Description** : La construction de l'URL `redirectTo` utilise `process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000"` directement plutôt que `env.appUrl` de `@/lib/env`. La valeur de fallback est identique (`"http://localhost:3000"`), donc le comportement est identique en pratique. Cependant, si `lib/env.ts` est modifié pour valider ou transformer `appUrl` (ex : strip du slash final, forcer HTTPS), le `forgot-password-form.tsx` ne bénéficiera pas de ce traitement.
- **Impact** : Mineur — cohérence architecturale. Si la variable d'environnement est absente en production et que le fallback `localhost:3000` est utilisé, l'email de réinitialisation de mot de passe contiendra un lien de callback invalide, bloquant le flux de réinitialisation en production.
- **Données pour correcteur** :
  ```ts
  // forgot-password-form.tsx:23
  redirectTo: `${process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000"}/api/auth/callback?next=/reinitialiser-mot-de-passe`,
  // Devrait utiliser :
  // import { env } from "@/lib/env";
  // redirectTo: `${env.appUrl}/api/auth/callback?next=/reinitialiser-mot-de-passe`,
  ```

---

### [MIN-030] `mentions-legales/page.tsx` — lien interne `/politique-confidentialite` via `<a>` natif

- **Fichier** : `app/(marketing)/mentions-legales/page.tsx:79`
- **Description** : Le lien vers `/politique-confidentialite` dans la page Mentions légales est une balise `<a href="/politique-confidentialite">` native. Comme pour MAJ-020, cela déclenche un rechargement complet au lieu d'une navigation client-side Next.js.
- **Impact** : Mineur — full page reload sur une page statique. Léger impact sur la fluidité UX et les métriques Core Web Vitals (FCP/LCP mesurés comme navigation complète).
- **Données pour correcteur** :
  ```tsx
  // mentions-legales/page.tsx:79
  <a href="/politique-confidentialite" className="underline underline-offset-2">
  // Devrait être :
  <Link href="/politique-confidentialite" className="underline underline-offset-2">
  ```

---

### [MIN-031] `normalize.ts` — mode `"single"` accepté en alias de `"single_choice"` mais non documenté, potentiel désalignement avec le schéma DB

- **Fichier** : `features/exercises/shared/normalize.ts:35`
- **Description** : `normalizeExpectedAnswer` accepte `rawMode === "single"` comme alias de `"single_choice"`. Ce mode `"single"` n'est pas défini dans le type `ExpectedAnswer` de `@/types/domain` — il n'existe que comme format legacy de données en base. Le commit `ba08d7d fix(migrations)` indique que des migrations ont été effectuées pour passer de `mode: "single"` à `mode: "single_choice"` sur 39 fichiers seed. Si des exercices en base n'ont pas été migrés (ex : exercices créés avant la migration, exercices mathématiques), la normalisation silencieuse masque le fait que ces données sont encore au format legacy. Si quelqu'un supprime le cas `"single"` de `normalize.ts` pensant que la migration est complète, tous les exercices restants au format legacy cesseront de fonctionner silencieusement (retourneront `{ mode: "text", acceptableAnswers: [] }` via le fallback).
- **Impact** : Risque de régression silencieuse si la branche `"single"` est retirée sans vérification complète. L'alias devrait être documenté avec un commentaire indiquant pourquoi il existe et quand il pourra être supprimé.
- **Données pour correcteur** :
  ```ts
  // normalize.ts:35
  if ((rawMode === "single_choice" || rawMode === "single") && ...) {
  // "single" = format legacy, à garder tant que la DB peut contenir des données non migrées
  ```

---

### [MIN-032] `evaluation.ts` — `evaluateExerciseAnswer` avec `expected_answer.mode === "highlight_groups"` : si `mapping` contient des clés d'items absents de `choices`, le label retourné est vide

- **Fichier** : `features/exercises/shared/evaluation.ts:125-139` et `buildExpectedAnswerLabel:95-109`
- **Description** : Dans `buildExpectedAnswerLabel`, pour le mode `"highlight_groups"`, les items sont cherchés dans `choices` via `.find((c) => c.id === itemId)`. Si `choices` est `null` ou si l'item n'est pas trouvé, `item` est `undefined` et la branche `if (item && group)` est ignorée — cet item n'apparaît pas dans le label affiché à l'utilisateur. L'`expectedAnswerLabel` retourné peut donc être une chaîne vide (`""`) ou partielle si `choices` est mal formé ou si `mapping` contient des IDs qui n'existent plus dans `choices`. L'évaluation elle-même (`allCorrect`) fonctionne correctement car elle compare `placement[itemId] === mapping[itemId]` directement, sans utiliser les labels. Seul l'affichage du label est incorrect.
- **Impact** : Mineur — l'évaluation est correcte mais le label "réponse attendue" affiché dans le feedback peut être vide ou partiel pour les exercices `surlignage_propositions` avec des données mal formées. L'utilisateur voit un feedback sans indication de la bonne réponse.
- **Données pour correcteur** :
  ```ts
  // evaluation.ts:97-101
  const item = choices?.find((c) => c.id === itemId); // peut être undefined
  const group = expectedAnswer.groups.find((g) => g.id === groupId);
  if (item && group) { // si item undefined, l'item est silencieusement omis du label
    ...
  }
  ```
- **Suggestion de fix** : Ajouter un fallback : si `item` est `undefined`, utiliser `itemId` comme label de secours pour indiquer l'ID manquant.

---

### [MIN-033] `cgu/page.tsx` — CGU incomplètes : aucune mention des limites quotidiennes, de la durée de conservation des données, ni des modalités de remboursement

- **Fichier** : `app/(marketing)/cgu/page.tsx`
- **Description** : Le contenu des CGU est un placeholder de 3 paragraphes sans substance légale suffisante. Les CGU ne mentionnent pas : (1) les quotas journaliers gratuits (30 questions/5 fiches) ni les conditions d'accès premium, (2) la durée de conservation des données personnelles, (3) les modalités de remboursement (aucun remboursement prévu ? conformité DSP2/directive européenne ?), (4) la juridiction compétente en cas de litige, (5) la version en vigueur et la date de dernière mise à jour. La politique de confidentialité (`politique-confidentialite/page.tsx`) est également un placeholder de 3 lignes.
- **Impact** : Risque juridique — des CGU insuffisantes peuvent exposer l'éditeur à des litiges consommateurs, notamment pour les paiements Stripe. La DGCCRF peut sanctionner l'absence de mentions obligatoires dans les CGV/CGU d'un service payant. Impact direct sur la commercialisation des abonnements.
- **Données pour correcteur** : Les deux fichiers `cgu/page.tsx` et `politique-confidentialite/page.tsx` sont des stubs à compléter avant mise en production commerciale.

---

## Fichiers inspectés lors de cette passe (passe 6)

- `features/exercises/shared/evaluation.ts` (complet)
- `features/exercises/shared/normalize.ts` (complet)
- `features/exercises/components/sprint-player.tsx` (complet)
- `features/exercises/components/swipe-player.tsx` (partiel)
- `features/srs/components/srs-review-card.tsx`
- `features/dashboard/components/animated-counter.tsx`
- `features/dashboard/components/domain-gauge.tsx`
- `features/dashboard/components/nivo-radar.tsx`
- `features/dashboard/components/onboarding-banner.tsx`
- `features/dashboard/components/session-progress-card.tsx`
- `features/dashboard/components/xp-level-card.tsx`
- `features/diagnostic/components/radar-chart.tsx`
- `features/fiches/components/fiche-card.tsx`
- `features/auth/components/forgot-password-form.tsx` (partiel — process.env direct)
- `features/auth/components/logout-button.tsx`
- `components/hooks/use-game-sounds.ts`
- `lib/utils.ts` (complet)
- `app/(app)/exercices/page.tsx`
- `app/(app)/fiches/page.tsx`
- `app/(app)/fiches-maths/page.tsx`
- `app/(app)/francais/page.tsx`
- `app/(app)/maths/page.tsx`
- `app/(app)/maths/[domain]/page.tsx` (via pattern comparaison)
- `app/(app)/progression/page.tsx`
- `app/(app)/progression/chart-toggle.tsx`
- `app/(app)/ressources/page.tsx`
- `app/(app)/ressources/glossaire/page.tsx` (partiel — contenu)
- `app/(app)/not-found.tsx`
- `app/(auth)/inscription/page.tsx`
- `app/(marketing)/page.tsx`
- `app/(marketing)/offre/page.tsx`
- `app/(marketing)/cgu/page.tsx`
- `app/(marketing)/mentions-legales/page.tsx`
- `app/(marketing)/politique-confidentialite/page.tsx`
- `app/(marketing)/diagnostic/page.tsx`
- `app/api/auth/callback/route.ts` (vérification de MIN-011)

### Vérifications globales (grep sur tout le codebase)
- `TODO` / `FIXME` : aucun dans le code source
- `console.log` en prod : aucun (scripts d'admin uniquement)
- `@ts-ignore` : 1 occurrence (onboarding-tour.tsx — CSS import, justifié)
- `@ts-expect-error` : 1 occurrence (idem)
- `eslint-disable` : 2 occurrences (use-game-sounds.ts:44, exercise-player.tsx:77 — react-hooks/exhaustive-deps, les deux avec dépendances explicitement listées)
- `: any` / `as any` : 1 occurrence (download-fiche-button.tsx:29 — cast react-pdf justifié par l'API)
- `process.env.X!` avec assertion non-null : aucune
- `process.env.X` hors `lib/env.ts` : 1 occurrence (forgot-password-form.tsx — documenté MIN-029)

### signup-sheet.tsx (fichier non versionné mentionné dans git status initial)
Le fichier `features/auth/components/signup-sheet.tsx` n'existe pas dans le système de fichiers lors de cette passe. Il était peut-être présent comme fichier non committé en mémoire de contexte mais a été supprimé ou déplacé depuis. Aucun bug à documenter.

---

## Bugs majeurs — passe 7 (2026-03-23)

### [MAJ-021] `revision/page.tsx` — `isPremiumUser` récupéré mais jamais utilisé : les exercices SRS premium sont rendus aux utilisateurs gratuits

- **Fichier** : `app/(app)/revision/page.tsx:23` + `features/srs/server/queries.ts:57-65`
- **Description** : La page de révision espacée appelle `isPremiumUser(user.id)` et stocke le résultat dans `premium` — mais ne passe jamais cette variable à `getDueExercises()`, à `getExerciseById()`, ni à la construction de la session. `getDueExercises` ne filtre pas les `srs_cards` par `access_tier` de l'exercice associé. Résultat : un utilisateur gratuit qui a auparavant répondu à un exercice premium (par tout autre moyen, par exemple pendant une période d'abonnement), verra cet exercice reprogrammé dans sa file SRS et la page `/revision` lui rendra l'exercice et son contenu complet.
- **Note complémentaire** : La `submitAttemptAction` bloque bien la soumission si l'exercice est premium et l'utilisateur non abonné (ligne 81–86 de `actions.ts`). Ainsi, l'utilisateur voit la question mais reçoit une erreur `"Cet exercice est réservé aux abonnés premium."` à la soumission. Ce n'est pas un vecteur d'accès complet aux corrections, mais le contenu de la question (instruction, choix) est affiché sans restriction.
- **Impact** : Les utilisateurs gratuits peuvent lire l'énoncé des exercices premium via la route SRS, contournant le verrou d'accès affiché sur `/exercices`. Incohérence de la promesse commerciale.
- **Données pour correcteur** :
  ```ts
  // revision/page.tsx:23 — premium récupéré mais jamais utilisé
  const premium = await isPremiumUser(user.id);
  // ...
  const [dueItems, dueCount] = await Promise.all([
    getDueExercises(user.id, 20), // pas de filtre premium
    getDueCount(user.id),
  ]);
  // ...
  const exercises: ExerciseRecord[] = [];
  for (const item of dueItems) {
    const ex = await getExerciseById(item.exercise_id); // pas de filtre access_tier
    if (ex) exercises.push(ex); // exercice premium inclus si free user
  }
  ```
  ```ts
  // srs/server/queries.ts:57-65 — aucun filtre access_tier dans la requête
  const { data } = await supabase
    .from("srs_cards")
    .select("exercise_id, due, state, ...exercises(id, ...)")
    .eq("user_id", userId)
    .lte("due", new Date().toISOString())
    .limit(limit); // pas de .eq("exercises.access_tier", "free")
  ```
- **Suggestion de fix** : Filtrer les exercices chargés dans la boucle `for...of` selon `access_tier` et `premium` :
  ```ts
  for (const item of dueItems) {
    const ex = await getExerciseById(item.exercise_id);
    if (ex && (ex.access_tier === "free" || premium)) exercises.push(ex);
  }
  ```
  Ou filtrer directement dans la jointure Supabase si `premium` est `false`.

---

### [MAJ-022] `reindexDraftSections` — N mises à jour `page_sections` non atomiques : réordonnancement partiellement appliqué en cas d'échec intermédiaire

- **Fichier** : `features/homepage/server/actions.ts:243-251`
- **Description** : `reindexDraftSections` effectue une mise à jour individuelle par section via `Promise.all(sectionIdsInOrder.map((id, index) => supabase.from("page_sections").update({order_index: index}).eq("id", id)))`. Aucun `error` n'est extrait ni vérifié des promesses retournées. En cas d'échec partiel (ex : timeout Supabase sur la 3e requête sur 5), les premières sections reçoivent leur nouvel `order_index` mais les suivantes conservent l'ancien. L'ordre des sections devient incohérent de manière silencieuse, sans rollback ni indication d'erreur à l'administrateur.
- **Impact** : Un réseau instable ou une interruption Supabase pendant une opération de réordonnancement (déplacement, duplication, suppression) peut corrompre silencieusement l'ordre des sections de la homepage. L'interface admin refléterait un ordre différent de l'ordre stocké en base, sans notification d'erreur.
- **Données pour correcteur** :
  ```ts
  // actions.ts:246-250 — erreurs des updates individuels non vérifiées
  await Promise.all(
    sectionIdsInOrder.map((sectionId, index) =>
      supabase.from("page_sections").update({ order_index: index }).eq("id", sectionId),
      // Retourne { data, error } mais les deux sont ignorés
    ),
  );
  ```
- **Suggestion de fix** : Utiliser une RPC Postgres pour mettre à jour les order_index en une seule transaction, ou vérifier les erreurs de chaque update :
  ```ts
  const results = await Promise.all(
    sectionIdsInOrder.map((sectionId, index) =>
      supabase.from("page_sections").update({ order_index: index }).eq("id", sectionId)
    )
  );
  const failed = results.find(r => r.error);
  if (failed) throw new Error("Réordonnancement partiel : " + failed.error.message);
  ```

---

## Bugs mineurs — passe 7 (2026-03-23)

### [MIN-034] `classement/page.tsx` — `WeekRange` calcule les dates en timezone serveur (UTC) au lieu de Paris

- **Fichier** : `app/(app)/classement/page.tsx:14-33`
- **Description** : La fonction `WeekRange` calcule le lundi et le dimanche de la semaine courante via `new Date()` (sans timezone) et `setDate()`. En production sur Vercel (timezone UTC), `new Date()` retourne l'heure UTC. Le calcul `day = now.getDay()` utilise le jour UTC. En France, en début de soirée (ex. lundi 23h45 UTC = mardi 01h45 Paris en été), le calcul `diffToMonday` calcule la semaine commençant le lundi précédent en UTC — mais côté utilisateur français, nous sommes déjà mardi. L'affichage "Semaine du X au Y" peut donc montrer la semaine précédente pendant les 1–2 premières heures du mardi Paris.
- **Impact** : Mineur — l'en-tête de période du classement peut afficher une semaine décalée d'1 jour pour les utilisateurs connectés entre minuit UTC et minuit Paris (1h ou 2h selon la saison). Le classement lui-même (calculé côté Supabase RPC) est indépendant de ce composant.
- **Données pour correcteur** :
  ```ts
  // classement/page.tsx:15-17
  const now = new Date(); // UTC en prod
  const day = now.getDay(); // jour UTC, pas Paris
  ```
- **Suggestion de fix** : Utiliser `now.toLocaleDateString("en-CA", { timeZone: "Europe/Paris" })` pour déterminer le jour de la semaine côté Paris, ou calculer `daySeed` comme dans `tableau-de-bord/page.tsx`.

---

### [MIN-035] `features/homepage/server/actions.ts` — `markHomepageAsDraft` et les updates dans `reindexDraftSections` ignorent tous les `error` Supabase

- **Fichier** : `features/homepage/server/actions.ts:217-221`
- **Description** : `markHomepageAsDraft` appelle `supabase.from("pages").update({ status: "draft" }).eq("id", pageId)` sans extraire ni vérifier `error`. Si la mise à jour échoue (ex. contrainte RLS, connexion perdue), la page ne passe pas en statut "draft" mais les sections sont tout de même modifiées. L'administrateur est redirigé avec le statut "saved" — sans avertissement. Cette incohérence entre le statut de la page (`published`) et le contenu des sections (`draft`) peut provoquer une publication accidentelle de sections non finalisées.
- **Impact** : Si `markHomepageAsDraft` échoue silencieusement, la homepage peut rester en statut `published` avec des sections partiellement modifiées — les sections "draft" n'étant pas affichées au public (filtrage par `stage`), mais l'état de la base est incohérent. Risque d'une publication involontaire lors du prochain `publishHomepageAction`.
- **Données pour correcteur** :
  ```ts
  // actions.ts:217-221
  async function markHomepageAsDraft(pageId: string) {
    const supabase = await createSupabaseServerClient();
    await supabase.from("pages").update({ status: "draft" }).eq("id", pageId);
    // error ignoré — si cela échoue, la page reste "published"
  }
  ```
- **Suggestion de fix** : Extraire et vérifier `error` :
  ```ts
  const { error } = await supabase.from("pages").update({ status: "draft" }).eq("id", pageId);
  if (error) console.error("[homepage] markHomepageAsDraft failed:", error.message);
  ```

---

## Fichiers inspectés lors de cette passe (passe 7)

### Contrats API et server actions
- `features/exercises/server/actions.ts` (complet — vérification contrat FormData)
- `features/leaderboard/server/actions.ts` (complet)
- `features/auth/server/actions.ts` (complet)
- `features/homepage/server/actions.ts` (complet)
- `features/fiches/server/actions.ts` (complet)
- `features/leaderboard/components/display-name-form.tsx` (client form → action contract)
- `features/exercises/components/exercise-player.tsx` (FormData envoyé)

### Hydratation / SSR
- `components/ui/confetti.tsx` — `Math.random()` dans `useEffect` uniquement, pas de bug d'hydratation
- `components/ui/activity-heatmap.tsx` — `new Date()` dans `useMemo` côté client, pas de bug SSR
- `app/(app)/classement/page.tsx` — `WeekRange()` : `new Date()` UTC en prod (MIN-034 documenté)
- `app/(app)/tableau-de-bord/page.tsx` — `Date.now()` / `new Date()` en Server Component : pas de bug d'hydratation

### SRS / Freemium
- `app/(app)/revision/page.tsx` (complet — MAJ-021 documenté)
- `features/srs/server/queries.ts` (complet — aucun filtre access_tier)
- `lib/freemium.ts` (complet)

### Pages (app) non encore lues individuellement
- `app/(app)/classement/page.tsx` (complet)
- `app/(app)/historique/page.tsx` (complet)
- `app/(app)/profil/page.tsx` (complet)
- `app/(app)/abonnement/page.tsx` (complet)
- `app/(app)/exercices/page.tsx` (complet)
- `app/(app)/ressources/page.tsx` (complet)

### Gestion des erreurs Supabase
- `features/gamification/server/queries.ts` (complet — erreurs correctement loggées)
- `features/homepage/server/actions.ts` — `markHomepageAsDraft` et `reindexDraftSections` sans vérification d'erreur (MIN-035 documenté)
- `features/srs/server/queries.ts` — `upsert` sans vérification d'erreur dans `recordSrsReview` (existant, non redocumenté)

### Feature flags / dead code
- Grep `if (false)` / `NODE_ENV.*development` dans tout le codebase : aucun pattern problématique côté code applicatif. Les `enabled = false` sont dans `supabase/config.toml` (options Supabase locales — attendu).

### Conflits de nommage / shadowing
- `features/homepage/server/actions.ts:323` — variable `error` dans le `catch` masque la variable `error` de la portée externe (ligne 343). Pas problématique car `redirectToAdmin` (`: never`) assure que le code après le `try/catch` n'est atteint que si aucune exception n'a été levée, et TypeScript infère correctement que `type` et `props` sont initialisés.
- Aucun shadowing dangereux détecté.

---

## Bugs mineurs — passe 8 (2026-03-23)

### [MIN-036] Numéros de migration dupliqués `20260720` et `20260721` — ordre d'exécution Supabase indéfini

- **Fichiers** :
  - `supabase/migrations/20260720_seed_graphophonologie_cgp.sql`
  - `supabase/migrations/20260720_seed_math_vecteurs_introduction.sql`
  - `supabase/migrations/20260721_seed_math_aire_figures_usuelles.sql`
  - `supabase/migrations/20260721_seed_math_didactique_addition.sql`
- **Description** : Deux migrations partagent le numéro de version `20260720` et deux autres partagent `20260721`. Supabase CLI trie les migrations par timestamp (le préfixe numérique), et en cas d'égalité il se base sur l'ordre alphabétique du nom de fichier. Ce comportement est implicite et non documenté comme stable. Si la CLI change de stratégie de tri, l'ordre d'application des migrations peut changer, ce qui n'est pas un problème pour des seeds indépendants mais constitue une surface de risque réelle si l'une de ces migrations dépend d'une autre (ex : `seed_math_vecteurs_introduction` utilisant une colonne ajoutée par `seed_graphophonologie_cgp`). De plus, `supabase db push` ou `supabase migration new` génère ses propres timestamps — si l'outil interprète les deux fichiers `20260720` comme une seule migration déjà appliquée et l'autre comme non-appliquée, des erreurs de synchronisation d'état (`migration_version` table) peuvent survenir.
- **Impact** : Risque de confusion lors des `supabase db push` / `supabase migration repair`. La migration de numérotation brisée peut faire croire à Supabase que certaines migrations ne sont pas appliquées alors qu'elles le sont, ou inversement. Aucun impact immédiat sur les données (les seeds sont des INSERTs indépendants) mais risque de régression lors de la prochaine migration.
- **Données pour correcteur** :
  ```
  # Doublons détectés :
  20260720_seed_graphophonologie_cgp.sql
  20260720_seed_math_vecteurs_introduction.sql
  20260721_seed_math_aire_figures_usuelles.sql
  20260721_seed_math_didactique_addition.sql
  ```
- **Suggestion de fix** : Renommer les fichiers en conflit en utilisant des timestamps uniques croissants (ex : `20260720_seed_graphophonologie_cgp.sql` → `20260720_seed_graphophonologie_cgp.sql` inchangé, `20260720_seed_math_vecteurs_introduction.sql` → `20260720b_seed_math_vecteurs_introduction.sql`, ou utiliser `20260720a` / `20260720b` selon la convention de l'équipe).

---

### [MIN-037] `generate-french-module-seed.ts` — SQL généré sans `ON CONFLICT DO NOTHING` : non-idempotent

- **Fichier** : `scripts/generate-french-module-seed.ts:36-75` et `supabase/seed_content_french_module_v1.sql`
- **Description** : Le script génère un fichier SQL contenant un `INSERT INTO public.exercises (...) VALUES (...)` sans clause `ON CONFLICT (id) DO NOTHING`. Toutes les migrations de seed dans `supabase/migrations/` utilisent `ON CONFLICT (id) DO NOTHING` pour garantir l'idempotence. Si `npm run generate:french-module-seed` est exécuté deux fois et que le fichier généré est appliqué deux fois à la DB (via `supabase db reset` ou `psql`), chaque exécution tentant un `INSERT` avec le même UUID fixe échouera avec une violation de clé primaire. En local, `supabase db reset` relit `seed.sql` (qui inclut ce fichier via `sql_paths`) à chaque reset — la première exécution insère, les suivantes échouent silencieusement si Postgres rejette les doublons.
- **Impact** : Un `supabase db reset` suivi d'un deuxième reset en local interrompt le seed avec des erreurs de clé primaire. En pratique, `seed.sql` est distinct de `seed_content_french_module_v1.sql` (pas de `\i` dans `seed.sql`), mais si un développeur applique manuellement le fichier généré, il obtient une erreur non informative. Le pattern incohérent avec toutes les autres migrations de seed est un risque de régression.
- **Données pour correcteur** :
  ```ts
  // generate-french-module-seed.ts:36-42
  "insert into public.exercises (",  // INSERT brut
  // ...
  // Pas de ON CONFLICT (id) DO NOTHING
  ```
- **Suggestion de fix** : Remplacer `"values"` par `"values"` et ajouter en fin de génération : `"on conflict (id) do nothing;"` au lieu de `";".`

---

### [MIN-038] `scripts/migrate-homepage.mjs` — variables d'environnement utilisées sans validation

- **Fichier** : `scripts/migrate-homepage.mjs:3-6`
- **Description** : Le script crée un client Supabase avec `createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)` sans aucune vérification que ces variables sont définies. Si le script est exécuté sans les bonnes variables d'environnement (ex. sans `dotenv-cli` ou sans `.env.local`), `createClient(undefined, undefined)` lève une erreur cryptique (`Invalid URL: undefined`) au lieu d'un message d'aide clair. Contrairement à `bootstrap-admin.ts` qui valide explicitement les variables et fait `process.exit(1)` avec un message explicatif, ce script échoue silencieusement avec une stack trace peu lisible.
- **Impact** : Un développeur exécutant `node scripts/migrate-homepage.mjs` sans les bonnes variables obtiendra une erreur non informative et ne saura pas quelles variables définir. Risque d'exécution accidentelle en environnement incorrect.
- **Données pour correcteur** :
  ```js
  // migrate-homepage.mjs:3-6 — pas de validation
  const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,   // peut être undefined
    process.env.SUPABASE_SERVICE_ROLE_KEY,  // peut être undefined
  );
  ```
- **Suggestion de fix** : Ajouter une validation en tête de script, à l'instar de `bootstrap-admin.ts` :
  ```js
  if (!process.env.NEXT_PUBLIC_SUPABASE_URL || !process.env.SUPABASE_SERVICE_ROLE_KEY) {
    console.error("✗ Variables manquantes. Usage : dotenv -e .env.local -- node scripts/migrate-homepage.mjs");
    process.exit(1);
  }
  ```

---

### [MIN-039] `lib/env.ts` — `Number(x) || fallback` ignore silencieusement la valeur `0`

- **Fichier** : `lib/env.ts:27-28`
- **Description** : Les limites quotidiennes freemium sont lues depuis les variables d'environnement avec le pattern `Number(process.env.FREE_DAILY_QUESTION_LIMIT) || 30`. L'opérateur `||` traite `0` comme falsy, ce qui signifie que si un opérateur définit `FREE_DAILY_QUESTION_LIMIT=0` pour désactiver complètement l'accès gratuit, la valeur retenue sera `30` (le fallback), non `0`. La config est silencieusement ignorée. La même logique s'applique à `FREE_DAILY_FICHE_LIMIT`.
- **Impact** : Mineur — un opérateur voulant mettre le quota à 0 (accès entièrement payant) ou à une valeur choisie basse (ex. 5) ne verrait pas son config appliqué si la variable est `"0"`. En pratique le scénario est peu probable car le quota actuel est 20–30. Mais le pattern est trompeur et devrait utiliser `?? 30` (nullish coalescing) ou vérifier explicitement `isNaN`.
- **Données pour correcteur** :
  ```ts
  // env.ts:27-28
  freeDailyQuestionLimit: Number(process.env.FREE_DAILY_QUESTION_LIMIT) || 30,
  // Number("0") = 0, 0 || 30 = 30 — la valeur "0" est ignorée
  freeDailyFicheLimit: Number(process.env.FREE_DAILY_FICHE_LIMIT) || 5,
  ```
- **Suggestion de fix** :
  ```ts
  const rawLimit = Number(process.env.FREE_DAILY_QUESTION_LIMIT);
  freeDailyQuestionLimit: isNaN(rawLimit) ? 30 : rawLimit,
  ```
  Ou plus simplement, si `0` n'est jamais une valeur valide : conserver `|| 30` mais documenter explicitement l'invariant.

---

## Fichiers inspectés lors de cette passe (passe 8)

### Scripts
- `scripts/generate-french-module-seed.ts` (complet)
- `scripts/bootstrap-admin.ts` (complet)
- `scripts/migrate-homepage.mjs` (complet)

### Contenu éducatif
- `content/fiches/` — structure vérifiée (112 fichiers), format Fiche correct (spot-checks)
- `content/fiches-maths/` — structure vérifiée (102 fichiers), format Fiche correct (spot-checks)
- `content/french-crpe-module.ts` — seedPrefix et structure des séries vérifiés
- `content/french-crpe-series-v3-a.ts` — format subdomain/expected_answer vérifié

### Configuration Supabase
- `supabase/config.toml` — `sql_paths = ["./seed.sql"]` conforme
- `supabase/migrations/20260720_seed_graphophonologie_cgp.sql` — doublon de version détecté
- `supabase/migrations/20260720_seed_math_vecteurs_introduction.sql` — doublon
- `supabase/migrations/20260721_seed_math_aire_figures_usuelles.sql` — doublon
- `supabase/migrations/20260721_seed_math_didactique_addition.sql` — doublon
- `supabase/migrations/20260514_seed_math_conversions_systematiques.sql` — version distincte (20260514 ≠ 20260515)
- `supabase/migrations/20260515_seed_math_conversions_systematiques.sql` — versions différentes, pas doublon
- `supabase/migrations/20260787_create_user_badges.sql` — RLS SELECT + INSERT (pas d'UPDATE intentionnel, badges permanents)
- `supabase/migrations/20260341_add_gamification_tables.sql` — RLS SELECT + INSERT + UPDATE ✓
- `supabase/migrations/20260354_add_srs_cards.sql` — RLS SELECT + INSERT + UPDATE ✓
- `supabase/migrations/20260355_add_daily_streak.sql` — ALTER TABLE uniquement
- `supabase/migrations/20260317_add_homepage_editor.sql` — RLS complet (admin) ✓
- `supabase/migrations/20260319_add_diagnostic_results.sql` — RLS SELECT + INSERT, pas d'UPDATE (déjà documenté MIN-028)
- `supabase/migrations/20260313_add_admin_role.sql` — policies admin ✓
- `supabase/migrations/20260314_fix_is_premium_user.sql` — alignement `current_period_end > now()` ✓
- `supabase/migrations/20260429_add_leaderboard_function.sql` — SECURITY DEFINER, GRANT TO authenticated ✓
- `supabase/seed_content_french_module_v1.sql` — pas de ON CONFLICT (MIN-037)
- `supabase/seed.sql` — seed local uniquement, ok

### package.json et dépendances
- `package.json` — dépendances toutes avec ranges `^` (standard npm). Aucun `*`. Aucune dépendance dev utilisée en prod visible. Pas de conflit apparent.
- Dépendances notables : `zod ^4.3.6` (v4 majeure récente), `framer-motion ^12.38.0`, `vitest ^4.1.0`, `next ^15.2.0`, `react ^19.0.0` — tous alignés sur les versions récentes stables.

### Patterns React avancés
- `use-game-sounds.ts` — `useEffect` lit `window.matchMedia()` sans listener → pas de cleanup nécessaire ✓
- `exercise-player.tsx` — useRefs (`consecutiveCorrectRef`, `prevResultsCount`, `timerFiredRef`) utilisés correctement pour des valeurs synchrones non réactives ✓
- `sprint-player.tsx` — `setInterval` cleanup dans le `return` du `useEffect` ✓ ; `setTimeout` dans `submitAnswer` non annulé si le composant démonte (risque minimal car le composant ne se démonte pas en mid-session)
- `swipe-player.tsx` — `useCallback` deps complètes ✓ ; `setTimeout` dans `handleSwipe` non annulé si démontage → `isProcessingRef.current = false` jamais appelé → bug de ref stale si remontage rapide, mais non critique
- `onboarding-tour-wrapper.tsx` — fetch sans AbortController mais dans `useCallback` non lié à un useEffect → pas de fuite réelle

### Stripe webhook (relecture complète)
- `constructEvent` appelé avant tout traitement ✓
- `customer.subscription.updated` (downgrade/pause/past_due) : `upsertSubscription` stocke le status Stripe tel quel. `isPremiumUser` vérifie `status in ('active', 'trialing')` → accès refusé pour tout autre status ✓
- `checkout.session.completed` avec `mode === "subscription"` : récupère la subscription Stripe via `stripe.subscriptions.retrieve` → données fraîches ✓
- Bug CRIT-003 (mode subscription au lieu de payment pour daily/weekly) confirmé toujours présent

### TypeScript silencieux
- `lib/env.ts:27-28` — `Number(x) || fallback` ignore `0` (MIN-039)
- Pas de `Promise<void>` dont le résultat serait utilisé de manière problématique
- Pas de `?.` masquant des undefined critiques non documentés

### Next.js build
- `dynamic({ ssr: false })` utilisé correctement pour `SprintPlayer`, `SwipePlayer`, `OnboardingTour`, `CountUp`, `DomainGaugeInner`, `ResponsiveRadar`, `CountdownCircleTimer` ✓
- Tous les composants utilisant `window`, `document`, framer-motion, use-sound ont `"use client"` ✓
- `driver.js` importé uniquement dans un `import()` dynamique à l'intérieur d'un `useEffect` côté client ✓
- Aucun Server Component important des modules browser-only détecté

---

## Bugs mineurs — passe 9 (2026-03-23)

### [MIN-040] `reset-password-form.tsx` — même `router.push` + `router.refresh()` que MIN-024, après réinitialisation du mot de passe

- **Fichier** : `features/auth/components/reset-password-form.tsx:47-50`
- **Description** : Identique au pattern documenté en MIN-024 : après une mise à jour réussie du mot de passe, le code appelle `router.push("/tableau-de-bord")` immédiatement suivi de `router.refresh()` dans le même bloc `setTimeout`. Comme expliqué dans MIN-024, en Next.js 15, `router.push` suffit pour naviguer vers une page Server Component. L'ajout de `router.refresh()` déclenche un refetch du Server Component courant (page de réinitialisation) alors que la navigation vers `/tableau-de-bord` est déjà en cours — double requête redondante.
- **Impact** : Double requête lors de chaque réinitialisation réussie de mot de passe. Cohérent avec MIN-024 mais sur un flux différent. Risque de flash ou comportement inattendu si le layout partagé est refreshé pendant la navigation.
- **Données pour correcteur** :
  ```ts
  // reset-password-form.tsx:47-50
  setTimeout(() => {
    router.push("/tableau-de-bord");
    router.refresh(); // redondant après push, même pattern que MIN-024
  }, 2000);
  ```
- **Suggestion de fix** : Supprimer `router.refresh()` — le `push` suffit.

---

### [MIN-041] `lib/stripe/server.ts` — même pattern singleton `let stripeClient: Stripe | null = null` que CRIT-002

- **Fichier** : `lib/stripe/server.ts:5-20`
- **Description** : Le client Stripe serveur est initialisé via un singleton module-level (`let stripeClient: Stripe | null = null`), identique au pattern du client admin Supabase documenté en CRIT-002. Si la clé Stripe est tournée en production (rotation de secret), toutes les instances warm de la lambda Vercel conservent l'ancien client Stripe en mémoire. Les requêtes Stripe utilisant l'ancien client échoueront silencieusement avec une erreur d'authentification Stripe. Aucun mécanisme de détection de rotation ni d'invalidation du singleton n'est présent. La gravité est moindre que CRIT-002 (Stripe n'a pas de RLS à bypasser), mais l'impact opérationnel lors d'une rotation de clé est identique.
- **Impact** : En cas de rotation de la clé Stripe (`STRIPE_SECRET_KEY`), les instances warm continuent à utiliser l'ancien client → toutes les opérations Stripe (checkout, webhook, portail) échouent jusqu'au cold start de toutes les instances. Difficile à diagnostiquer sans logs clairs.
- **Données pour correcteur** :
  ```ts
  // lib/stripe/server.ts:5
  let stripeClient: Stripe | null = null;
  // ...
  if (!stripeClient) {
    stripeClient = new Stripe(env.stripeSecretKey, { apiVersion: "2025-02-24.acacia" });
  }
  return stripeClient; // stocké globalement, jamais invalidé
  ```
- **Suggestion de fix** : Supprimer le singleton — le client Stripe est léger à instancier et sans état de session : `export function getStripeServerClient() { return new Stripe(env.stripeSecretKey, { ... }); }`.

---

### [MIN-042] Nouvelles migrations seed — 4 fichiers utilisent le format `"mode":"single"` (legacy) au lieu de `"mode":"single_choice"` (standard)

- **Fichiers** :
  - `supabase/migrations/20260720_seed_graphophonologie_cgp.sql` — 9 occurrences de `"mode":"single"`
  - `supabase/migrations/20260720_seed_math_vecteurs_introduction.sql` — 5 occurrences de `"mode":"single"`
  - `supabase/migrations/20260721_seed_math_aire_figures_usuelles.sql` — 5 occurrences de `"mode":"single"`
  - `supabase/migrations/20260721_seed_math_didactique_addition.sql` — 10 occurrences de `"mode":"single"`
- **Description** : Ces quatre migrations récentes (non encore committées pour deux d'entre elles) utilisent le format `expected_answer` avec `{"mode":"single","value":"..."}`. Or, les migrations précédentes ont effectué une migration vers `"mode":"single_choice"` pour normaliser ce champ (voir MIN-031 sur `normalize.ts`). Ces nouveaux seeds reviennent au format legacy. Le code de normalisation `features/exercises/shared/normalize.ts:35` accepte `"single"` comme alias de `"single_choice"`, donc les exercices fonctionnent correctement en production. Mais cela confirme que le bug MIN-031 est actif : de nouvelles données produites par l'outillage de génération continuent d'utiliser le format non normalisé. Si la branche `"single"` était un jour retirée de `normalize.ts` (supposant la DB entièrement migrée), ces 29 exercices cesseraient de fonctionner.
- **Impact** : Extension concrète de MIN-031. Pas de régression immédiate (l'alias est présent), mais accumulation de dette technique. Si la migration vers `"single_choice"` n'est pas appliquée à ces fichiers avant leur déploiement, la dette s'accroît.
- **Données pour correcteur** :
  ```sql
  -- Exemple dans 20260720_seed_graphophonologie_cgp.sql
  '{"mode":"single","value":"faux"}'::jsonb
  -- Devrait être :
  '{"mode":"single_choice","value":"faux"}'::jsonb
  ```
- **Suggestion de fix** : Mettre à jour les 4 fichiers de seed avant déploiement pour remplacer `"mode":"single"` par `"mode":"single_choice"`. Ajouter une étape de validation dans le processus de génération de contenu.

---

## Fichiers inspectés lors de cette passe (passe 9)

### Technique A — Relecture croisée des bugs existants → bugs dérivés
- `lib/stripe/server.ts` — singleton identique à CRIT-002 (MIN-041 documenté)
- `lib/supabase/client.ts` — singleton navigateur : légitime car un seul client browser par session ✓
- `features/auth/components/reset-password-form.tsx` — `router.push + router.refresh` (MIN-040 documenté)
- `features/auth/components/auth-form.tsx` — confirmé MIN-024 (déjà documenté)
- `lib/dashboard/build-dashboard-data.ts` — confirmé MAJ-005 `setHours(0,0,0,0)` toujours présent ✓
- `features/exercises/server/queries.ts` — confirmé MAJ-001 `setUTCHours` ✓
- `features/fiches/server/queries.ts` — confirmé MIN-009 `setUTCHours` ✓
- `features/exercises/server/actions.ts` — pas de race condition supplémentaire non documentée ✓
- `features/homepage/server/actions.ts` — confirmé MAJ-022 `Promise.all` sans vérif ✓

### Technique B — Audit des types retour de server actions
- `features/auth/server/actions.ts` — `signOutAction` : void avec redirect, aucun appelant ne check le retour ✓
- `features/leaderboard/server/actions.ts` — `updateDisplayNameAction` : retourne `{ success, error? }`, géré dans `display-name-form.tsx` ✓
- `features/exercises/server/actions.ts` — `submitAttemptAction` : retourne `AttemptActionState`, géré dans `exercise-player.tsx`, `sprint-player.tsx`, `swipe-player.tsx` ✓
- `features/fiches/server/actions.ts` — `markFicheReadAction` : void, appelé avec `.catch()` dans `mark-fiche-read.tsx` — comportement attendu ✓
- `features/homepage/server/actions.ts` — actions retournent void avec redirect, pas de résultat utilisé côté client ✓

### Technique C — Vérification des `key` props React
- `features/homepage/components/admin-editor.tsx` — `key={index}` sur `Array.from({length: N})` : liste de longueur fixe, jamais réordonnée → pas de bug ✓
- `features/fiches/components/fiche-pdf.tsx` — `key={index}` dans react-pdf : contexte PDF (pas de reconciliation DOM React), acceptable ✓
- `components/ui/badge-unlock-toast.tsx` — `key={toast.id}` sur liste dynamique ✓
- Aucun `key` manquant sur des `.map()` non triviaux détecté

### Technique D — Vérification des `<Image>` Next.js
- `features/homepage/components/renderer.tsx` — `fill` + `sizes="100vw"` + `priority` ✓
- `components/site-header.tsx` — `width/height` + `priority` ✓
- `components/site-footer.tsx` — `width/height` ✓ (pas de priority nécessaire — footer non-LCP)
- `components/app-shell.tsx` — `width/height` + `priority` ✓
- `components/mascot/mocca.tsx` — `fill` + `sizes` + `alt=""` (aria-hidden sur parent) ✓

### Technique E — Vérification des liens et navigations
- `/diagnostic` : route servie par `(marketing)/diagnostic/page.tsx` — le dossier `(app)/diagnostic/` est vide mais n'entre pas en conflit ✓
- `(app)/diagnostic/` vide : répertoire orphelin, pas de `page.tsx`, non problématique
- MIN-030 (`mentions-legales` : `<a>` natif vers `/politique-confidentialite`) : confirmé toujours présent ✓
- MAJ-020 (`maths/page.tsx` : `<a>` natif vers domaines) : confirmé toujours présent ✓
- Tous les autres liens internes vérifiés : routes existantes ✓

### Technique F — Robustesse des Server Components async
- `app/(app)/tableau-de-bord/page.tsx` — `Promise.all` avec `.catch(() => [])` sur SRS (acceptable — SRS non critique) ✓
- `app/(app)/fiches/page.tsx` et `fiches-maths/page.tsx` — `Promise.all` propre ✓
- `app/(app)/classement/page.tsx` — `Promise.all` propre ✓
- `features/homepage/server/actions.ts` — `Promise.all` avec erreurs ignorées (déjà documenté MAJ-022) ✓

### Technique G — Sécurité — vérification finale
- `dangerouslySetInnerHTML` : absent dans tout le codebase ✓
- `innerHTML` direct : absent ✓
- `eval(` : absent ✓
- `new Function(` : absent ✓
- Headers CORS dans les API routes : aucun header `Access-Control-*` configuré — les routes API ne sont appelées que depuis le même domaine (pas d'API publique tierce), acceptable ✓
- `process.env.X` hors `lib/env.ts` : 1 occurrence confirmée (forgot-password-form.tsx — MIN-029) ✓

### Nouvelles migrations (non committées)
- `supabase/migrations/20260720_seed_graphophonologie_cgp.sql` — format `"mode":"single"` legacy (MIN-042)
- `supabase/migrations/20260720_seed_math_vecteurs_introduction.sql` — format `"mode":"single"` legacy (MIN-042)
- `supabase/migrations/20260721_seed_math_aire_figures_usuelles.sql` — format `"mode":"single"` legacy (MIN-042)
- `supabase/migrations/20260721_seed_math_didactique_addition.sql` — format `"mode":"single"` legacy (MIN-042)
