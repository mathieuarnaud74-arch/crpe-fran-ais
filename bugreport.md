# Bug Report — CRPE Prep Platform

<!-- METADATA (pour agents ultérieurs)
report_id: bugreport-2026-03-23
date: 2026-03-23
author: Claude Sonnet 4.6 (mode lecture seule, via loop agent)
project: CRPE Prep Platform
stack: Next.js 15 / TypeScript 5 / Supabase / Stripe / Tailwind
git_branch: main
git_commit: fcca7fb (HEAD au moment de l'audit)
tools_run: [npm run typecheck, npm run lint, npm run build]
total_bugs: 42
critical: 3
major: 9
minor: 30
status: OPEN (aucun fix appliqué — rapport en lecture seule)
last_audit: 2026-03-23 audit #2

## Index rapide des bugs (pour recherche agent)
| ID | Sévérité | Fichier principal | Mot-clé |
|----|----------|-------------------|---------|
| BUG-001 | MAJEUR | app/(app)/exercices/[id]/page.tsx:74 | getExercises, subject, maths, série suivante |
| BUG-002 | CRITIQUE | lib/rate-limit.ts | rate-limit, serverless, cold-start, sécurité |
| BUG-003 | MAJEUR | lib/supabase/admin.ts:6 | singleton, admin-client, stale |
| BUG-004 | MAJEUR | features/exercises/server/queries.ts:454 | fuseau-horaire, UTC, Paris, quota |
| BUG-005 | MINEUR | app/api/stripe/checkout/route.ts:64 | isLimitedAccess, variable-inutilisée, stripe |
| BUG-006 | MINEUR | features/gamification/context.tsx:38 | addXp, race-condition, level-up |
| BUG-007 | MINEUR | features/diagnostic/components/diagnostic-client.tsx:142 | subdomains, tri, ordre |
| BUG-008 | MINEUR | features/exercises/components/exercise-player.tsx:741 | timeout, expectedAnswerLabel, review |
| BUG-009 | MINEUR | features/exercises/components/sprint-player.tsx:100 | XP, dailyStreak, multiplicateur |
| BUG-010 | MINEUR | features/exercises/server/queries.ts:398 | getExerciseSessionById, performance, double-requête |
| BUG-011 | MINEUR | features/dashboard/server/queries.ts:30 | limit-500, statistiques, pagination |
| BUG-012 | MINEUR | features/exercises/components/exercise-player.tsx:647 | aria, accessibilité, accordéon |
| BUG-013 | MINEUR | components/ui/badge-unlock-toast.tsx:26 | deprecated, earnedBadges, dead-code |
| BUG-014 | MINEUR | lib/env.ts:27 | NaN, Number, FREE_DAILY_QUESTION_LIMIT |
| BUG-015 | MINEUR | app/(app)/tableau-de-bord/page.tsx:6 | import-order, convention |
| BUG-016 | MINEUR | app/(app)/exercices/[id]/page.tsx:87 | duplication, remainingFreeQuestions |
| BUG-017 | MINEUR | features/exercises/components/exercise-player.tsx:160 | eslint-disable, caduque |
| BUG-018 | MAJEUR | .next/ (local) | cache-corrompu, build-échec, ENOENT |
| BUG-019 | MINEUR | features/badges/server/queries.ts:62 | syncBadges, RLS, admin-client |
| BUG-020 | MINEUR | app/(app)/progression/page.tsx:5 | import-order, metadata, convention |
| BUG-021 | CRITIQUE | app/api/stripe/checkout/route.ts:92 | daily-weekly, subscription-récurrente, rechargement-stripe |
| BUG-022 | MAJEUR | features/exercises/server/actions.ts:57 | streak-client, formdata, xp-manipulation |
| BUG-023 | MAJEUR | features/srs/server/queries.ts:95 | race-condition, insert, srs_cards |
| BUG-024 | MINEUR | app/api/stripe/webhook/route.ts:80 | dead-code, payment-mode, one-time |
| BUG-025 | MINEUR | features/auth/server/guards.ts:26 | requireAdmin, deux-appels-DB, performance |
| BUG-026 | MINEUR | lib/xp.ts:62 | getXpForNextLevel, niveau-max-20, progression-fantôme |
| BUG-027 | MINEUR | lib/constants.ts:35 | FRENCH_DASHBOARD_SUBDOMAINS, doublon, dead-code |
| BUG-028 | MINEUR | lib/freemium.ts:5 | getDailyRemainingQuota, Infinity, JSON-null, premium |
| BUG-029 | MINEUR | lib/dashboard.ts:97 | getStatus, en_cours, non_commencee, ambiguïté |
| BUG-030 | MINEUR | features/leaderboard/server/actions.ts | updateDisplayNameAction, rate-limit, spam |
| BUG-031 | MINEUR | features/gamification/server/queries.ts:141 | updateSprintPersonalBest, race-condition |
| BUG-032 | MAJEUR | features/diagnostic/server/queries.ts:21 | subdomains, schema-mismatch, cast-as, mastery-undefined |
| BUG-033 | MINEUR | features/auth/components/auth-form.tsx:56 | guest-diagnostic, signup, localStorage-perdu |
| BUG-034 | MINEUR | features/onboarding/components/onboarding-tour-wrapper.tsx:24 | userId-body, ignoré-serveur, fuite-info |
| BUG-035 | MINEUR | features/diagnostic/components/diagnostic-client.tsx:119 | summaries, useMemo, recalcul-render |
| BUG-036 | CRITIQUE | supabase/migrations/ (147 fichiers math) | mode-single, single_choice, QCM-math-cassés, TypeError |
| BUG-037 | MINEUR | lib/srs.ts:16 | ratingFromAnswer, Hard-jamais-utilisé, FSRS-simplifié |
| BUG-038 | MINEUR | features/exercises/server/queries.ts:415 | getAttemptsForHistory, limit-0, falsy-check |
| BUG-039 | MINEUR | types/domain.ts:302 | DashboardData.remainingToday, number-type, Infinity-possible |
| BUG-040 | MINEUR | content/french-diagnostic-questions.ts:52 | comprehension_texte, href-incorrect, analyse-de-la-langue |
| BUG-041 | MAJEUR | features/exercises/components/sprint-player.tsx:97 | evaluateExerciseAnswer, mode-single, crash-client, no-try-catch |
| BUG-042 | MINEUR | lib/env.ts:44 | isStripeConfigured, price-placeholder, VALID_PRICES, config-partielle |

## Instructions pour agent de correction
- Chaque bug est identifié par un ID (BUG-001 à BUG-017), un fichier + numéro de ligne, et des mots-clés
- Les bugs CRITIQUE et MAJEUR doivent être corrigés en priorité
- Après correction, mettre à jour le champ `status` du bug concerné dans ce fichier
- Vérifier avec `npm run typecheck && npm run lint && npm run build` après chaque correction
-->

Date : 2026-03-23
Analysé par : Claude Sonnet 4.6 (mode lecture seule)

---

## Résumé des résultats automatisés

| Outil | Résultat |
|---|---|
| `npm run typecheck` | **0 erreur** |
| `npm run lint` | **0 erreur / 2 avertissements** |
| `npm run build` | **Succès** |

---

## 1. Erreurs ESLint

### [MINEUR] `exercise-player.tsx` — directive `eslint-disable` inutile

**Fichier :** `features/exercises/components/exercise-player.tsx` — ligne 160
**Description :** La directive `// eslint-disable-next-line react-hooks/exhaustive-deps` est présente mais ESLint ne signale aucun problème sur cette ligne. Elle est donc devenue caduque (le hook `useMemo` dépend de `results` et `session.id` seulement, ce qui est correct).
**Impact :** Cosmétique — peut masquer une vraie erreur future si la logique change.

---

### [MINEUR] `context.tsx` — dépendance `gamification.xp` superflue dans `useCallback`

**Fichier :** `features/gamification/context.tsx` — ligne 52
**Description :** Le hook `addXp` déclare `[gamification.level, gamification.xp]` dans son tableau de dépendances. La lecture de `gamification.xp` directement dans le corps du callback (plutôt que via le setter fonctionnel `prev.xp`) était peut-être intentionnelle, mais la dépendance sur `gamification.xp` est signalée inutile par ESLint car la valeur de `xp` est de toute façon lue via `prev.xp` dans le setter. L'effet concret est que `addXp` est recréé à chaque gain d'XP, invalidant potentiellement des mémos inutilement.
**Impact :** Performance mineure — recrée les closures consommatrices à chaque changement d'XP.

---

## 2. Bugs logiques

### [MAJEUR] `exercices/[id]/page.tsx` — `getExercises` appelé sans `subject` pour les maths

**Fichier :** `app/(app)/exercices/[id]/page.tsx` — ligne 74
**Code :**
```ts
getExercises({ subdomain: session.subdomain }),
```
**Description :** Quand un utilisateur ouvre une série de maths (ex. `geometrie`), la page utilise `session.subdomain` pour récupérer les séries du même sous-domaine afin de proposer la "série suivante". Or `getExercises` n'utilise que le filtre `subdomain` sans spécifier de `subject`. La fonction `fetchAllExercises` utilise alors `DEFAULT_SUBJECT = "Francais"`. Résultat : pour toute série mathématique, la variable `allSessions` sera vide (aucun exercice maths n'a `subject = "Francais"`), et `nextSession` sera systématiquement `null`. Le bouton "Série suivante" n'apparaît donc jamais pour les maths.

`getSubjectFromSubdomain()` existe dans `lib/constants.ts` et pourrait résoudre ce problème.

**Impact :** Bug fonctionnel — la navigation entre séries est cassée pour toutes les séries mathématiques.

---

### [MAJEUR] `lib/rate-limit.ts` — rate limiter in-memory inefficace en serverless

**Fichier :** `lib/rate-limit.ts`
**Description :** Le rate limiter utilise un `Map` en mémoire du processus Node.js. Sur Vercel (ou tout déploiement serverless/edge), chaque invocation de fonction peut instancier un processus distinct. Le `store` est donc réinitialisé à chaque cold start, et aucun état n'est partagé entre les instances. En pratique :
- Un utilisateur peut contourner la limite en atteignant une instance différente.
- Le `setInterval` de nettoyage (ligne 11) tourne dans un contexte qui peut être détruit immédiatement.

**Impact :** Contournement possible des limites de requêtes (anti-bruteforce checkout/diagnostic). En production, la protection est illusoire.

---

### [MAJEUR] `lib/supabase/admin.ts` — singleton admin client dangereux en serverless

**Fichier :** `lib/supabase/admin.ts` — ligne 6
**Code :**
```ts
let adminClient: ReturnType<typeof createClient<Database>> | null = null;
```
**Description :** Le client Supabase admin est stocké dans une variable de module (`let adminClient`). En serverless, cette variable peut survivre entre plusieurs requêtes au sein d'une même instance chaude, ce qui est généralement inoffensif. Cependant, si la clé de service (`SUPABASE_SERVICE_ROLE_KEY`) est changée ou en cas de reconnexion réseau, le client stale persistera. Surtout, si deux requêtes simultanées initialisent le singleton en parallèle (race condition de démarrage), deux clients peuvent coexister temporairement.
**Impact :** Risque faible mais réel en production haute charge — fuite de connexions Supabase, comportement inattendu si la clé est rotée.

---

### [MAJEUR] `getAttemptsCountToday` — fuseau horaire serveur au lieu de Paris

**Fichier :** `features/exercises/server/queries.ts` — lignes 454-455
**Code :**
```ts
const startOfDay = new Date();
startOfDay.setHours(0, 0, 0, 0);
```
**Description :** Le calcul du début de journée utilise le fuseau local du serveur (UTC sur Vercel). Si le serveur est en UTC et l'utilisateur en France (UTC+1 ou UTC+2 en été), le quota se réinitialise à minuit UTC (1h ou 2h du matin heure française) et non à minuit heure de Paris. Cela crée une incohérence avec `getParisToday()` utilisée dans le système de streak (qui elle utilise correctement `Europe/Paris`).

Pour comparaison, `getParisToday()` dans `lib/daily-streak.ts` utilise `toLocaleDateString("en-CA", { timeZone: "Europe/Paris" })`.

**Impact :** Les quotas gratuits se réinitialisent à une heure incorrecte pour les utilisateurs français — problème d'UX notable.

---

### [MINEUR] `checkout/route.ts` — variable `isLimitedAccess` déclarée mais jamais utilisée

**Fichier :** `app/api/stripe/checkout/route.ts` — lignes 64-66
**Code :**
```ts
const isLimitedAccess =
  priceId === env.stripePricePremiumDailyId ||
  priceId === env.stripePricePremiumWeeklyId;
```
**Description :** La variable `isLimitedAccess` est calculée mais n'est jamais lue dans la suite de la route. L'intention originale était probablement de passer `cancel_at_period_end: true` pour les accès journaliers et semainiers, ou de configurer une durée de souscription limitée. L'absence d'utilisation suggère une fonctionnalité incomplète ou abandonnée. En l'état, les plans "journalier" et "semainier" sont créés comme des souscriptions récurrentes normales via Stripe, sans distinction technique vis-à-vis du mensuel.

**Impact :** Fonctionnalité de paiement incomplète — les accès "journalier" et "semainier" se comportent comme des abonnements mensuels au niveau Stripe si les prix sont configurés en récurrent.

---

### [MINEUR] `gamification/context.tsx` — `addXp` peut retourner `newLevel` incorrect

**Fichier :** `features/gamification/context.tsx` — lignes 38-52
**Description :** La fonction `addXp` utilise une fermeture sur `gamification.level` pour comparer le niveau. Or le setter `setGamification` est asynchrone (React batche les mises à jour). Si `addXp` est appelée deux fois rapidement :
1. Première appel : lit `gamification.level = 1`, calcule `newLevel = 2`, retourne `{ leveledUp: true, newLevel: 2 }`.
2. Deuxième appel (avant que React ait rebatché) : lit encore `gamification.level = 1` (ancien), peut retourner `leveledUp = true` à tort.

Note : `addXp` n'est pas utilisée dans le code actuel (l'XP est mis à jour via le serveur), mais elle reste dans l'API publique du contexte.

**Impact :** Bug latent — pourrait déclencher des effets sonores/visuels de level-up en doublon si `addXp` était utilisée côté client.

---

### [MINEUR] `diagnostic-client.tsx` — `subdomains` envoyés dans l'ordre trié, pas dans l'ordre des questions

**Fichier :** `features/diagnostic/components/diagnostic-client.tsx` — lignes 142-155, 182-190
**Description :** Les `subdomainSummaries` sont triés par mastery (prioritaire → a_consolider → solide) avant d'être envoyés à l'API `/api/diagnostic/complete`. L'objet `DiagnosticResult.subdomains` persiste donc dans un ordre différent de l'ordre naturel du diagnostic, ce qui est cohérent pour l'affichage mais peut surprendre lors d'une lecture directe en base (par un admin ou un script).
**Impact :** Cosmétique / DX — aucun impact fonctionnel visible en prod.

---

### [MINEUR] `exercise-player.tsx` — timed mode : réponse correcte avec `expectedAnswerLabel` vide

**Fichier :** `features/exercises/components/exercise-player.tsx` — lignes 741-752
**Description :** Quand le timer expire sans réponse, le joueur est marqué `isCorrect: false` avec `expectedAnswerLabel: ""`. Lors de l'affichage de la révision en fin de session, la ligne "Réponse attendue :" sera vide pour ces questions. C'est différent du cas normal où `buildExpectedAnswerLabel` est appelé.
**Impact :** UX — les questions "timeout" n'affichent pas la bonne réponse en révision.

---

### [MINEUR] `sprint-player.tsx` — XP calculé sans `dailyStreak`

**Fichier :** `features/exercises/components/sprint-player.tsx` — ligne 100
**Code :**
```ts
const xp = calculateXpEarned(evaluation.isCorrect, streak, timeMs, "sprint");
```
**Description :** Le calcul d'XP local dans le sprint-player n'inclut pas le `dailyStreak` comme multiplicateur (6ème paramètre de `calculateXpEarned` — par défaut `0`). En revanche, le serveur (`submitAttemptAction`) le calcule correctement avec le `currentDailyStreak` réel. Cela crée une légère divergence entre l'XP affiché localement (optimiste) et l'XP réellement persisté.
Ce même problème existe dans `exercise-player.tsx` ligne 184 : `calculateXpEarned(evaluation.isCorrect, evaluation.isCorrect ? consecutiveCorrect : 0, timeSpentMs, mode)` — sans `dailyStreak`.
**Impact :** UX — l'affichage local de l'XP gagné peut légèrement sous-estimer l'XP réel pour les utilisateurs avec un streak actif.

---

## 3. Problèmes de sécurité

### [CRITIQUE] `lib/rate-limit.ts` — rate limiter non persisté (voir §2 ci-dessus)

Répété ici car l'implication sécurité est la plus importante : les routes `/api/stripe/checkout`, `/api/diagnostic/complete` et `/api/gamification/*` sont censées être protégées contre les abus. En serverless multi-instance, cette protection n'est pas effective.

---

### [MAJEUR] `lib/supabase/admin.ts` — clé service_role utilisable si la variable d'env est exposée côté client

**Fichier :** `lib/supabase/admin.ts`
**Description :** La variable `SUPABASE_SERVICE_ROLE_KEY` n'a pas de préfixe `NEXT_PUBLIC_` et ne devrait donc pas être exposée. Le code est correct de ce côté. Cependant, `createSupabaseAdminClient()` est appelée uniquement dans des route handlers (`/api/stripe/*`), ce qui est approprié. Aucune fuite détectée.
**Impact :** Aucun — mentionné pour confirmation.

---

### [MINEUR] `leaderboard/server/actions.ts` — display_name sans sanitisation XSS

**Fichier :** `features/leaderboard/server/actions.ts`
**Description :** Le pseudo est validé uniquement sur la longueur (2-30 caractères). Un utilisateur peut soumettre un pseudo contenant des caractères HTML (`<script>`, `"`, `'`). Ces caractères ne sont dangereux qu'en contexte d'affichage non-échappé. En React, les props de texte sont échappées automatiquement, donc le risque XSS réel est faible. Mais si le pseudo est un jour affiché en dehors de React (email, PDF), il pourrait causer des problèmes.
**Impact :** Risque très faible dans le contexte React actuel.

---

## 4. Problèmes de performance

### [MINEUR] `getExerciseSessionById` — double requête complète inutile

**Fichier :** `features/exercises/server/queries.ts` — lignes 398-405
**Code :**
```ts
export async function getExerciseSessionById(id: string) {
  const frenchSessions = await getExercises({ subject: "Francais" });
  const found = frenchSessions.find((session) => session.id === id);
  if (found) return found;
  const mathSessions = await getExercises({ subject: "Mathematiques" });
  return mathSessions.find((session) => session.id === id) ?? null;
}
```
**Description :** Pour trouver une session par ID, la fonction charge d'abord toutes les sessions françaises (potentiellement des centaines), puis si non trouvée, toutes les maths. Les sessions sont mises en cache par `React.cache()` mais uniquement par clé de filtres. Deux appels successifs `getExerciseSessionById` dans la même requête HTTP feront potentiellement deux fetches DB complets.
**Impact :** Performance — latence accrue pour les pages exercice. Mitigé par le cache React, mais peut être coûteux en cold start.

---

### [MINEUR] `getDashboardData` — limite des 500 tentatives en dur

**Fichier :** `features/dashboard/server/queries.ts` — ligne 30
**Code :**
```ts
.limit(500)
```
**Description :** Le dashboard ne charge que les 500 dernières tentatives. Un utilisateur très actif (>500 tentatives) aura des statistiques partielles : taux de réussite incorrect, badges potentiellement mal calculés, sessions "en cours" manquantes.
**Impact :** Bug silencieux pour les utilisateurs avancés — statistiques faussées au-delà de 500 tentatives.

---

## 5. Problèmes d'accessibilité

### [MINEUR] `exercise-player.tsx` — boutons de review non labellisés

**Fichier :** `features/exercises/components/exercise-player.tsx` — lignes 647-692
**Description :** En fin de série, chaque question de révision est rendue comme un `<button>` avec le contenu de la question en texte. Le bouton n'a pas d'attribut `aria-label` explicite ni `aria-expanded`. Un lecteur d'écran lira le texte brut de la question, mais sans indiquer l'état ouvert/fermé du panneau.
**Impact :** Accessibilité partielle — lecteurs d'écran ne peuvent pas annoncer l'état de l'accordéon.

---

### [MINEUR] `badge-unlock-toast.tsx` — `@deprecated earnedBadges` toujours déclaré dans l'interface

**Fichier :** `components/ui/badge-unlock-toast.tsx` — ligne 26
**Code :**
```ts
/** @deprecated Use newlyUnlockedBadges instead */
earnedBadges?: EarnedBadge[];
```
**Description :** La prop dépréciée `earnedBadges` est déclarée mais son corps ne fait rien avec elle. Elle est documentée comme dépréciée mais reste dans l'API publique. Elle n'est appelée nulle part dans le code actuel, mais sa présence peut confondre.
**Impact :** DX/maintenance — dead code dans l'API publique du composant.

---

## 6. Incohérences de code

### [MINEUR] `env.ts` — `Number()` peut produire `NaN` si `FREE_DAILY_QUESTION_LIMIT` est une chaîne invalide

**Fichier :** `lib/env.ts` — ligne 27
**Code :**
```ts
freeDailyQuestionLimit: Number(process.env.FREE_DAILY_QUESTION_LIMIT ?? 20),
```
**Description :** Si `FREE_DAILY_QUESTION_LIMIT` est défini à une valeur non numérique (ex. `"abc"`), `Number("abc")` retourne `NaN`. Toutes les comparaisons `attemptsToday < NaN` retourneront `false`, bloquant tous les utilisateurs gratuits. Le fallback `?? 20` ne s'applique que si la variable est `undefined`, pas si elle est une chaîne invalide. Recommandé : `Number(process.env.FREE_DAILY_QUESTION_LIMIT) || 20` ou une validation Zod.
**Impact :** Critique si mal configuré — tous les utilisateurs gratuits bloqués.

---

### [MINEUR] `tableau-de-bord/page.tsx` — import placé après une déclaration d'export

**Fichier :** `app/(app)/tableau-de-bord/page.tsx` — lignes 6-36
**Description :** Le fichier déclare `export const metadata` à la ligne 6 puis continue avec des imports à la ligne 10. TypeScript/ESLint ne rejette pas cela (les imports sont hoistés), mais c'est contraire à la convention (imports en haut, puis exports). Même pattern dans `app/(app)/historique/page.tsx` et `app/(app)/profil/page.tsx`.
**Impact :** Cosmétique — aucun impact runtime.

---

### [MINEUR] Double calcul du `remainingFreeQuestions` dans `exercices/[id]/page.tsx`

**Fichier :** `app/(app)/exercices/[id]/page.tsx` — lignes 87 et 94
**Description :** `Math.max(env.freeDailyQuestionLimit - attemptsToday, 0)` est calculé manuellement alors que `getDailyRemainingQuota()` de `lib/freemium.ts` fait exactement la même chose. La fonction utilitaire est ignorée ici.
**Impact :** Cosmétique — duplication de logique, risque de divergence future.

---

## 7. Problèmes dans les migrations SQL

### [MINEUR] `20260787_create_user_badges.sql` — index redondant avec la PK

**Fichier :** `supabase/migrations/20260787_create_user_badges.sql` — ligne 13
**Description :** La table a une clé primaire composite `(user_id, badge_id)`. Postgres crée automatiquement un index B-tree sur la PK, qui couvre les recherches par `user_id` (première colonne). L'index `idx_user_badges_user_id` est donc redondant.
**Impact :** Overhead de stockage mineur. Pas de bug fonctionnel.

---

## 8. Problèmes d'environnement / build

### [MAJEUR — NOUVEAU] BUG-018 : Cache `.next` corrompu — build échoue

**Date de détection :** 2026-03-23 (audit #2)
**Erreur :** `ENOENT: no such file or directory, '...\.next\server\pages-manifest.json'`
**Description :** Le dossier `.next` contient un état partiel/corrompu. `npm run build` échoue. Solution : supprimer `.next/` et relancer le build.
**Impact :** Bloquant localement. Le dossier est dans `.gitignore`, pas persisté en Git.

---

### [MINEUR] BUG-019 : `syncBadges` utilise le client serveur (pas admin) pour l'INSERT

**Fichier :** `features/badges/server/queries.ts` — ligne 62
**Description :** `syncBadges` utilise `createSupabaseServerClient()` (RLS). Fonctionne car l'utilisateur insère ses propres badges. Mais si appelée hors contexte utilisateur (cron, webhook), les INSERT échoueront silencieusement.
**Impact :** Latent — fragilité architecturale si le contexte d'appel change.

---

### [MINEUR] BUG-020 : `progression/page.tsx` — imports après `export const metadata`

**Fichier :** `app/(app)/progression/page.tsx` — lignes 5-9
**Description :** Même pattern que BUG-015. Fichier supplémentaire affecté.
**Impact :** Cosmétique.

---

## 10. Nouveaux findings — Audit #3 (2026-03-23)

### [CRITIQUE] BUG-021 : Plans daily/weekly créés comme subscriptions récurrentes — rechargement Stripe automatique

**Fichier :** `app/api/stripe/checkout/route.ts` — ligne 92
**Code :**
```ts
mode: "subscription",  // toujours, même pour les plans daily/weekly
```
**Description :** Le checkout crée toujours une session en `mode: "subscription"`. Or les plans "journalier" et "semainier" sont censés être des accès one-time. En pratique, Stripe crée un abonnement récurrent qui recharge la carte de l'utilisateur chaque jour/semaine indéfiniment. La variable `isLimitedAccess` (BUG-005) qui aurait dû déclencher `cancel_at_period_end: true` n'est jamais utilisée. Le webhook détecte le priceId et calcule un `current_period_end` correct dans notre DB, mais Stripe continue de recharger le client côté plateforme.
**Impact :** CRITIQUE — bug financier. Les utilisateurs ayant souscrit un accès "journalier" ou "semainier" sont rechargés indéfiniment tant qu'ils n'annulent pas manuellement leur abonnement Stripe.

---

### [MAJEUR] BUG-022 : Valeur `streak` fournie par le client — manipulation XP possible

**Fichier :** `features/exercises/server/actions.ts` — ligne 57
**Code :**
```ts
const streak = formData.get("streak") ? Number(formData.get("streak")) : 0;
```
**Description :** La valeur `streak` (nombre de réponses consécutives correctes) est lue depuis le FormData côté client. Elle est utilisée pour calculer le bonus XP (`calculateXpEarned`) et est persistée dans `current_streak` en base. Un utilisateur malveillant peut intercepter la requête et envoyer `streak=999` pour obtenir un XP astronomique et un streak artificiel en base.
**Impact :** Sécurité — manipulation du classement et des badges streak. Le streak réel devrait être recalculé côté serveur.

---

### [MAJEUR] BUG-023 : Race condition INSERT sur `srs_cards`

**Fichier :** `features/srs/server/queries.ts` — lignes 95–114
**Description :** `getOrCreateSrsCard` fait d'abord un `SELECT`, puis si aucun enregistrement n'est trouvé retourne `isNew: true`. `recordSrsReview` fait ensuite un `INSERT`. Si deux requêtes simultanées (ex : double-clic sur "Valider") exécutent ce code en parallèle, toutes deux trouvent `isNew: true` et tentent d'`INSERT`. La deuxième échouera sur la contrainte d'unicité `(user_id, exercise_id)`. Cette erreur est silencieusement avalée par le `catch` dans `submitAttemptActionInner` (ligne 161).
**Impact :** Majeur — la revue SRS est perdue silencieusement en cas de double soumission. Utiliser `upsert` à la place résoudrait le problème.

---

### [MINEUR] BUG-024 : Branch `session.mode === "payment"` dans le webhook est du dead code

**Fichier :** `app/api/stripe/webhook/route.ts` — ligne 80
**Description :** Le webhook gère le cas `session.mode === "payment"` pour les achats one-time, mais le checkout crée toujours des sessions en `mode: "subscription"`. Cette branche ne sera jamais atteinte avec l'implémentation actuelle.
**Impact :** Dead code — peut induire en erreur lors de futures modifications.

---

### [MINEUR] BUG-025 : `requireAdmin` fait 2 appels DB séquentiels

**Fichier :** `features/auth/server/guards.ts` — lignes 24–38
**Description :** `requireAdmin` appelle d'abord `requireUser()` (qui fait un `supabase.auth.getUser()`), puis crée un second client Supabase pour lire le profil. Ces deux appels pourraient être fusionnés. En l'état, chaque accès admin fait 2 round-trips DB.
**Impact :** Performance mineure — pas de bug fonctionnel.

---

## 11. Nouveaux findings — Audit #4 (2026-03-23)

### [MINEUR] BUG-026 : `getXpForNextLevel` — barre de progression fantôme au niveau 20

**Fichier :** `lib/xp.ts` — ligne 70
**Code :**
```ts
const nextThreshold = LEVEL_THRESHOLDS[level] ?? LEVEL_THRESHOLDS[LEVEL_THRESHOLDS.length - 1] + 5000;
```
**Description :** `LEVEL_THRESHOLDS` a 20 entrées (niveaux 1–20). Quand un utilisateur est niveau 20, `LEVEL_THRESHOLDS[20]` est `undefined`, donc `nextThreshold = 36000 + 5000 = 41000`. La fonction retourne `xpNeededForNext = 5000` et une `progress` calculée à partir de cet échelon fictif. L'UI affichera une barre de progression vers un "niveau 21" qui n'existe pas dans `XP_LEVEL_LABELS`.
**Impact :** UX — les utilisateurs max-level voient une progression vers un niveau fantôme sans label.

---

### [MINEUR] BUG-027 : `FRENCH_DASHBOARD_SUBDOMAINS` — doublon de `DASHBOARD_SUBDOMAINS`

**Fichier :** `lib/constants.ts` — lignes 35–43
**Description :** `FRENCH_DASHBOARD_SUBDOMAINS` (type `FrenchSubdomain[]`) contient exactement les mêmes 7 valeurs que `DASHBOARD_SUBDOMAINS` (type `ExerciseSubdomain[]`). Seul `DASHBOARD_SUBDOMAINS` est importé et utilisé dans `lib/dashboard.ts`. `FRENCH_DASHBOARD_SUBDOMAINS` n'est jamais importé ailleurs.
**Impact :** Dead code — risque de divergence future si l'un est mis à jour et pas l'autre.

---

### [MINEUR] BUG-028 : `getDailyRemainingQuota` retourne `Infinity` — non-sérialisable JSON

**Fichier :** `lib/freemium.ts` — ligne 5
**Description :** Pour les utilisateurs premium, la fonction retourne `Infinity`. Ce nombre ne peut pas être sérialisé en JSON (`JSON.stringify(Infinity) === "null"`). Le champ `remainingToday: Infinity` dans `DashboardData` devient `null` quand Next.js serialise les props entre Server et Client Components. Les deux usages actuels (`profil/page.tsx:106` et `tableau-de-bord/page.tsx:399`) sont protégés par `premium ? "Illimité" : data.remainingToday`, donc aucun bug visible actuellement.
**Impact :** Latent — tout nouvel usage de `data.remainingToday` sans guard premium recevra `null` au lieu de `Infinity`.

---

### [MINEUR] BUG-029 : `getStatus` retourne `"en_cours"` pour les sous-domaines non démarrés

**Fichier :** `lib/dashboard.ts` — lignes 97–99
**Code :**
```ts
if (totalSeries === 0 || attempts === 0) {
  return "en_cours";
}
```
**Description :** Un sous-domaine avec `attempts === 0` (jamais commencé) est classé `"en_cours"`. Or `getSessionStatus` distingue bien `"non_commencee"` quand `answeredQuestions === 0`. Cette incohérence fait que dans la vue domaines/sous-domaines, les sections non démarrées apparaissent avec le statut "en cours" au lieu d'un statut "non commencé". Le tri `STATUS_ORDER` ne contient pas `"non_commencee"`, ce qui confirme que le type `ProgressStatus` ne prévoit pas ce cas.
**Impact :** UX — les sous-domaines non démarrés sont mélangés avec ceux en cours dans l'affichage.

---

### [MINEUR] BUG-030 : `updateDisplayNameAction` — aucun rate limiting

**Fichier :** `features/leaderboard/server/actions.ts` — ligne 8
**Description :** La Server Action `updateDisplayNameAction` n'applique aucun rate limiting. Un script peut spammer des changements de pseudo sans délai. Contrairement aux routes API (`/api/stripe/checkout`, etc.) qui utilisent toutes `rateLimit()`, cette action est sans protection.
**Impact :** Abus possible — spam de changements de pseudo, pollution des logs.

---

### [MINEUR] BUG-031 : `updateSprintPersonalBest` — race condition sur le record

**Fichier :** `features/gamification/server/queries.ts` — ligne 141
**Description :** La vérification `getUserGamification` puis `update` n'est pas atomique. Deux requêtes simultanées (ex : double-clic en fin de sprint) peuvent toutes deux lire le même `personal_best_sprint_time`, toutes deux conclure qu'elles établissent un nouveau record, et retourner `isNewRecord: true` deux fois. L'animation "Nouveau record !" sera déclenchée en double.
**Impact :** UX — faux positif sur l'animation de record personnel.

---

## 13. Nouveaux findings — Audit #5 (2026-03-23)

### [MAJEUR] BUG-032 : `diagnostic_results.subdomains` — mismatch de schéma entre stockage et lecture

**Fichiers :** `app/api/diagnostic/complete/route.ts` (écriture) + `features/diagnostic/server/queries.ts:21` (lecture)
**Description :** Le schéma Zod de l'API stocke les sous-domaines sous forme d'un **objet indexé** `{ [key]: { score, total, label? } }`. Mais `getDiagnosticResult` lit ce JSON et le caste directement en `DiagnosticSubdomainResult[]` (un **tableau** avec des champs `mastery`, `recommendation`, `href`, `correct` qui ne sont jamais stockés).
```ts
// Stocké en DB :
{ "grammaire": { score: 3, total: 5, label: "Grammaire" }, ... }

// Lu et casté comme :
Array<{ key, label, href, correct, total, mastery, recommendation }>
```
Le cast `as DiagnosticResult["subdomains"]` masque l'erreur TypeScript. Toute page qui affiche les résultats du diagnostic d'un utilisateur existant accèdera à `subdomain.mastery` → `undefined`, `subdomain.href` → `undefined`, etc.
**Impact :** Bug fonctionnel visible — la page de résultats du diagnostic affiche des données incomplètes ou crashe pour les utilisateurs ayant déjà un diagnostic en base.

---

### [MINEUR] BUG-033 : Diagnostic invité perdu à l'inscription (signup)

**Fichier :** `features/auth/components/auth-form.tsx` — ligne 56
**Description :** Quand un invité complète le diagnostic puis crée un compte (`mode === "signup"`), le résultat sauvegardé dans `localStorage("guest_diagnostic_result")` n'est **jamais** relu. La récupération du diagnostic invité n'est implémentée que dans le chemin `signInWithPassword` (login). Un nouvel utilisateur qui vient de créer un compte après le diagnostic perd donc ses résultats.
**Impact :** UX — les nouveaux inscrits perdent systématiquement leur diagnostic invité.

---

### [MINEUR] BUG-034 : `OnboardingTourWrapper` expose `userId` dans le corps de la requête inutilement

**Fichier :** `features/onboarding/components/onboarding-tour-wrapper.tsx` — ligne 24
**Code :**
```ts
body: JSON.stringify({ userId }),
```
**Description :** L'API `/api/gamification/onboarding` n'utilise pas le corps de la requête — elle lit l'utilisateur via `supabase.auth.getUser()`. Le `userId` envoyé en body est donc ignoré côté serveur, mais il est quand même visible dans les logs réseau / DevTools. Fuite d'information mineure et appel potentiellement trompeur pour les futurs développeurs.
**Impact :** Sécurité mineure / DX — userId exposé dans le body sans raison.

---

### [MINEUR] BUG-035 : `diagnostic-client.tsx` — `summaries` recalculé à chaque render

**Fichier :** `features/diagnostic/components/diagnostic-client.tsx` — ligne 119
**Description :** Le calcul de `summaries` (et `subdomainSummaries`) itère toutes les questions à chaque render. Or ce composant re-rend à chaque sélection de réponse (mise à jour de `answers`). Sans `useMemo`, le calcul est refait inutilement même si aucune réponse n'a changé pour un sous-domaine donné. Avec `FRENCH_DIAGNOSTIC_SESSION_SIZE` questions, l'impact est faible mais non nul.
**Impact :** Performance mineure.

---

## 15. Nouveaux findings — Audit #6 (2026-03-23)

### [CRITIQUE] BUG-036 : `"mode":"single"` non corrigé dans 147 fichiers de seeds maths — crash QCM

**Fichiers :** `supabase/migrations/20260*.sql` (147 fichiers math seed)
**Contexte :** Le commit `ba08d7d` a corrigé le mode `"single"` → `"single_choice"` dans 39 fichiers seed **français**. Mais **tous les seeds maths** (147 fichiers, 740 occurrences) utilisent encore l'ancien mode `"mode":"single"`.
**Impact runtime :** `evaluateExerciseAnswer` ne reconnaît pas `mode === "single"` (attend `"single_choice"`). La fonction tombe en mode texte et appelle `expectedAnswer.acceptableAnswers.some(...)` sur `undefined` → `TypeError`. Idem dans `buildExpectedAnswerLabel` qui appelle `acceptableAnswers.join()`. L'erreur est interceptée par le `try/catch` de `submitAttemptAction` qui retourne `"Une erreur inattendue est survenue."`.
**Résultat visible :** Toutes les questions QCM des séries de maths retournent une erreur au lieu d'être évaluées. Les exercices maths de type `qcm` sont fonctionnellement cassés en production.
**Commande de vérification :**
```bash
grep -rl '"mode":"single"[^_]' supabase/migrations/ --include="*.sql" | wc -l
# → 147 fichiers
```

---

### [MINEUR] BUG-037 : `ratingFromAnswer` — rating FSRS `Hard` jamais utilisé

**Fichier :** `lib/srs.ts` — ligne 16
**Description :** FSRS supporte 4 ratings : `Again`, `Hard`, `Good`, `Easy`. La fonction `ratingFromAnswer` n'utilise que `Again` (incorrect), `Easy` (correct < 10s), et `Good` (correct sinon). Le rating `Hard` (réponse difficile mais correcte) n'est jamais retourné. Cela simplifie le modèle de répétition espacée — les révisions espacées sont sous-optimales pour les questions répondues lentement.
**Impact :** SRS moins précis — pas de bug fonctionnel.

---

### [MINEUR] BUG-038 : `getAttemptsForHistory` — `if (limit)` bloque `limit = 0`

**Fichier :** `features/exercises/server/queries.ts` — ligne 415
**Code :**
```ts
if (limit) {
  query = query.limit(limit);
}
```
**Description :** Si `limit = 0` est passé (valeur falsy), la condition `if (limit)` est `false` et la requête retourne **tous** les résultats sans limite. En pratique, l'historique appelle `getAttemptsForHistory(user.id, premium ? undefined : 20)` donc `limit` est soit `undefined` soit `20` — jamais `0`. Mais c'est une fragilité de l'API publique.
**Impact :** Latent — pas de bug actuel, mais API confuse.

---

### [MINEUR] BUG-039 : `DashboardData.remainingToday` typé `number` mais peut valoir `Infinity`

**Fichier :** `types/domain.ts` — ligne 302
**Description :** Le type déclare `remainingToday: number`, mais `getDailyRemainingQuota` retourne `Infinity` pour les premium. `Infinity` est un `number` valide en TypeScript, donc pas d'erreur de compilation. Mais comme noté en BUG-028, `Infinity` sérialisé en JSON devient `null`. Le type devrait être `number | typeof Infinity` ou mieux `number` avec une valeur sentinelle comme `-1` pour les premium.
**Impact :** Renforce BUG-028 — le type ne documente pas cette exception.

---

## 17. Nouveaux findings — Audit #7 (2026-03-23)

### [MAJEUR] BUG-041 : Sprint player crash côté client sur `mode:"single"` (extension de BUG-036)

**Fichier :** `features/exercises/components/sprint-player.tsx` — ligne 97
**Code :**
```ts
const evaluation = evaluateExerciseAnswer(currentQuestion, answer);
```
**Description :** Le sprint player appelle `evaluateExerciseAnswer` **localement** avant de soumettre au serveur. Comme les questions maths QCM ont `mode:"single"` (BUG-036), cet appel lève une `TypeError: Cannot read properties of undefined (reading 'some')` dans le callback React `submitAnswer`. Contrairement au serveur (protégé par un `try/catch` global), il n'y a **aucun try/catch** autour de cet appel côté client. Le composant crashe et React remonte l'erreur jusqu'à la boundary la plus proche. L'utilisateur voit un écran blanc ou un message d'erreur générique.
**Impact :** Crash visible — le mode Sprint est complètement inutilisable sur les séries maths QCM. Idem pour le `swipe-player` (même pattern ligne 76).

---

### [MINEUR] BUG-040 : `comprehension_texte` pointe vers le mauvais href dans le diagnostic

**Fichier :** `content/french-diagnostic-questions.ts` — ligne 52
**Code :**
```ts
comprehension_texte: {
  label: "Compréhension de texte",
  href: "/francais/analyse-de-la-langue",  // ← incorrect
},
```
**Description :** Le lien CTA affiché dans les résultats du diagnostic pour les utilisateurs ayant des lacunes en "Compréhension de texte" pointe vers `/francais/analyse-de-la-langue` au lieu d'une page dédiée (ex. `/francais/comprehension-texte`). L'utilisateur est redirigé vers le mauvais domaine.
**Impact :** UX — mauvaise orientation après le diagnostic.

---

### [MINEUR] BUG-042 : `isStripeConfigured()` ne vérifie pas les price IDs journalier/semainier

**Fichier :** `lib/env.ts` — ligne 44
**Description :** `isStripeConfigured()` vérifie uniquement `stripePricePremiumMonthlyId !== fallbackPriceId`. Si Stripe est partiellement configuré (secret key + webhook + monthly price OK, mais daily/weekly absent), la fonction retourne `true`. Le checkout fonctionne pour le plan mensuel, mais les plans daily/weekly utilisent `"price_placeholder"` comme priceId. Or `VALID_PRICES` contiendrait `"price_placeholder"` — passant la validation, puis échouant chez Stripe avec une 502.
**Impact :** Config partielle → erreur Stripe non anticipée sur daily/weekly au lieu d'une validation claire.

---

## 18. Résultats outils automatisés — Audit #7 (2026-03-23)

| Outil | Résultat |
|---|---|
| `npm run typecheck` | **0 erreur** |
| `npm run lint` | Non relancé |

---

## 16. Résultats outils automatisés — Audit #6 (2026-03-23)

| Outil | Résultat | Changement |
|---|---|---|
| `npm run typecheck` | **0 erreur** | Inchangé |
| `npm run lint` | Non relancé | — |
| `npm run build` | Non relancé | — |

---

## 14. Résultats outils automatisés — Audit #5 (2026-03-23)

| Outil | Résultat | Changement |
|---|---|---|
| `npm run typecheck` | **0 erreur** | Inchangé |
| `npm run lint` | **0 erreur / 2 warnings** | Inchangé |

---

## 12. Résultats outils automatisés — Audit #4 (2026-03-23)

| Outil | Résultat | Changement vs Audit #3 |
|---|---|---|
| `npm run typecheck` | **0 erreur** | Inchangé |
| `npm run lint` | Non relancé | — |
| `npm run build` | Non relancé (cache corrompu connu) | — |

---

## 9. Résultats outils automatisés — Audit #2 (2026-03-23)

| Outil | Résultat | Changement vs Audit #1 |
|---|---|---|
| `npm run typecheck` | **0 erreur** | Inchangé |
| `npm run lint` | **0 erreur / 2 warnings** | Inchangé |
| `npm run build` | **ÉCHEC** (cache `.next` corrompu) | ⚠️ Régression |

---

## Récapitulatif par sévérité (mis à jour audit #2)

| Sévérité | Nombre | Résumé |
|---|---|---|
| Critique | 3 | Rate limiter serverless + daily/weekly Stripe récurrent + **147 seeds maths mode:"single" → QCM cassés** |
| Majeur | 9 | +crash sprint-player client sur mode:"single" (extension BUG-036) |
| Mineur | 30 | +comprehension_texte href incorrect, isStripeConfigured config partielle |

---

## Ce qui fonctionne correctement

- TypeScript : **0 erreur de compilation**
- Build Next.js : **échec** (cache `.next` corrompu — à nettoyer)
- Migration `user_badges` : RLS correctement configurée
- Système de badges (`syncBadges`) : logique de diff correcte, PK composite idempotente
- ESLint : **0 erreur** (seulement 2 avertissements mineurs)
- Logique d'évaluation des exercices (`evaluation.ts`) : correcte et bien testée
- Système de streak daily (`daily-streak.ts`) : logique propre, fuseau Paris correctement géré
- Authentification Supabase SSR : pattern correct avec `supabase.auth.getUser()` (jamais `getSession`)
- Sécurité API Stripe : validation Zod + vérification `VALID_PRICES` + auth user
- Gestion des erreurs serveur : try/catch systématique dans toutes les Server Actions
- Système SRS (`lib/srs.ts`) : intégration ts-fsrs correcte
- Logique freemium (`lib/freemium.ts`) : calculs corrects
