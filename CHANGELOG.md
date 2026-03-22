# Changelog

## [2026-03-22] — Fix critique : revalidatePath causait le rechargement des questions aléatoires

- `features/exercises/server/actions.ts` — Skip `revalidatePath` pour les sessions virtuelles (id commençant par "random"). La revalidation du layout `(app)` via `/tableau-de-bord` refetchait la page `force-dynamic` `/exercice-aleatoire`, générant 10 nouvelles questions et remplaçant celles en cours de jeu

## [2026-03-22] — Ignore .claude/ dans git

- `.gitignore` — Ajout de `.claude/` pour ignorer les fichiers internes de Claude Code (scheduled_tasks.lock, etc.)

## [2026-03-22] — Fix tressautement dev : désactiver Strict Mode + guard timer

- `next.config.ts` — `reactStrictMode: false` pour empêcher le double-mount/unmount en dev qui causait un flash visible des questions (mount → unmount → remount)
- `features/exercises/components/exercise-player.tsx` — Ajout de `timerFiredRef` pour empêcher le callback `onComplete` du timer de se déclencher plusieurs fois (reset à chaque changement de question)

## [2026-03-22] — Fix double-clic qui saute la correction

- `features/exercises/components/exercise-player.tsx` — Guard anti-double-clic de 600ms entre la soumission et le clic "Question suivante" (le bouton apparaît au même endroit que "Corriger", un double-clic sur Corriger tapait aussi sur Suivante)

## [2026-03-22] — Fix tressautement : session memoizée + suppression boucle useEffect

- `features/exercises/components/random-exercise-wrapper.tsx` — `useMemo` sur `buildVirtualSession` pour que l'ExercisePlayer reçoive toujours la même référence (empêche les re-renders qui recréaient la session à chaque changement de state)
- `features/exercises/components/random-exercise-wrapper.tsx` — ID session fixe `"random-session"` au lieu de `random-${Date.now()}` (changeait à chaque render)
- `features/exercises/components/exercise-player.tsx` — Suppression de `consecutiveCorrect` des dépendances du useEffect de suivi de streak (causait un cycle render → effect → setState → render → effect). Utilisation de `setConsecutiveCorrect(prev => ...)` fonctionnel à la place

## [2026-03-22] — Fix navigation exercices : saut de questions et retour arrière

- `features/exercises/components/exercise-player.tsx` — "Question suivante" saute directement à la prochaine question non répondue au lieu d'avancer séquentiellement (évite les sauts inutiles)
- `features/exercises/components/exercise-player.tsx` — "Question précédente" ne navigue plus que vers les questions déjà répondues (empêche de tomber sur des questions vierges)
- `features/exercises/components/exercise-player.tsx` — En mode Chrono, quand le temps expire sans réponse, la question est marquée incorrecte et le joueur passe automatiquement à la suivante via `setCurrentIndex` fonctionnel (évite les closures stale dans le setTimeout)

## [2026-03-22] — Refonte exercice aléatoire : questions individuelles + 2 modes

- `features/exercises/server/queries.ts` — Ajout de `getRandomExercises(count)` : pioche N questions aléatoires individuelles (Fisher–Yates shuffle), indépendamment des séries
- `features/exercises/components/random-mode-picker.tsx` — Réécriture : 2 modes seulement (Standard, Chrono), émet la sélection au parent au lieu de naviguer vers l'API
- `features/exercises/components/random-exercise-wrapper.tsx` — Nouveau composant client : construit une session virtuelle à partir de questions individuelles, sélection du mode puis `ExercisePlayer`
- `app/(app)/exercice-aleatoire/page.tsx` — Réécriture : fetche 10 questions aléatoires côté serveur (`force-dynamic`), passe au wrapper avec XP initial
- `app/api/random-exercise/route.ts` — Supprimé (plus de redirection vers des séries existantes)

## [2026-03-22] — Fix swipe, centralisation types, support mode initial, suppression react-swipeable

- `features/exercises/components/swipe-player.tsx` — Suppression de `react-swipeable` (doublon avec framer-motion drag), ajout guard `isProcessingRef` + `touch-none`, animation de sortie selon la direction du swipe, reset `questionStartRef` au recommencement
- `features/exercises/components/mode-selector.tsx` — Centralise `FAST_MODE_TYPES` → `FAST_MODE_EXERCISE_TYPES` depuis `@/lib/constants`, seuil minimum 3 questions pour modes non-standard avec message explicatif
- `features/exercises/components/exercise-session-wrapper.tsx` — Support de `initialMode` prop pour pré-sélectionner un mode (utilisé par `?mode=` query param)
- `app/(app)/exercices/[id]/page.tsx` — Lecture du query param `?mode=` et passage en `initialMode` au wrapper
- `features/exercises/server/actions.ts` — Import `ExerciseMode` depuis `@/types/domain` (centralisation)
- `lib/constants.ts` — Ajout `FAST_MODE_EXERCISE_TYPES` (Set centralisé des types compatibles chrono/sprint)
- `lib/xp.ts` — Import `ExerciseMode` depuis `@/types/domain` au lieu de le re-déclarer localement
- `components/app-navigation.tsx` — Lien "Exercice aléatoire" pointe vers `/exercice-aleatoire` au lieu de `/api/random-exercise`
- `package.json` / `package-lock.json` — Suppression de `react-swipeable`
- `package.json` — Suppression de la dépendance `react-swipeable` (plus utilisée)

## [2026-03-22] — Refonte du flux "Exercice aléatoire" : mode d'abord, exo ensuite

- `app/(app)/exercice-aleatoire/page.tsx` — Nouvelle page dédiée avec sélection du mode avant le tirage aléatoire
- `features/exercises/components/random-mode-picker.tsx` — Sélecteur de mode simplifié (sans session), redirige vers l'API avec `?mode=X`
- `app/api/random-exercise/route.ts` — Accepte `?mode=X`, filtre les sessions compatibles avant de tirer au hasard, passe le mode en query param de la redirection
- `app/(app)/exercices/[id]/page.tsx` — Lit `?mode=X` depuis searchParams et le passe en `initialMode` au wrapper
- `features/exercises/components/exercise-session-wrapper.tsx` — Nouvelle prop `initialMode` pour sauter le mode selector quand le mode est déjà choisi
- `components/app-navigation.tsx` — Lien "Exercice aléatoire" pointe vers `/exercice-aleatoire` (page Next.js) au lieu de `/api/random-exercise`, suppression de la branche `isApiRoute` devenue inutile
- `lib/constants.ts` — Extraction de `FAST_MODE_EXERCISE_TYPES` (source unique partagée serveur/client)
- `features/exercises/components/mode-selector.tsx` — `FAST_MODE_TYPES` réexporté depuis constants pour rétrocompatibilité

## [2026-03-22] — Audit du mode Swipe : 5 bugs corrigés

- `features/exercises/components/swipe-player.tsx` — Suppression de `bgOpacity` (variable motion inutilisée)
- `features/exercises/components/swipe-player.tsx` — L'animation de sortie de carte suit désormais la direction du swipe (gauche/droite) au lieu de toujours partir à droite
- `features/exercises/components/swipe-player.tsx` — Reset de `questionStartRef` lors du clic "Recommencer" pour un calcul de temps correct sur la première question
- `features/exercises/components/swipe-player.tsx` — Passage explicite de `maxTimeMs` à `calculateXpEarned` pour clarifier le contrat d'appel
- `lib/xp.ts` — Suppression du type `ExerciseMode` dupliqué, import depuis `types/domain.ts` (source unique de vérité)
- `features/exercises/server/actions.ts` — Import de `ExerciseMode` depuis `types/domain.ts` au lieu de `lib/xp.ts`

## [2026-03-22] — Fix navigation "Exercice aléatoire"

- `components/app-navigation.tsx` — Utilisation d'une balise `<a>` native au lieu de `<Link>` pour les liens vers `/api/`, corrigeant le 404 sur "Exercice aléatoire" (la navigation client ne suivait pas la redirection serveur)
- `components/app-navigation.tsx` — Passage de "Recherche avancée" en `exact: true` pour éviter qu'elle s'affiche comme active sur les pages d'exercices individuels

## [2026-03-21] — Audit global + quick wins (3 agents parallèles)

### P2 — Agent 1 : Rate limiting API
- `lib/rate-limit.ts` — Nouveau rate limiter in-memory (sliding window, cleanup auto)
- `app/api/diagnostic/complete/route.ts` — Rate limit 10 req/60s par user
- `app/api/gamification/sprint-best/route.ts` — Rate limit 30 req/60s par user
- `app/api/gamification/onboarding/route.ts` — Rate limit 5 req/60s par user
- `app/api/random-exercise/route.ts` — Rate limit 60 req/60s par IP
- `app/api/_stripe/checkout/route.ts` — Rate limit 5 req/60s par user

### P2 — Agent 2 : Accessibilité complète
- `components/site-header.tsx` — Skip-to-content link ("Aller au contenu principal")
- `components/app-shell.tsx` — Ajout id="main-content" sur le <main>
- `app/(app)/exercices/page.tsx` — Labels form associés (htmlFor/id), aria-label sur <form>
- `app/(app)/francais/[domain]/page.tsx` — Labels form associés, aria-label sur <form>
- `features/exercises/components/exercise-timer.tsx` — role="timer", aria-label, aria-live="off"

### P2 — Agent 3 : E2E tests Playwright
- `playwright.config.ts` — Configuration Playwright (Chromium, webServer auto-start)
- `e2e/homepage.spec.ts` — Tests homepage (titre, header, footer, CTA, navigation)
- `e2e/navigation.spec.ts` — Tests navigation publique (offre, cgu, mentions, 404)
- `e2e/seo.spec.ts` — Tests SEO (meta, OG, robots.txt, sitemap.xml)
- `e2e/responsive.spec.ts` — Tests responsive (mobile hamburger, desktop nav)

### P1 — Agent 1 : Validation Zod API
- `app/api/diagnostic/complete/route.ts` — Schema Zod (score, total, profileLabel, subdomains record)
- `app/api/gamification/sprint-best/route.ts` — Schema Zod (timeMs positif, max 300000)
- `app/api/_stripe/checkout/route.ts` — Schema Zod (priceId optionnel)

### P1 — Agent 3 : Storybook stories + config
- `components/ui/button.stories.tsx` — Stories: Primary, Secondary, Ghost, Destructive, sizes, disabled
- `components/ui/badge.stories.tsx` — Stories: 6 tones, 2 sizes
- `components/ui/xp-bar.stories.tsx` — Stories: low/mid/near-level-up XP, compact
- `components/ui/level-badge.stories.tsx` — Stories: niveaux 1, 5, 10
- `components/mascot/mocca.stories.tsx` — Stories: happy, neutral, grumpy + tailles
- `features/dashboard/components/domain-gauge.stories.tsx` — Stories: 0%, 33%, 67%, 100%
- `components/ui/achievement-badges.stories.tsx` — Stories: badges sample, compact, empty
- `.storybook/main.ts` — Ajout globs pour stories co-localisées
- `eslint.config.mjs` — Désactivation règle `storybook/no-renderer-packages` pour fichiers stories

### P0 — Agent 1 : Types, API & Config
- `types/database.ts` — Ajout table `user_gamification` + colonnes manquantes `attempts` (`time_spent_ms`, `xp_earned`, `exercise_mode`)
- `next.config.ts` — Ajout security headers (X-Frame-Options, X-Content-Type-Options, Referrer-Policy, Permissions-Policy)
- `app/robots.ts` — Nouveau fichier SEO robots.txt (bloque /api/, /admin/, pages protégées)
- `app/sitemap.ts` — Nouveau fichier sitemap dynamique (pages marketing + fiches)
- `app/layout.tsx` — Metadata SEO enrichie (metadataBase, OpenGraph, keywords CRPE, title template)
- `features/gamification/server/queries.ts` — Ajout error handling sur toutes les opérations Supabase (update/upsert)

### Agent 2 — UX : Loading, Error & Accessibilité
- `app/(app)/abonnement/loading.tsx` — Nouveau skeleton loading
- `app/(app)/profil/loading.tsx` — Nouveau skeleton loading
- `app/(app)/historique/loading.tsx` — Nouveau skeleton loading
- `app/(app)/exercices/[id]/loading.tsx` — Nouveau skeleton loading
- `app/(app)/abonnement/error.tsx` — Nouveau error boundary (Mocca grumpy)
- `app/(app)/profil/error.tsx` — Nouveau error boundary (Mocca grumpy)
- `app/(app)/historique/error.tsx` — Nouveau error boundary (Mocca grumpy)
- `components/ui/xp-popup.tsx` — Ajout aria-live="polite" + role="status"
- `components/ui/badge-unlock-toast.tsx` — Ajout aria-live="assertive" + role="alert"
- `components/ui/xp-bar.tsx` — Ajout role="progressbar" + aria-valuenow/min/max

### Agent 3 — Performance
- `features/dashboard/components/nivo-radar.tsx` — Vérification/ajout lazy-loading Nivo (dynamic import, ssr: false)
- `features/dashboard/components/domain-gauge.tsx` — Vérification/ajout lazy-loading Nivo
- `features/exercises/components/sprint-player.tsx` — Lazy-loading framer-motion (LazyMotion + m)
- `features/exercises/components/swipe-player.tsx` — Lazy-loading framer-motion
- `features/exercises/components/mode-selector.tsx` — Lazy-loading framer-motion

## [2026-03-21] — Création du système MULTITASK (8 agents parallèles)

- `MULTITASK/INDEX.md` — Index central avec carte des agents, règles globales, prompt de lancement sécurisé
- `MULTITASK/AGENT-1.md` — Mission tests unitaires (Vitest : evaluation, xp, freemium, utils)
- `MULTITASK/AGENT-2.md` — Mission error boundaries & pages 404 (global-error, not-found, error.tsx)
- `MULTITASK/AGENT-3.md` — Mission durcissement API (validation, parsing, error handling)
- `MULTITASK/AGENT-4.md` — Mission accessibilité (aria, focus, prefers-reduced-motion)
- `MULTITASK/AGENT-5.md` — Mission performance (dynamic imports, lazy loading composants lourds)
- `MULTITASK/AGENT-6.md` — Mission SEO & métadonnées (metadata/generateMetadata sur toutes les pages)
- `MULTITASK/AGENT-7.md` — Mission contenu (4 nouvelles fiches reference : conjugaison, compréhension, didactique, lexique)
- `MULTITASK/AGENT-8.md` — Mission constants & types (extraction valeurs hardcodées, pricing, CRPE context)
- Ajout blocs **Persévérance** (interdiction de s'arrêter en cours) + **Rapport obligatoire** (`MULTITASK/RAPPORT-X.md`) sur chaque agent

## [2026-03-21] — Section Défi rapide refaite + contenu engageant

### Dashboard — Section Défi rapide refaite
- `app/(app)/tableau-de-bord/page.tsx` — Sélection intelligente : priorise les faiblesses (a_revoir > non_commencee > en_cours), rotation quotidienne déterministe, affiche domaine/progression/streak, 2 suggestions alternatives, badges contextuels (point faible détecté / série en cours / nouvelle série)

### Mode selector — Filtrage intelligent
- `features/exercises/components/mode-selector.tsx` — Chrono et Sprint désactivés pour les séries tri_categories/surlignage (pas adaptés aux exercices interactifs longs)

### Contenu
- `supabase/migrations/20260352_seed_mix_cross_domaines.sql` — 30 questions Mix cross-domaines (3 séries : Révision express, Pièges CRPE, Culture générale)
- `content/fiches/orthographe-pluriel-irregulier-sprint.ts` — Fiche sprint pluriels irréguliers (-al/-aux, -ail/-aux, -ou/-oux + exceptions)
- `content/fiches/grammaire-phrase-interrogative-sprint.ts` — Fiche sprint phrase interrogative (totale/partielle, 3 formes, interrogative indirecte)

## [2026-03-21] — 2 fiches sprint : pluriels irréguliers + phrase interrogative

- `content/fiches/orthographe-pluriel-irregulier-sprint.ts` — fiche sprint sur les pluriels irréguliers (-al/-aux, -ail/-aux, -ou/-oux, -eu/-eux) avec 6 quiz items
- `content/fiches/grammaire-phrase-interrogative-sprint.ts` — fiche sprint sur la phrase interrogative (totale/partielle, 3 registres, interrogative indirecte) avec 5 quiz items
- `content/fiches/index.ts` — ajout des 2 nouvelles fiches au registre allFiches

## [2026-03-21] — Contenu sérieux & fun : exercices, fiches, badges, Mocca

### Exercices — 40 nouvelles questions (2 migrations)
- `supabase/migrations/20260350_seed_correction_orthographique.sql` — 20 exercices `correction_orthographique` (type jamais utilisé avant !) : accords PP, homophones grammaticaux — l'élève doit corriger le mot fautif
- `supabase/migrations/20260351_seed_reponse_courte.sql` — 20 exercices `reponse_courte` : identifier la nature des mots (analyse_langue) + identifier le type de discours (comprehension_texte) avec textes-supports littéraires

### Fiches — 2 nouvelles fiches opératoire (arbres de décision interactifs)
- `content/fiches/comprehension-texte-type-discours-operatoire.ts` — arbre interactif pour identifier le type de discours (narratif/descriptif/argumentatif/explicatif/injonctif)
- `content/fiches/didactique-demarche-etude-langue-operatoire.ts` — arbre interactif pour choisir sa démarche pédagogique (inductive/déductive/guidée/explicite)

### Badges — 8 badges secrets/fun ajoutés (total : 124 badges)
- `components/ui/achievement-badges.tsx` — "Oiseau de nuit" (réviser après 23h), "Lève-tôt" (avant 7h), "Éclair" (sprint <60s), "Perfectionniste" (3 parfaits d'affilée), "Phénix" (comeback après 7j+), "Polyglotte" (8 types d'exercices), "Quinze d'affilée" (15 consécutives), "Dimanche studieux" (3 séries le dimanche)

### Mocca — Personnalité enrichie (31 → 60+ messages)
- `lib/mocca-messages.ts` — 10 fun facts CRPE, 5 messages score parfait, 4 messages maîtrise, messages de complétion amusants, 10% de chance de fun fact aléatoire, messages contextuels par niveau

### Cosmétique — Effets sonores et animations
- `features/exercises/components/exercise-player.tsx` — son level-up sur score parfait (100%), son streak sur maîtrise, confettis enrichis
- `components/ui/badge-unlock-toast.tsx` — déjà amélioré avec framer-motion (session précédente)

## [2026-03-21] — Ajout de 2 fiches opératoires (arbres de décision)

- `content/fiches/comprehension-texte-type-discours-operatoire.ts` — fiche opératoire : identifier le type de discours (narratif, descriptif, argumentatif, explicatif, injonctif) via un arbre de décision interactif
- `content/fiches/didactique-demarche-etude-langue-operatoire.ts` — fiche opératoire : choisir la démarche en étude de la langue (inductive, déductive, guidée, explicite) via un arbre de décision interactif
- `content/fiches/index.ts` — import et ajout des 2 nouvelles fiches dans allFiches

## [2026-03-21] — Ajout de 20 exercices réponse courte

- `supabase/migrations/20260351_seed_reponse_courte.sql` — 20 questions reponse_courte : 10 analyse_langue (identifier la nature des mots) + 10 comprehension_texte (identifier le type de discours / figures de style)

## [2026-03-21] — Création massive de contenu : 220 questions + 10 fiches

### 6 migrations SQL — 220 nouvelles questions d'exercices
- `supabase/migrations/20260344_seed_sprint_extended.sql` — 40 questions Sprint QCM (lexique, compréhension, analyse_langue, didactique)
- `supabase/migrations/20260345_seed_swipe_extended.sql` — 50 questions Swipe Vrai/Faux (conjugaison, lexique, compréhension, analyse_langue, didactique)
- `supabase/migrations/20260346_seed_standard_analyse_langue.sql` — 30 questions analyse_langue (propositions subordonnées, anaphores, manipulations syntaxiques)
- `supabase/migrations/20260347_seed_standard_didactique.sql` — 30 questions didactique (compréhension lecture, production écrits, étude de la langue)
- `supabase/migrations/20260348_seed_standard_comprehension.sql` — 30 questions compréhension (implicite, argumentation, registres/énonciation)
- `supabase/migrations/20260349_seed_tri_surlignage.sql` — 40 questions interactives (tri classes grammaticales, tri temps verbaux, surlignage sujets/verbes, surlignage propositions)

### 10 nouvelles fiches
- 3 fiches Référence (premium) : phrase complexe, homophones grammaticaux, manipulations syntaxiques
- 4 fiches Opératoire (arbres de décision interactifs) : nature/fonction, choix temps du passé, accord adjectif, sens mot en contexte
- 3 fiches Sprint : pronoms, évaluation lecture, connecteurs logiques
- `content/fiches/index.ts` — mis à jour avec les 10 nouvelles fiches (total : 88 fiches)

## [2026-03-21] — 3 fiches reference (phrase complexe, homophones, manipulations syntaxiques)

- `content/fiches/grammaire-phrase-complexe-reference.ts` — fiche reference sur la phrase complexe : juxtaposition, coordination, subordination (3 types de subordonnées), méthodologie d'analyse, 5 quiz
- `content/fiches/orthographe-homophones-grammaticaux-reference.ts` — fiche reference homophones grammaticaux : a/à, ou/où, et/est, son/sont, ce/se, on/ont avec tests de substitution, 6 quiz
- `content/fiches/analyse-langue-manipulations-syntaxiques-reference.ts` — fiche reference manipulations syntaxiques : déplacement, suppression, remplacement, encadrement, expansion, 5 quiz
- `content/fiches/index.ts` — ajout des 3 nouvelles fiches au registre

## [2026-03-21] — 4 fiches opératoires (arbres de décision)

- `content/fiches/grammaire-nature-fonction-operatoire.ts` — arbre de décision nature/fonction : mots variables (nom, adjectif, déterminant, pronom, verbe) vs invariables (adverbe, préposition, conjonction, interjection), 5 quiz, note didactique cycle 3
- `content/fiches/conjugaison-choix-temps-passe-operatoire.ts` — arbre de décision pour choisir le temps du passé (imparfait, passé simple, passé composé, plus-que-parfait), 5 quiz
- `content/fiches/orthographe-accord-adjectif-operatoire.ts` — arbre de décision accord de l'adjectif (attribut/épithète, sujets coordonnés, adjectifs de couleur), 5 quiz
- `content/fiches/lexique-sens-mot-contexte-operatoire.ts` — arbre de décision pour trouver le sens d'un mot en contexte (polysémie, morphologie, indices contextuels), 5 quiz
- `content/fiches/index.ts` — ajout des 4 nouvelles fiches au registre

## [2026-03-21] — 3 fiches Sprint : pronoms, évaluation lecture, connecteurs logiques

- `content/fiches/analyse-langue-nature-pronoms-sprint.ts` — fiche sprint sur les 7 catégories de pronoms (personnel, possessif, démonstratif, relatif, indéfini, interrogatif, numéral) avec 5 quiz
- `content/fiches/didactique-evaluation-lecture-sprint.ts` — fiche sprint sur l'évaluation de la lecture (fluence MCLM vs compréhension, outils par cycle) avec 5 quiz
- `content/fiches/comprehension-texte-connecteurs-logiques-sprint.ts` — fiche sprint sur les connecteurs logiques (cause, conséquence, opposition, concession, addition) avec 5 quiz
- `content/fiches/index.ts` — ajout des 3 nouvelles fiches au registre

## [2026-03-21] — 4 séries Sprint étendues (40 questions QCM)

- `supabase/migrations/20260344_seed_sprint_extended.sql` — 4 nouvelles séries Sprint : Lexique (formation des mots), Compréhension (inférences), Analyse (fonctions grammaticales), Didactique (cycles et programmes). 10 questions chacune, 40 au total, niveaux Facile/Intermédiaire/Avancé.

## [2026-03-21] — 5 séries Swipe Vrai/Faux étendues (50 questions)

- `supabase/migrations/20260345_seed_swipe_extended.sql` — 5 nouvelles séries Swipe V/F : Conjugaison, Lexique, Compréhension, Analyse langue, Didactique (10 questions chacune, 50 au total)

## [2026-03-21] — Corrections mobile complémentaires (toaster, hero, accordéons, charts)

- `app/layout.tsx` — Toaster repositionné en `top-center` (évite conflit avec bottom nav mobile)
- `features/homepage/components/renderer.tsx` — Hero gradient vertical sur mobile (meilleur contraste texte), horizontal sur desktop
- `components/ui/domain-accordion.tsx` — Padding responsive (px-4/py-3 mobile, px-5/py-4 sm)
- `components/ui/badges-summary.tsx` — Padding et gap responsives
- `components/ui/score-evolution-chart.tsx` — min-width réduit (320→280px) pour petits écrans

## [2026-03-21] — Intégration gamification complète (12 packages, 6 phases)

### Phase 0 — Fondations
- `package.json` — ajout de 12 dépendances gamification (framer-motion, use-sound, react-countup, react-countdown-circle-timer, react-circular-progressbar, lottie-react, driver.js, @nivo/radar, @nivo/core, react-type-animation, react-swipeable, @react-pdf/renderer)
- `supabase/migrations/20260341_add_gamification_tables.sql` — table `user_gamification` (XP, level, streaks, settings) + colonnes `time_spent_ms`, `xp_earned`, `exercise_mode` sur `attempts`
- `types/domain.ts` — types `UserGamification`, `ExerciseMode`
- `lib/xp.ts` — système XP complet (calcul, niveaux 1-20, multiplicateurs streak/vitesse/mode, labels)
- `lib/sounds.ts` — types et mapping des 6 sons de jeu
- `lib/mocca-messages.ts` — messages contextuels de Mocca (heure, streak, niveau, exercice)
- `components/hooks/use-game-sounds.ts` — hook `useGameSounds` (wrapper use-sound, respect prefers-reduced-motion)
- `features/gamification/context.tsx` — `GamificationProvider` + hook `useGamification`
- `features/gamification/server/queries.ts` — queries serveur (getUserGamification, updateUserXp, updateSprintPersonalBest, completeOnboarding)
- `features/gamification/components/settings-panel.tsx` — panneau settings (son, animations, objectif quotidien)
- `features/exercises/server/actions.ts` — `submitAttemptAction` étendu avec XP, temps, mode, streak, level-up detection
- `app/(app)/layout.tsx` — intégration `GamificationProvider`
- `public/sounds/` — 6 fichiers sons placeholder (correct, incorrect, streak, level-up, timer-warning, badge-unlock)

### Phase 1 — Système XP + Exercise Player enrichi
- `components/ui/xp-popup.tsx` — popup "+N XP" animé (framer-motion)
- `components/ui/xp-bar.tsx` — barre de progression XP avec animation (framer-motion)
- `components/ui/level-badge.tsx` — badge niveau avec animation spring (framer-motion AnimatePresence)
- `features/exercises/components/exercise-timer.tsx` — timer par question (react-countdown-circle-timer, vert→jaune→rouge)
- `features/exercises/components/exercise-player.tsx` — intégration XP popup, barre XP, sons correct/incorrect/streak/level-up, tracking temps par question

### Phase 2 — Nouveaux modes d'exercice
- `features/exercises/components/swipe-player.tsx` — mode Swipe Vrai/Faux (react-swipeable + framer-motion, drag physics, flash feedback, boutons accessibilité)
- `features/exercises/components/sprint-player.tsx` — mode Sprint (countdown 3-2-1, timer ascendant, score live react-countup, record personnel, stats fin)
- `features/exercises/components/mode-selector.tsx` — sélecteur de mode (Standard/Chrono/Sprint/Swipe, multiplicateurs XP, framer-motion)
- `features/exercises/components/exercise-session-wrapper.tsx` — wrapper orchestrant mode selector + player approprié
- `app/(app)/exercices/[id]/page.tsx` — remplacement ExercisePlayer par ExerciseSessionWrapper avec données gamification

### Phase 3 — Dashboard enrichi
- `features/dashboard/components/animated-counter.tsx` — compteur animé (react-countup)
- `features/dashboard/components/xp-level-card.tsx` — carte XP/niveau avec barre, stats streak (framer-motion + react-countup)
- `features/dashboard/components/domain-gauge.tsx` — jauge circulaire par domaine (react-circular-progressbar)
- `features/dashboard/components/nivo-radar.tsx` — radar de compétences interactif (@nivo/radar, tooltips, 2 métriques score/completion)
- `features/dashboard/components/streak-display.tsx` — affichage streak avec animation feu (framer-motion)
- `app/(app)/tableau-de-bord/page.tsx` — intégration XpLevelCard, StreakDisplay, AnimatedCounter, NivoRadarChart, DomainGauge, data-tour attributes

### Phase 4 — Onboarding + Mocca amélioré
- `features/onboarding/components/onboarding-tour.tsx` — tour guidé 7 étapes (driver.js, styles design system)
- `features/onboarding/components/onboarding-tour-wrapper.tsx` — wrapper client avec API onboarding completion
- `app/api/gamification/onboarding/route.ts` — API POST pour marquer onboarding complété
- `app/globals.css` — styles CSS pour driver.js popover (couleurs design system)
- `components/mascot/mocca-with-message.tsx` — Mocca avec bulle de message + effet typewriter (react-type-animation)
- `components/mascot/mocca.tsx` — export MoccaWithMessage

### Phase 5 — Fiches enrichies + PDF
- `features/fiches/components/blocks/block-decision-tree.tsx` — arbre de décision interactif (framer-motion, choix Oui/Non progressif, animation reveal)
- `features/fiches/components/fiche-quiz.tsx` — mode chrono ajouté (react-countdown-circle-timer 15s/question, toggle chrono, score live react-countup)
- `features/fiches/components/fiche-pdf.tsx` — document PDF complet (@react-pdf/renderer, 3 modèles reference/sprint/operatoire, styles fidèles)
- `features/fiches/components/download-fiche-button.tsx` — bouton téléchargement PDF (import dynamique, génération async)
- `app/(app)/fiches/[slug]/page.tsx` — intégration bouton téléchargement PDF

### Phase 6 — Contenu
- `supabase/migrations/20260342_seed_sprint_series.sql` — 3 séries Sprint de 10 questions QCM (grammaire, orthographe, conjugaison)
- `supabase/migrations/20260343_seed_swipe_vrai_faux.sql` — 2 séries Swipe Vrai/Faux de 10 questions (grammaire, orthographe)

---

## [2026-03-21] — Audit terminologie Éduscol 2021 : corrections de conformité

- `content/fiches/analyse-langue-complements-circonstanciels-sprint.ts` — « complément essentiel » remplacé par « complément d'objet (COD/COI) » (tag, oneLiner, quiz)
- `content/french-crpe-series-v3-b.ts` — Introduction conditionnel : « à la fois un temps et un mode » corrigé en « temps de l'indicatif avec valeurs modales » (Éduscol 2021)
- `content/french-crpe-series.ts` — « adjectif qualificatif » remplacé par « adjectif » comme nom de classe grammaticale (4 occurrences)
- `content/french-crpe-series-v3-k.ts` — Idem : QCM et explications attribut du sujet (3 occurrences)
- `content/french-crpe-series-v3-d.ts` — Série « Accord de l'adjectif qualificatif » renommée « Accord de l'adjectif » (titre, topicKey, topicLabel, skill, explication)
- `content/french-crpe-series-v3-e.ts` — Explication « adjectif qualificatif » → « adjectif »
- `content/french-crpe-series-v3-f.ts` — Explication épithète : « adjectif qualificatif » → « adjectif »
- `supabase/seed_content_conjugaison.sql` — « deux modes distincts » (futur/conditionnel) → « deux temps bien distincts de l'indicatif »
- `supabase/seed_content_analyse_langue_v3.sql` — « complément essentiel » → « complément d'objet (COD/COI) » ; « prédicat second » → « apposition »
- `supabase/migrations/20260339_seed_analyse_didactique.sql` — « complément essentiel de lieu » → « COI de lieu » (question, choix, explication, piège)
- `supabase/seed_content_didactique.sql` — « prédicat » → « groupe verbal »
- `supabase/seed_content_grammaire_v2.sql` — « prédicat » → « groupe verbal (GV) » ; « quatre types de phrases » → formulation neutre
- `supabase/seed_content_grammaire.sql` — « forme active » → « voix active » (distinction forme/voix)
- `supabase/seed_content_analyse_langue_v2.sql` — Commentaire SQL corrigé (4 types → 3 types)

## [2026-03-21] — Vitrine hero : intégration des meilleurs éléments du site

- `features/homepage/components/hero-showcase.tsx` — Nouveau composant vitrine statique (mini radar diagnostic, carte domaine, heatmap activité, barre XP, streak) affiché côté droit du hero sur desktop
- `features/homepage/components/renderer.tsx` — Hero passé en layout 2 colonnes (texte + vitrine), import HeroShowcase

## [2026-03-21] — Corrections mobile complémentaires (toaster, hero, accordéons, charts)

- `app/layout.tsx` — Toaster repositionné en `top-center` (évite conflit avec bottom nav mobile)
- `features/homepage/components/renderer.tsx` — Hero gradient vertical sur mobile (meilleur contraste texte), horizontal sur desktop
- `components/ui/domain-accordion.tsx` — Padding responsive (px-4/py-3 mobile, px-5/py-4 sm)
- `components/ui/badges-summary.tsx` — Padding et gap responsives
- `components/ui/score-evolution-chart.tsx` — min-width réduit (320→280px) pour petits écrans

## [2026-03-21] — Audit mobile complet et optimisation responsive

- `app/layout.tsx` — Ajout export `viewport` avec `viewportFit: "cover"` pour safe areas iPhone
- `app/globals.css` — Ajout variables CSS `--safe-bottom/top/left/right` (safe-area-inset)
- `components/nav-links.tsx` — Bottom nav : safe area padding, texte agrandi (0.65→0.7rem)
- `components/app-shell.tsx` — Spacing responsive (gap/padding réduits sur mobile), padding bottom pour bottom nav
- `components/site-header.tsx` — Padding latéral réduit sur mobile (px-4 → px-6 au sm)
- `components/site-footer.tsx` — Padding responsive (px-4/py-10 mobile, px-6/py-14 sm)
- `components/ui/panel.tsx` — Padding et border-radius responsives (p-4/rounded-1.25rem mobile, p-6/1.75rem sm)
- `components/ui/card.tsx` — Padding et border-radius responsives sur Card, CardHeader, CardContent, CardFooter
- `features/homepage/components/renderer.tsx` — Hero : titre 2.5rem mobile (→6xl desktop), CTA pleine largeur mobile, spacing réduit. Trust bar, benefits, features, FAQ, domains, final CTA : padding px-4 mobile, spacing adapté
- `features/exercises/components/exercise-player.tsx` — Progress card : min-w supprimé mobile, padding réduit
- `features/diagnostic/components/diagnostic-client.tsx` — Passation : padding réduit (px-4/py-5), feedback plus compact
- `features/dashboard/components/collapsible-panel.tsx` — Padding et border-radius responsives
- `features/dashboard/components/session-progress-card.tsx` — Padding et border-radius responsives
- `features/fiches/components/blocks/block-table.tsx` — min-width réduit (400→300px) pour mobile
- `features/fiches/components/blocks/block-decision-tree.tsx` — Indentation réduite sur mobile (ml-3 vs ml-6)
- `features/fiches/components/fiche-reference.tsx` — Collapsible details : padding et radius responsives
- `app/(auth)/layout.tsx` — Padding réduit sur mobile (p-5/px-4, rounded-1.5rem)
- `app/(app)/tableau-de-bord/page.tsx` — Hero banner : padding réduit, titre 3xl mobile, plan du jour padding responsive
- `app/(app)/exercices/page.tsx` — Titre responsive, filtre grille sm:grid-cols-2, meta cells responsives
- `app/(app)/fiches/page.tsx` — Titre responsive
- `app/(app)/francais/page.tsx` — Titre responsive
- `app/(app)/profil/page.tsx` — Titre responsive
- `app/(app)/abonnement/page.tsx` — Titre responsive
- `app/(app)/progression/page.tsx` — Texte 0.65→0.7rem
- `app/(marketing)/offre/page.tsx` — Padding réduit, titre responsive, cards padding/radius responsives
- `app/(marketing)/cgu/page.tsx` — Padding et titre responsives
- `app/(marketing)/mentions-legales/page.tsx` — Padding responsive
- `app/(marketing)/politique-confidentialite/page.tsx` — Padding et titre responsives
- `app/(marketing)/_showcase.tsx` — Cards padding et border-radius responsives

## [2026-03-21] — Rapport des séries d'exercices

- `séries.md` — Création du rapport complet des séries : inventaire des 59 séries (590 questions), classement par sous-domaine, convention de numérotation V3/V4, répartition par type d'exercice et par migration SQL

## [2026-03-21] — Audit global et correction de bugs (API, UI, exercices, billing)

- `app/api/_stripe/webhook/route.ts` — Ajout error handling sur tous les upsert Supabase (retour 500 → Stripe retry), accès metadata sécurisé (`metadata?.user_id`), logs d'erreur
- `app/api/_stripe/checkout/route.ts` — Ajout vérification erreur DB lors du lookup subscription existante
- `app/api/diagnostic/complete/route.ts` — Ajout try/catch sur `request.json()` (retour 400 au lieu de crash sur JSON malformé)
- `features/billing/server/queries.ts` — Validation de `current_period_end` contre les dates invalides (NaN guard)
- `features/exercises/server/queries.ts` — Ajout console.warn quand `normalizeExpectedAnswer` tombe dans le fallback (acceptableAnswers vide)
- `app/(app)/tableau-de-bord/page.tsx` — Ajout `aria-hidden="true"` sur SVGs décoratifs (progress ring, checkmark)
- `components/site-footer.tsx` — Clé React changée de `label` vers `href` (unicité garantie)

## [2026-03-21] — Refonte UX du composant de délimitation de propositions

- `features/exercises/components/highlight-propositions-input.tsx` — Refonte complète du composant :
  - Ancien : segments empilés en cartes verticales avec labels S1-S7, mécanisme de "cycle au clic" invisible et incompréhensible
  - Nouveau : sélecteur de proposition actif (toolbar avec boutons colorés), phrase affichée en flux inline (mots côte à côte), clic pour attribuer/désattribuer, compteur de mots attribués par groupe, feedback visuel clair après correction
- `supabase/migrations/20260340_fix_surlignage_word_segments.sql` — Réécriture des 10 exercices de la Série 7 (phrase complexe) :
  - Ancien : 2 segments = phrases entières pré-découpées → exercice trivial sans intérêt pédagogique
  - Nouveau : 4-8 segments mot par mot → l'élève doit identifier les frontières entre propositions

## [2026-03-21] — Audit et correction des séries d'exercices V3

- `content/french-crpe-series.ts` — Import manquant de `seriesV3BatchD` et `seriesTriNatureMots` (séries invisibles dans l'app)
- `content/french-crpe-series-v3-d.ts` — v3d-tout-c5 : mauvaise réponse corrigée ("d" → "a"), explication réécrite (adverbe, pas adjectif)
- `content/french-crpe-series-v3-d.ts` — v3d-ppe-1 : "le participe passé tombe s'accorde" → "le participe passé « tombé » s'accorde"
- `content/french-crpe-series-v3-d.ts` — v3d-tout-c4 : "consonne" → "h aspiré" pour honteuse
- `content/french-crpe-series-v3-e.ts` — v3e-nva-8 : "fatigué" → "fatigue" (cohérence avec la phrase)
- `content/french-crpe-series-v3-e.ts` — v3e-dbl-4 : accent manquant "jusqu'a" → "jusqu'à"
- `content/french-crpe-series-v3-a.ts` — v3a-pnc-6 : explication corrigée (portemonnaie/portefeuille confondus)
- `content/french-crpe-series-v3-g.ts` — v3g-tv-6 : "a son avenir" → "à son avenir" dans l'énoncé
- `content/french-crpe-series-v3-g.ts` — "a introduire" → "à introduire"
- `content/french-crpe-series-v3-h.ts` — 10+ accents manquants corrigés (reconnaît, écrite, voté, proximité, dénotent, tête, cortège, etc.)
- `content/french-crpe-series-v3-h.ts` — Doublons supprimés dans la liste d'hyponymes d'arbre (cèdre, cyprès, séquoia)
- `content/french-crpe-series-v3-h.ts` — "Coeur" → "Cœur", "emploi figure" → "emploi figuré"
- `content/french-crpe-series-v3-j.ts` — "oral polygere" → "oral polygéré"
- `content/french-crpe-series-v3-{e,f,g,h,i}.ts` — Niveau "Intermédiaire" → "Intermediaire" (cohérence avec constants.ts)
- `content/french-crpe-series-v3-{f,h,i}.ts` — Source "Série CRPE Français V3" → "Serie CRPE Francais V3" (cohérence)

## [2026-03-21] — Complétion de 6 séries legacy supplémentaires à 10 questions

- `content/french-crpe-series.ts` — Ajout de 25 questions aux séries legacy restantes qui en avaient moins de 10 :
  - serie-fonctions-essentielles : +4 questions (fct-7 à fct-10) — COD, attribut du sujet, CC de lieu, COI avec préposition
  - serie-nature-ou-fonction : +5 questions (nof-6 à nof-10) — distinction nature/fonction sur adverbe, groupe prépositionnel, épithète, complément du nom, analyse complète
  - serie-futur-conditionnel-subjonctif : +3 questions (fcs-8 à fcs-10) — futur vs conditionnel, subjonctif après « pourvu que », conditionnel après « si + imparfait »
  - serie-analyse-groupe-nominal-relative : +3 questions (agl-8 à agl-10) — fonction du pronom relatif « que », pronom « dont » COI, accord PP avec avoir et COD antéposé
  - serie-gn-expansions : +5 questions (gne-6 à gne-10) — complément du nom prépositionnel, double expansion, CDN vs épithète, épithètes coordonnées, correction d'erreur
  - serie-participe-passe-etre : +5 questions (ppe-6 à ppe-10) — correction double accord, masculin pluriel, féminin singulier, conjugaison avec accord, justification de l'accord

## [2026-03-21] — Complétion des 6 séries legacy à 10 questions chacune

- `content/french-crpe-series.ts` — Ajout de 28 questions aux séries legacy qui en avaient moins de 10 :
  - serie-accords-sujet-verbe : +4 questions (asv-7 à asv-10) — sujets coordonnés, pronom relatif "qui", "ainsi que", "aucun"
  - serie-accords-groupe-nominal : +5 questions (agn-6 à agn-10) — adjectif antéposé, genre, coordination mixte, déterminant pluriel, féminin pluriel
  - serie-classes-grammaticales : +5 questions (cgr-6 à cgr-10) — adverbe vs adjectif, déterminant indéfini, conjonction de coordination, préposition
  - serie-homophones-grammaticaux : +4 questions (hg-7 à hg-10) — a/à avec conjonction, cette/est, se/ce pronom réfléchi, ces/ses/car
  - serie-temps-de-base : +5 questions (tdb-6 à tdb-10) — imparfait irrégulier, futur simple, imparfait vs présent, correction orthographique futur, identification temps
  - serie-synonymes-antonymes : +5 questions (lex-6 à lex-10) — synonymes en contexte, antonymes, vrai/faux antonymie, synonyme "limpide", synonyme "contraindre"

## [2026-03-21] — Ajout des accents français dans french-crpe-series-v3-h.ts et french-crpe-series-v3-i.ts

- `content/french-crpe-series-v3-h.ts` — Ajout systématique des diacritiques français sur tous les textes affichés : titres, introductions, résumés, questions, explications, erreurs fréquentes, labels de choix et réponses acceptées (3 séries : hyperonymie/hyponymie, familles de mots, sens figuré). Corrections incluant é/è/ê/œ/à/î/ï sur des centaines d'occurrences.
- `content/french-crpe-series-v3-i.ts` — Correction de "Intermediaire" → "Intermédiaire" sur toutes les occurrences (33 questions) et "Serie CRPE Francais V3" → "Série CRPE Français V3" dans le champ source.

## [2026-03-21] — Ajout des accents français dans french-crpe-series-v3-e.ts

- `content/french-crpe-series-v3-e.ts` — Ajout systématique des diacritiques français (accents aigus, graves, circonflexes, cédilles, trémas) sur tous les textes affichés aux utilisateurs : titres, introductions, résumés, questions, explications, erreurs fréquentes, labels de choix et réponses acceptées. Aucune modification des identifiants, clés de données ou structure TypeScript.

## [2026-03-21] — Fix ambiguites et formats d'exercices (hg-5, gne-5, agl-6, v3b-reg-7)

- `content/french-crpe-series.ts` — hg-5 : ajouté "la-bas sur la table" pour lever l'ambiguité ces/ses (deixis claire)
- `content/french-crpe-series.ts` — gne-5 : converti de reponse_courte en QCM (question trop ouverte pour une réponse courte)
- `content/french-crpe-series.ts` — agl-6 : converti de reponse_courte en QCM (question trop ouverte pour une réponse courte)
- `content/french-crpe-series-v3-b.ts` — v3b-reg-7 : remplacé "être dans le pétrin" (familier) par "kiffer" (vraiment argotique)

## [2026-03-21] — Corrections de contenu exercices (v3-g, v3-j, v3-k, series)

- `content/french-crpe-series-v3-g.ts` — v3g-mv-9 : corrigé l'explication pour indiquer le radical "prend-" (et non "prendr-"), cohérent avec la désinence "-r-ont"
- `content/french-crpe-series-v3-j.ts` — v3j-lj-8 : retiré "comité de lecture" des réponses acceptées (un comité de lecture est un comité de sélection, pas un cercle de discussion)
- `content/french-crpe-series-v3-j.ts` — v3j-oe-4 : remplacé le doublon sur l'étayage par une question sur l'oral polygéré / interactions langagières
- `content/french-crpe-series-v3-k.ts` — corrigé les recommendedOrder de 44-48 à 49-53 pour éviter les doublons avec v3-j
- `content/french-crpe-series-v3-k.ts` — v3k-im-10 : ajouté 13 variantes de réponses acceptées (ordres différents, avec/sans accents, avec articles)
- `content/french-crpe-series.ts` — gne-2 : corrigé "nature" → "fonction" dans la question (la réponse "complément du nom" est une fonction)
- `content/french-crpe-series.ts` — terminologie : remplacé "verbe d'état" par "verbe attributif" (2 occurrences)

## [2026-03-21] — Validation reponse_courte plus souple (v3-e, v3-h, v3-k, series)

- `content/french-crpe-series-v3-e.ts` — v3e-nva-7 : ajouté "un nom", "Nom", "Un nom" aux réponses acceptées
- `content/french-crpe-series-v3-e.ts` — v3e-var-8 : ajouté "mot variable", "Variable", "un mot variable"
- `content/french-crpe-series-v3-e.ts` — v3e-tout-8 : ajouté "un determinant", "Determinant", "un déterminant", "Déterminant"
- `content/french-crpe-series-v3-e.ts` — v3e-dpa-9 : ajouté "un pronom", "Pronom" et variantes avec/sans accent de "pronom indefini"
- `content/french-crpe-series-v3-h.ts` — v3h-hh-8 : ajouté 13 essences d'arbres supplémentaires (cèdre, cyprès, saule, etc.)
- `content/french-crpe-series-v3-k.ts` — v3k-im-8 : ajouté variantes avec point d'exclamation ("Finis !", "finis !", etc.)
- `content/french-crpe-series.ts` — fct-1 : ajouté "Sujet", "le sujet", "Le sujet"
- `content/french-crpe-series.ts` — fct-2 : ajouté "COD" majuscule et variantes avec/sans accent
- `content/french-crpe-series.ts` — fct-3 : ajouté "COI" majuscule et variantes avec/sans accent

## [2026-03-21] — Corrections de contenu exercices (v3-a, v3-d)

- `content/french-crpe-series-v3-a.ts` — v3a-tma-1 : corrigé "tout heureuse" (h muet = invariable) en "tout contente" → "toute contente" (consonne = accord) ; mise à jour question, réponses et explication
- `content/french-crpe-series-v3-a.ts` — v3a-pcc-10 : ajouté 8 permutations supplémentaires dans les réponses acceptées pour les conjonctions de coordination
- `content/french-crpe-series-v3-d.ts` — corrigé "Avance" → "Avancé" sur l'ensemble du fichier (niveau de difficulté)
- `content/french-crpe-series-v3-d.ts` — v3d-hom2-8 : remplacé la phrase ambiguë "Quant à la fin du mois" par "Quant à moi, je préfère rester ici" avec explication clarifiée
- `content/french-crpe-series-v3-d.ts` — topicKey dédoublonnés : "discours_direct_indirect" → "discours_direct_indirect_avance", "tout_meme_accord" → "tout_meme_accord_avance"

## [2026-03-21] — 20 séries d'exercices (200 questions) + 5 fiches

### 20 séries d'exercices (hors grammaire) — 200 questions

- `supabase/migrations/20260336_seed_orthographe_conjugaison_batch1.sql` — **8 séries × 10 questions (Orthographe + Conjugaison)** : accord sujet-verbe (cas complexes), homophones grammaticaux, participe passé, pluriel noms composés, présent indicatif, imparfait/passé simple, subjonctif présent, concordance des temps
- `supabase/migrations/20260336_seed_lexique_comprehension_batch2.sql` — **7 séries × 10 questions (Lexique + Compréhension)** : champs lexicaux, figures de style, registres de langue, relations de sens (synonymie/antonymie/polysémie), schéma narratif, texte argumentatif, cohérence textuelle
- `supabase/migrations/20260336_seed_analyse_didactique_batch3.sql` — **5 séries × 10 questions (Analyse + Didactique)** : subordonnées relatives, compléments circonstanciels, voix active/passive, apprentissage de la lecture, conscience phonologique

Types variés (qcm, vrai_faux, reponse_courte, tri_categories), difficulté progressive, terminologie Éduscol 2021, explications pédagogiques CRPE. Chaque série : 5 free + 5 premium.

### 5 fiches reference/operatoire (variété de modèles)

- `content/fiches/orthographe-participe-passe-operatoire.ts` — fiche opératoire avec arbre de décision complet pour l'accord du PP (auxiliaires, pronominaux, EN)
- `content/fiches/conjugaison-concordance-temps-reference.ts` — fiche de référence sur la concordance des temps (systèmes présent/passé, discours rapporté, cas particuliers)
- `content/fiches/lexique-figures-style-reference.ts` — fiche de référence sur les figures de style (5 familles, exemples littéraires, pièges courants)
- `content/fiches/comprehension-texte-schema-narratif-operatoire.ts` — fiche opératoire avec arbre de décision pour analyser un récit via le schéma quinaire
- `content/fiches/didactique-apprentissage-lecture-reference.ts` — fiche de référence sur l'apprentissage de la lecture (modèle à deux voies, prérequis, fluence, compréhension, difficultés)
- `content/fiches/index.ts` — ajout des 5 nouvelles fiches dans le registre allFiches (total : 84)

## [2026-03-21] — Fix tooltips badges coupés + tooltips sur badges verrouillés

- `components/ui/badges-summary.tsx` — suppression `overflow-hidden` du conteneur qui coupait les tooltips sur les bords, ajout `rounded` sur bouton et zone de contenu
- `components/ui/achievement-badges.tsx` — ajout tooltip au survol pour les badges non obtenus (nom + description + 🔒 Verrouillé), effet hover sur badges verrouillés

## [2026-03-21] — Badges déplacés sous les stats sur la page Progression

- `app/(app)/progression/page.tsx` — déplacement du `BadgesSummary` juste après le panneau stats (Tentatives/Réussite/Maîtrisées/Non commencées) au lieu de tout en bas de la page

## [2026-03-21] — Badges compacts : icônes denses + tooltip au survol

- `components/ui/achievement-badges.tsx` — refonte du mode grille : chaque badge est réduit à un cercle d'icône 36px (`h-9 w-9`), flex-wrap avec `gap-1.5`, hover `scale-125` avec tooltip CSS (label + description), badges verrouillés en `grayscale opacity-30`, catégories avec compteur inline

## [2026-03-21] — Toast notification pour badges débloqués

- `components/ui/badge-unlock-toast.tsx` — **nouveau** composant client : notification toast pour les badges nouvellement débloqués. Détection via localStorage, stagger 800ms, auto-dismiss 4.5s, max 3 visibles, animation entrée/sortie, click-to-dismiss, `aria-live="polite"`, responsive (pleine largeur mobile, bas-droite desktop), cleanup on unmount
- `app/(app)/tableau-de-bord/page.tsx` — intégration `BadgeUnlockToast`
- `app/(app)/progression/page.tsx` — intégration `BadgeUnlockToast`

## [2026-03-21] — Radar de progression, courbe d'évolution, polish badges & heatmap

- `components/ui/progression-radar-chart.tsx` — nouveau composant : radar chart SVG alimenté par `domainProgress`, couleurs par statut (acquis/en_cours/fragile/prioritaire), légende interactive, animation `radar-fill`, accessibilité ARIA complète avec `<title>` et `<desc>`
- `components/ui/score-evolution-chart.tsx` — nouveau composant : graphique SVG ligne + aire pour l'évolution du taux de réussite cumulé sur 30 jours, tooltip interactif au survol, grille graduée, labels axes, animation `chart-line-draw`, fallback si < 2 jours de données
- `types/domain.ts` — ajout du type `ScoreEvolutionEntry` (date, correctRate, cumulativeAttempts) et du champ `scoreEvolution` dans `DashboardData`
- `lib/dashboard.ts` — ajout de `buildScoreEvolution()` : agrégation cumulative du taux de réussite par jour, import de `ScoreEvolutionEntry`, intégration dans le retour de `buildDashboardData()`
- `components/ui/achievement-badges.tsx` — polish : animation `badge-pop` staggerée sur badges earned (compact + grid), hover `scale-[1.02]` et `shadow-panel`, barre de progression earned/total remplaçant le compteur texte
- `components/ui/activity-heatmap.tsx` — polish : animation `heatmap-fade`, `<title>` SVG pour accessibilité, `aria-label` enrichi avec nombre de réponses et période
- `app/globals.css` — 3 nouvelles animations : `radar-fill` (scale + fade 500ms), `chart-line-draw` (stroke-dashoffset 1.2s), `chart-fade-in` (translateY + fade 400ms) + ajout au bloc `prefers-reduced-motion`
- `app/(app)/progression/page.tsx` — intégration radar + courbe en grid 2 colonnes au-dessus du heatmap, fix HTML entities (`&eacute;` → caractères Unicode)
- `Opus.md` — mise à jour statut H. Visualisation enrichie → ✅ Implémenté, ajout session 3

## [2026-03-21] — 100 badges supplémentaires (116 au total)

- `components/ui/achievement-badges.tsx` — extension de 16 à 116 badges répartis en 4 catégories : Jalons (30), Maîtrise (35), Régularité (27), Engagement (24). Ajout du compteur par catégorie dans l'en-tête de section
- `lib/dashboard.ts` — refonte de `computeEarnedBadges()` : pré-calcul de métriques (bonnes réponses cumulées, erreurs, séries parfaites, jours parfaits, streak consécutif, volume hebdomadaire, retour après absence, activité weekend, diversité de niveaux/domaines), puis évaluation déclarative de 116 conditions
- `Opus.md` — mise à jour du statut badges

## [2026-03-21] — Audit qualité contenu : corrections terminologiques, linguistiques et difficulté

- `content/french-crpe-series-v3-a.ts` — types de phrases : 4→3 types (Eduscol 2021), exclamation reclassée en forme ; discours indirect : verbe introducteur passé au passé composé pour cohérence avec la concordance des temps ; retrait de « parataxe » des réponses acceptables (était le contraire de la bonne réponse)
- `content/french-crpe-series-v3-c.ts` — correction texte dupliqué dans common_mistake (« fragilesse » répété)
- `content/french-crpe-series-v3-d.ts` — remplacement de 6 exercices trop faciles (PP+être basique) par des cas CRPE-difficiles : verbes pronominaux avec COD/COI, fait+infinitif invariable, s'arroger exception ; « Corrige » → « Corrigez » (vouvoiement cohérent)
- `content/french-crpe-module.ts` — corrections : « polysenie » → « polysemie », « polysmiques » → « polysemiques », « Suggester » → « Suggerer »
- `supabase/migrations/20260335_fix_audit_content_corrections.sql` — migration SQL corrigeant en base les 5 exercices existants : types de phrases (IDs a305…001/002/006), parataxe (ID a301…007), discours indirect (ID a304…002)

## [2026-03-21] — Heatmap d'activité, badges & achievements, welcome-back, défi rapide

- `types/domain.ts` — ajout des types `DailyActivityEntry`, `EarnedBadge` et extension de `DashboardData` avec `dailyActivity`, `earnedBadges`, `lastActivityDate`
- `lib/dashboard.ts` — ajout de `buildDailyActivity()` (agrégation tentatives/jour) et `computeEarnedBadges()` (16 badges calculés à partir des données existantes : jalons, maîtrise, régularité, engagement)
- `components/ui/activity-heatmap.tsx` — **nouveau** composant client : heatmap SVG type GitHub (13 semaines × 7 jours, 5 niveaux d'intensité, labels mois/jours, tooltip au survol, responsive)
- `components/ui/achievement-badges.tsx` — **nouveau** composant : grille de 16 badges avec état gagné/verrouillé, catégorisés (Jalons, Maîtrise, Régularité, Engagement), mode compact pour dashboard
- `app/(app)/tableau-de-bord/page.tsx` — message welcome-back Mocca (≥ 3 jours d'absence), carte « Défi rapide » avec CTA, panneau heatmap, section badges compacts, renommage « Activité récente » → « Dernières réponses »
- `app/(app)/progression/page.tsx` — ajout du calendrier d'activité (heatmap) et de la grille complète des badges avec progression
- `app/globals.css` — animations `badge-pop` et `heatmap-fade` + support `prefers-reduced-motion`
- `Opus.md` — mise à jour statuts badges (🔶), heatmap (🔶), Mocca welcome-back (✅), défi rapide (🔶) + ajout section « Implémentations session 2 »
- `CHANGELOG.md` — entrée de session

## [2026-03-21] — Audit typographie : cohérence des polices d'écriture

- `CLAUDE.md` — section Typographie mise à jour : Manrope et Cormorant Garamond documentées comme polices principales, Avenir Next/Segoe UI/Iowan Old Style/Palatino Linotype comme fallbacks
- `features/diagnostic/components/radar-chart.tsx` — ajout de `var(--font-sans)` en tête des 3 stacks fontFamily hardcodés dans le SVG (cohérence avec le reste de l'app)
- `stories/page.css` — remplacement de Nunito Sans par le stack projet (`var(--font-sans)`)
- `stories/header.css` — idem
- `stories/button.css` — idem
- `app/globals.css` — suppression de la déclaration `font-family` dupliquée sur body (déjà gérée par la classe Tailwind `font-sans` dans layout.tsx)

## [2026-03-21] — Fix navigation exercices : scroll auto + bouton dernière question

- `features/exercises/components/exercise-player.tsx` — ajout scroll automatique vers le feedback après soumission d'une réponse, scroll vers le haut lors de la navigation entre questions, correction du bouton "Voir le récapitulatif" bloqué sur la dernière question (redirige vers la première question non répondue si nécessaire)

## [2026-03-21] — Audit terminologique Éduscol 2021 (session 3) — 13 corrections

### Terminologie « donc = adverbe » (6 conjonctions, pas 7)
- `supabase/seed.sql` — explication « les 7 conjonctions… donc » → 6 conjonctions + donc = adverbe
- `supabase/migrations/20260316_mocca_voice_explanations.sql` — 3 explications « 7 conjonctions… donc » → 6 + adverbe
- `supabase/migrations/20260323_seed_v3_series_300_questions.sql` — exercice « Citez les sept conjonctions » → six, donc exclu des réponses
- `supabase/migrations/20260323_seed_v3_series_300_questions.sql` — distracteur QCM « conjonction 'donc' » → « adverbe 'donc' »
- `supabase/migrations/20260329_fix_tri_categories_format.sql` — exercice tri : « donc » mappé comme coord → remplacé par « or »
- `supabase/migrations/20260329_fix_tri_categories_format.sql` — common_mistake « Mais, Ou, Et, Donc, Or, Ni, Car » → 6 conj. + avertissement
- `supabase/seed_content_grammaire_enrich.sql` — mnémotechnique « Mais ou et donc or ni car » → 6 conj. + donc = adverbe
- `content/french-crpe-series-v3-a.ts` — distracteur QCM « conjonction 'donc' » → « adverbe 'donc' »

### Terminologie « forme positive / forme active »
- `content/french-crpe-series-v3-k.ts` — QCM choix « de forme positive, active » → « positive, active » (sans le mot « forme »)
- `content/french-crpe-series-v3-k.ts` — explication ajout avertissement « on ne dit pas forme positive ni forme active »

### Terminologie « tient lieu d'un GN » (pas « remplace un nom »)
- `content/french-crpe-series-v3-d.ts` — « le pronom remplace 'le livre' » → « le pronom relatif reprend 'le livre' »
- `supabase/seed_content_grammaire_enrich.sql` — QCM choix « remplace un nom » → « tient lieu d'un GN »

### Orthographe — accents manquants
- `content/fiches/analyse-langue-phrase-complexe-types-sprint.ts` — ajout de tous les accents français manquants (≈40 mots corrigés : indépendante, subordonnée, complétive, antécédent, etc.)

## [2026-03-21] — Refonte UX engagement : confetti, streak, Mocca enrichie, dashboard motivationnel

Implémentation des recommandations de l'audit `opus.md` (sections 3, 4, 5.B, 5.I) pour améliorer le ressenti émotionnel, les micro-interactions et la motivation.

### Nouveau composant : Confetti
- `components/ui/confetti.tsx` — **nouveau** : animation confetti CSS multi-couleurs (60 particules, 3 formes, drift aléatoire) déclenchée sur maîtrise de série (≥85%). Respecte `prefers-reduced-motion`.

### Exercise Player — Streak, Mocca & feedback
- `features/exercises/components/exercise-player.tsx` — tracking des réponses correctes consécutives avec indicateur visuel (badge "X d'affilée" dès 3, flamme animée dès 5)
- `features/exercises/components/exercise-player.tsx` — messages contextuels Mocca entre les questions : mi-parcours, dernières questions, streak en cours
- `features/exercises/components/exercise-player.tsx` — célébration streak à 5 et 10 réponses consécutives (banner animé avec Mocca happy)
- `features/exercises/components/exercise-player.tsx` — feedback titles variés et chaleureux (4 variantes correct, 3 variantes incorrect, messages streak)
- `features/exercises/components/exercise-player.tsx` — écran de complétion enrichi : banner célébration maîtrise, confetti, score animé, messages gradués (5 paliers), badge mastery avec shine

### Dashboard — Motivation & chaleur
- `app/(app)/tableau-de-bord/page.tsx` — hero banner personnalisé : message contextuel (bienvenue / progression / série maîtrisée)
- `app/(app)/tableau-de-bord/page.tsx` — indicateur "Objectif du jour" (SVG ring animé, 15 questions/jour) dans le hero
- `app/(app)/tableau-de-bord/page.tsx` — empty states enrichis (acquis : cible + message motivant, activité : icône + message accueillant)
- `app/(app)/tableau-de-bord/page.tsx` — import `MASTERY_THRESHOLD` pour cohérence des seuils

### Animations CSS
- `app/globals.css` — 5 nouvelles animations : `confetti-fall`, `streak-pulse`, `score-reveal`, `mastery-shine`, `fire-glow`
- `app/globals.css` — toutes désactivées via `prefers-reduced-motion: reduce`

---

## [2026-03-21] — 25 nouvelles fiches sprint + 5 séries (50 questions) + audit terminologique Éduscol 2021

### Corrections terminologiques (conformité Éduscol 2021)
- `content/fiches/grammaire-nature-mots-sprint.ts` — « donc » retiré des conjonctions de coordination (c'est un adverbe)
- `content/fiches/grammaire-phrase-complexe-sprint.ts` — « donc » retiré du oneLiner + « car » au lieu de « donc »
- `content/fiches/grammaire-phrase-simple-sprint.ts` — « injonctif » → « impératif », « type exclamatif » → « forme exclamative »
- `content/fiches/grammaire-types-formes-phrases-sprint.ts` — « forme positive » supprimé (Éduscol : la phrase de base est positive, pas de "forme positive")
- `content/french-crpe-series-v3-a.ts` — « 7 conjonctions dont donc » → « 6 conjonctions (donc = adverbe) »
- `content/french-crpe-series-v3-c.ts` — « verbes d'état » → « verbes attributifs »
- `content/french-crpe-series-v3-e.ts` — « remplace un nom » → « tient lieu d'un GN »
- `content/french-crpe-series-v3-f.ts` — « forme positive » → « positive »
- `supabase/seed_content_grammaire.sql` — « forme non conjuguée » → « mode infinitif » ; « remplace un nom » → « tient lieu d'un GN »
- `supabase/seed_content_grammaire_enrich.sql` — « remplace un nom » → « tient lieu d'un GN »

### Nouvelles séries d'exercices (V3-K : 5 séries, 50 questions)
- `content/french-crpe-series-v3-k.ts` — **nouveau** : 5 séries variées (QCM + vrai/faux + réponse courte)
  1. Attribut du sujet et verbes attributifs (grammaire, 10 questions)
  2. Phrases atypiques et types/formes de phrases (grammaire, 10 questions)
  3. Polysémie, homonymie et relations sémantiques (lexique, 10 questions)
  4. Reprises anaphoriques et cohésion textuelle (compréhension de texte, 10 questions)
  5. L'impératif et les modes non personnels (conjugaison, 10 questions)
- `content/french-crpe-series.ts` — import et export du batch V3-K

### Nouvelles fiches sprint — Grammaire (10 fiches)
- `content/fiches/grammaire-types-formes-phrases-sprint.ts` — types (3 seuls) et formes de phrases
- `content/fiches/grammaire-expansions-nom-sprint.ts` — épithète, complément du nom, apposition
- `content/fiches/grammaire-determinants-sprint.ts` — 10 sous-catégories de déterminants, pièges partitif/contracté
- `content/fiches/grammaire-pronoms-sprint.ts` — 6 catégories + pronoms adverbiaux en/y
- `content/fiches/grammaire-attribut-verbes-attributifs-sprint.ts` — attribut du sujet, verbes attributifs (terme officiel)
- `content/fiches/grammaire-attribut-sujet-sprint.ts` — fiche complémentaire attribut
- `content/fiches/grammaire-apposition-sprint.ts` — apposition, relative épithète vs apposée
- `content/fiches/orthographe-majuscules-ponctuation-sprint.ts` — majuscules et ponctuation

### Nouvelles fiches sprint — Conjugaison (4 fiches)
- `content/fiches/conjugaison-groupes-verbes-sprint.ts` — 1er/2e/3e groupes, piège « aller »
- `content/fiches/conjugaison-imperatif-sprint.ts` — mode impératif, pas de -s au 1er groupe
- `content/fiches/conjugaison-passe-compose-imparfait-sprint.ts` — aspect accompli vs non accompli
- `content/fiches/conjugaison-voix-pronominale-sprint.ts` — 4 sous-types pronominaux

### Nouvelles fiches sprint — Lexique (5 fiches)
- `content/fiches/lexique-denotation-connotation-sprint.ts` — dénotation (sens objectif) vs connotation (valeurs subjectives)
- `content/fiches/lexique-synonymie-antonymie-sprint.ts` — synonymie contextuelle, 3 types d'antonymes
- `content/fiches/lexique-polysemie-homonymie-sprint.ts` — polysémie vs homonymie, homographes vs homophones
- `content/fiches/lexique-hyperonymie-hyponymie-sprint.ts` — relation d'inclusion sémantique, co-hyponymes
- `content/fiches/lexique-familles-mots-sprint.ts` — base, radical, racine, allomorphie

### Nouvelles fiches sprint — Compréhension / Analyse / Didactique (3 fiches)
- `content/fiches/comprehension-texte-coherence-textuelle-sprint.ts` — cohérence et cohésion textuelle
- `content/fiches/analyse-langue-anaphores-sprint.ts` — les anaphores
- `content/fiches/didactique-fluence-lecture-sprint.ts` — fluence en lecture (débit, exactitude, prosodie)

### Intégration
- `content/fiches/index.ts` — import et enregistrement de toutes les nouvelles fiches dans `allFiches`

## [2026-03-20] — Renforcement Didactique : 5 séries (50 questions) + 5 fiches sprint

### Nouvelles séries didactiques (V3-J)
- `content/french-crpe-series-v3-j.ts` — **nouveau** : 5 séries Didactique du français (50 questions)
  1. L'oral à l'école primaire (langage d'évocation, débat réglé, exposé)
  2. Littérature de jeunesse à l'école (mise en réseau, carnet de lecteur, listes MEN)
  3. Stratégies de compréhension en lecture (Narramus, Lectorino, enseignement réciproque)
  4. La dictée et ses formes didactiques (négociée, phrase du jour, ANG, Catach)
  5. L'écriture au cycle 2 (geste graphique, cursive, écriture inventée Ferreiro)
- `content/french-crpe-series.ts` — import et export du batch V3-J

### Nouvelles fiches sprint didactiques
- `content/fiches/didactique-oral-ecole-sprint.ts` — **nouveau** : fiche sprint "L'oral à l'école primaire"
- `content/fiches/didactique-litterature-jeunesse-sprint.ts` — **nouveau** : fiche sprint "Littérature de jeunesse à l'école"
- `content/fiches/didactique-strategies-comprehension-sprint.ts` — **nouveau** : fiche sprint "Stratégies de compréhension en lecture"
- `content/fiches/didactique-dictee-formes-sprint.ts` — **nouveau** : fiche sprint "La dictée et ses formes didactiques"
- `content/fiches/didactique-ecriture-cycle2-sprint.ts` — **nouveau** : fiche sprint "L'écriture au cycle 2"
- `content/fiches/index.ts` — import et enregistrement des 5 nouvelles fiches dans `allFiches`

## [2026-03-20] — Audit contenu + 13 nouvelles séries (130 questions) + corrections terminologiques

### Corrections terminologiques Éduscol 2021
- `content/french-diagnostic-questions.ts` — 4 occurrences de « verbe d'état » → « verbe attributif »
- `content/french-crpe-series-v3-d.ts` — 3 occurrences de « verbe d'état » → « verbe attributif »
- `content/fiches/grammaire-fonctions-sprint.ts` — 3 occurrences de « verbe d'état » → « verbe attributif »
- `content/fiches/grammaire-voix-passive-sprint.ts` — 1 occurrence de « verbe d'état » → « verbe attributif »

### Nouvelles séries d'exercices (4 fichiers, 13 séries, 130 questions)
- `content/french-crpe-series-v3-f.ts` — **nouveau** : 3 séries Grammaire (30 questions)
  1. Formes de phrases (négative, passive, emphatique, impersonnelle, exclamative)
  2. Expansion du nom (épithète, complément du nom, apposition)
  3. Complément d'agent et attribut du COD
- `content/french-crpe-series-v3-g.ts` — **nouveau** : 4 séries Conjugaison + Compréhension (40 questions)
  1. Les trois groupes de verbes
  2. Transitivité du verbe (transitif direct/indirect, intransitif, attributif)
  3. Morphologie verbale (radical, désinence, marques)
  4. Comprendre un texte documentaire
- `content/french-crpe-series-v3-h.ts` — **nouveau** : 3 séries Lexique (30 questions)
  1. Hyperonymie, hyponymie et relations sémantiques
  2. Familles de mots (base, radical, racine)
  3. Sens figuré et évolution sémantique (métaphore, métonymie, dénotation/connotation)
- `content/french-crpe-series-v3-i.ts` — **nouveau** : 3 séries Didactique (30 questions)
  1. Enseignement explicite de la grammaire à l'école
  2. Didactique de la production d'écrits
  3. Fluence et lecture à voix haute

### Intégration
- `content/french-crpe-series.ts` — import et export des 4 nouveaux batches (V3-F, V3-G, V3-H, V3-I)

## [2026-03-20] — 8 nouvelles séries d'exercices variés (80 questions)

- `supabase/migrations/20260334_seed_series_variees.sql` — **nouveau fichier** : 80 exercices répartis en 8 séries, types `tri_categories` et `surlignage_propositions`, conformes à la terminologie Éduscol 2021. Séries :
  1. **Types et formes de phrases** (tri) — 10 Q, piège exclamation = forme
  2. **Constituants GS / GV / GC** (surlignage) — 10 Q, formule P = [GS + GV] (+ GC)
  3. **Formation des mots** (tri) — 10 Q, dérivation / composition / relations sémantiques
  4. **Les 8 classes de mots** (tri) — 10 Q, piège « donc » = adverbe
  5. **Voix, modes et temps** (tri) — 10 Q, piège conditionnel = indicatif
  6. **Nature vs Fonction** (tri) — 10 Q, distinction fondamentale CRPE
  7. **Phrase complexe : propositions** (surlignage) — 10 Q, subordination / coordination / juxtaposition
  8. **Fonctions grammaticales** (surlignage) — 10 Q, sujet / COD / COI / attribut / complément d'agent

## [2026-03-19] — Audit terminologique + corrections conformité Éduscol 2021

- `supabase/migrations/20260332_fix_terminology_eduscol_2021.sql` — **nouvelle migration corrective** : mise en conformité des exercices avec la terminologie officielle (Éduscol 2021). Corrige 3 erreurs critiques : (1) exclamation reclassée comme FORME de phrase (3 types, pas 4), (2) « donc » reclassé comme adverbe (6 conjonctions de coordination, pas 7), (3) « verbe copule/d'état » → « verbe attributif »
- `supabase/seed_content_analyse_langue_v2.sql` — Q3 et Q5 sur les types de phrases : réponses corrigées (vrai→faux) et explications réécrites
- `supabase/seed_content_grammaire.sql` — explications corrigées (3 types, 6 conjonctions)
- `supabase/seed_content_grammaire_v2.sql` — série 56 (types/formes) et série 60 (coordination) : explications et instructions corrigées
- `supabase/seed_content_grammaire_v3.sql` — série 66 Q3 : « verbe copule » → « verbe attributif »
- `app/(app)/ressources/glossaire/page.tsx` — entrées « Coordination », « Conjonction de coordination » et « Type de phrase » mises à jour selon Éduscol 2021
- `supabase/migrations/20260333_fix_terminology_eduscol_part2.sql` — **migration complémentaire** : (1) « adjectif qualificatif » → « adjectif » dans ~10 labels de choix QCM, (2) « épithète détachée » → « apposition » dans ~6 exercices, (3) « verbe d'état » → « verbe attributif » dans ~6 exercices, (4) conditionnel = temps de l'indicatif (pas un mode)
- `supabase/seed.sql` — labels de choix « adjectif qualificatif » → « adjectif », « verbe d'état » → « verbe attributif »
- `supabase/seed_content_analyse_langue_v3.sql` — séries 92 : « verbe d'état » → « verbe attributif », « épithète détachée » → « apposition »
- `supabase/seed_content_conjugaison.sql` — conditionnel : « ce mode » → « ce temps » + note Éduscol
- `supabase/seed_content_conjugaison_v3.sql` — « épithète détachée » → « apposition » + choix QCM « Conditionnel présent » → « Infinitif » (le conditionnel n'est pas un mode)
- `supabase/seed_content_grammaire_enrich.sql` — « Adjectif qualificatif » → « Adjectif », « Verbe d'état » → « Verbe attributif », « Conditionnel » → « Indicatif conditionnel » dans les choix de modes
- `supabase/seed_content_orthographe.sql` — « adjectif qualificatif » → « adjectif » dans les explications
- `supabase/seed_content_orthographe_v2.sql` — « adjectif qualificatif » → « adjectif » dans les explications
- `supabase/seed_content_comprehension_lexique.sql` — « adjectif qualificatif » → « adjectif » dans les choix QCM
- `app/(app)/ressources/glossaire/page.tsx` — « Adjectif qualificatif » → « Adjectif », « verbe d'état » → « verbe attributif »

## [2026-03-19] — Référentiel terminologie grammaticale officielle Éduscol

- `Terminologie-officielle-Eduscol.md` — **nouveau fichier** : synthèse structurée de la terminologie grammaticale officielle du Ministère de l'Éducation nationale (source : *La grammaire du français — Terminologie grammaticale*, Éduscol, 2021). Couvre les classes de mots, fonctions grammaticales, conjugaison, types/formes de phrases, lexique, tableaux de synthèse nature/fonction, et points de vigilance terminologique pour le CRPE (termes officiels vs termes non recommandés).

## [2026-03-19] — Nouveau type d'exercice : surlignage / délimitation de propositions

- `types/domain.ts` — ajout du type `surlignage_propositions` et du mode de réponse `highlight_groups` avec `HighlightGroup`
- `lib/constants.ts` — ajout du label « Délimitation de propositions »
- `content/french-crpe-series.ts` — ajout du label dans le map local des types d'exercice
- `features/exercises/components/highlight-propositions-input.tsx` — **nouveau composant** : interface de surlignage interactif — chaque segment de phrase est un chip cliquable qui cycle à travers des couleurs (bleu/ambre/vert/violet), une par proposition
- `features/exercises/components/exercise-player.tsx` — intégration du nouveau composant dans le player et la section review
- `features/exercises/shared/evaluation.ts` — support du mode `highlight_groups` dans l'évaluation et le label de correction
- `supabase/migrations/20260330_add_surlignage_type.sql` — ajout de la valeur enum `surlignage_propositions`
- `supabase/migrations/20260331_seed_surlignage_propositions.sql` — seed de 10 questions (coordination, juxtaposition, relatives, complétives, circonstancielles, phrases à 3 propositions)
- `app/(marketing)/offre/page.tsx` — fix lint apostrophe préexistant

## [2026-03-19] — Correction format tri par catégories : 100 QCM → 60 vrais exercices drag-and-drop

- `supabase/migrations/20260329_fix_tri_categories_format.sql` — suppression des 100 exercices QCM/vrai-faux/réponse courte qui portaient le label « Tri par catégories » sans en respecter le format ; remplacement par 60 vrais exercices `tri_categories` (mode `categorization`, drag-and-drop) répartis sur 10 séries : nom/verbe/adjectif, déterminant/pronom/adverbe, mots de liaison, variable/invariable, familles de déterminants, familles de pronoms, formes verbales, le mot « tout », le mot « que », mots à double nature

## [2026-03-19] — Audit diagnostic : corrections de fond, qualité banque, cohérence produit

- `content/french-diagnostic-questions.ts` — correction erreur de fond `diag-lex-7` (avocat = homonymie, non polysémie) ; suppression du `.slice(0, 10)` dans le générateur (toute la banque est maintenant tirée) ; réécriture des 11 questions classées A (trop faciles) : grammaire-8, ortho-5, lex-3/4/8/10, comp-4/9, did-1/2/8 — passages de définitions frontales à des cas d'application et distracteurs plus proches
- `features/diagnostic/components/diagnostic-client.tsx` — harmonisation durée : 8 min → 20 min (titre et carte durée)
- `features/dashboard/components/onboarding-banner.tsx` — harmonisation durée : ~30 min → ~20 min
- `app/(marketing)/offre/page.tsx` — correction banque annoncée : "plus de 200 questions" → "plus de 100 questions" (valeur réelle : 105)

## [2026-03-19] — Refonte structurelle UX : diagnostic, home, offre, navigation

- `features/diagnostic/components/diagnostic-client.tsx` — ajout d'un écran d'introduction (durée, nb questions, gratuité, bénéfice) avec CTA « Commencer le diagnostic » ; passation isolée dans un overlay plein écran (header/footer masqués, barre de progression fixe, bouton « Quitter ») ; suppression de la barre de progression inline redondante
- `features/homepage/lib/default-homepage.ts` — suppression des mini-steps redondants (doublonnaient les 3 grandes cartes « Comment ça marche »)
- `features/homepage/components/renderer.tsx` — suppression du rendu de la grille mini-steps dans BenefitsSection
- `app/(marketing)/offre/page.tsx` — restructuration : comparatif principal 2 colonnes (Gratuit vs Premium mensuel recommandé) ; journalier/semainier relégués en section secondaire « Besoin d'un accès ponctuel ? »
- `components/site-header.tsx` — suppression du lien « Domaines » (section cachée sur la home)
- `components/site-footer.tsx` — suppression des liens vers pages protégées (/francais, /progression, /ressources/glossaire, /tableau-de-bord) ; restructuration en Navigation publique + Le site + Légal

## [2026-03-19] — Tri par catégories : drag-and-drop réel (@dnd-kit)

- `features/exercises/components/tri-categories-input.tsx` — réécriture complète avec `@dnd-kit/core` : `DndContext` + `PointerSensor` (souris et touch), `useDraggable` sur chaque étiquette, `useDroppable` sur la banque et chaque colonne, `DragOverlay` flottant avec rotation ; l'étiquette originale s'estompe (`opacity-40`) pendant le glisser ; les colonnes et la banque s'illuminent (`ring-2 ring-accent/40`) au survol ; correction vert/rouge et liste d'erreurs préservées
- `content/french-crpe-series.ts` — ajout de `tri_categories` dans `MODULE_EXERCISE_TYPE_LABELS` (corrige erreur TypeScript `TS2741`)

## [2026-03-19] — Vrai tri par catégories interactif (clic-pour-placer)

- `types/domain.ts` — ajout de `"tri_categories"` dans `ExerciseType` ; ajout du type `CategorizationCategory` et du mode `"categorization"` dans `ExpectedAnswer` (champs : `categories`, `mapping`)
- `lib/constants.ts` — ajout du label `"Tri par catégories"` dans `EXERCISE_TYPE_LABELS` et `EXERCISE_TYPE_OPTIONS`
- `features/exercises/server/queries.ts` — `normalizeExpectedAnswer` : nouveau cas `categorization` qui hydrate correctement les champs `categories` et `mapping` depuis le JSONB Supabase
- `features/exercises/shared/evaluation.ts` — `buildExpectedAnswerLabel` : génère un résumé lisible par catégorie (ex. "Nom : soleil, maison — Verbe : écrire, courir") ; `evaluateExerciseAnswer` : évalue le JSON de placement soumis contre le mapping attendu
- `features/exercises/components/tri-categories-input.tsx` — création du composant interactif : banque de mots cliquables, colonnes par catégorie avec bouton "Placer ici", coloration vert/rouge après correction, liste des erreurs de classement ; aucune dépendance DnD (compatible mobile)
- `features/exercises/components/exercise-player.tsx` — branchement de `TriCategoriesInput` pour `exercise_type === "tri_categories"` ; ajout de `triResetKey` pour réinitialiser le composant au retry ; gestion de l'affichage "Classement soumis" dans le récapitulatif fin de série
- `supabase/migrations/20260319_add_tri_categories_type.sql` — `ALTER TYPE public.exercise_type ADD VALUE IF NOT EXISTS 'tri_categories'` (transaction séparée obligatoire)
- `supabase/migrations/20260319_seed_tri_nature_mots.sql` — 6 exercices `tri_categories` : Nom/Verbe/Adjectif, Déterminant/Pronom/Adverbe, mots de liaison, Variable/Invariable, formes verbales, natures du mot « tout »
- `content/french-crpe-series-tri-nature-mots.ts` — source TypeScript canonique de la série (topic_key `tri_nature_mots`, session DB `session-tri_nature_mots-Intermediaire-1`)

## [2026-03-19] - 10 series "Tri par categories" pour la grammaire + garde-fous mobile

- `content/french-crpe-series-v3-e.ts` - creation d'un nouveau batch V3-E : 10 series "Tri par categories" (100 questions) centrees sur la nature des mots, les familles grammaticales, les mots de liaison, les formes verbales et les mots pieges (`tout`, `que`, mots a double nature)
- `content/french-crpe-series.ts` - ajout du batch `seriesV3BatchE` dans l'agregat des series pour alimenter le mode demo et garder la source de contenu coherente
- `supabase/migrations/20260325_seed_tri_categories_grammaire.sql` - migration additive generee depuis `v3-e` pour inserer 100 nouvelles questions de grammaire en base sans toucher au schema
- `components/ui/card.tsx` - ajout de `break-words` sur les titres de cartes pour eviter les debordements en mobile sur les intitules longs
- `features/exercises/components/exercise-player.tsx` - ajout de `break-words` sur le titre de serie et l'intitule de question pour securiser l'affichage smartphone
- `features/dashboard/components/session-progress-card.tsx` - ajout de `break-words` sur les titres de series dans les cartes de progression
## [2026-03-19] — 10 séries de correction d'erreurs (batch D) + simplification header

- `components/site-header.tsx` — suppression du bouton "Créer un compte gratuit" ; CTA unique "Connexion" (desktop + mobile) ; espacement nav amélioré (gap-2, px-5, py-3, text-[0.9375rem])
- `features/homepage/lib/default-homepage.ts` — suppression de "Gratuit, sans carte bancaire" dans metaItems du hero
- `content/french-crpe-series-v3-d.ts` — création : 10 séries de correction d'erreurs (orders 51–60), ~100 questions correction_orthographique/QCM/vrai-faux ; thèmes : PP avec être, homophones courants, infinitif vs -é, accord adjectif, PC vs imparfait, discours indirect, tout/même, pronoms relatifs, accord SV complexes, homophones avancés
- `content/french-crpe-series.ts` — import de seriesV3BatchD déjà présent

## [2026-03-19] — Refonte visuelle majeure du radar chart

- `features/diagnostic/components/radar-chart.tsx` — refonte complète : viewBox 560×450 (fin du clipping des labels), algorithme greedy de découpe (max 14 chars/ligne), fill radialGradient (centre transparent → bord 42% opaque), anneaux concentriques en alternance de fills, vertex dots mastery-colorés avec drop-shadow SVG et point blanc central, stroke 3px round, typo labels 12px bold + % coloré par maîtrise, suppression des labels d'axe internes parasites
- `features/diagnostic/components/diagnostic-client.tsx` — panel radar redesigné en fond sombre (#1C1714) avec titre clair, légende en pills colorées dark-themed (vert/ambre/rouge)

## [2026-03-19] — Radar chart des résultats du diagnostic

- `features/diagnostic/components/radar-chart.tsx` — création du composant SVG radar "toile d'araignée" : N axes (un par sous-domaine), points colorés par niveau de maîtrise (vert/orange/rouge), légende intégrée
- `features/diagnostic/components/diagnostic-client.tsx` — remplacement du pavé "Lecture par sous-domaine" (liste) par le radar chart ; "Points d'appui" et "Priorités immédiates" passent en grille 2 colonnes en dessous

## [2026-03-19] — Diagnostic public sans compte (suppression du gate d'inscription)

- `app/(marketing)/diagnostic/page.tsx` — création de la route publique du diagnostic : `getOptionalUser()`, redirect tableau-de-bord si diagnostic déjà fait (connecté), sinon rendu de `DiagnosticClient` sans auth
- `app/(app)/diagnostic/page.tsx` — remplacé par un `redirect("/diagnostic")` pour compatibilité avec les liens existants
- `features/diagnostic/components/diagnostic-client.tsx` — ajout prop `isAuthenticated` (défaut `true`) ; en mode anonyme : skip de l'appel API, affichage d'un CTA "Créer mon compte gratuit" / "J'ai déjà un compte" au lieu des boutons dashboard
- `features/homepage/lib/default-homepage.ts` — CTA guest hero et CTA final pointent désormais vers `/diagnostic` au lieu de `/inscription`

## [2026-03-19] — Suppression des indications de temps et du terme "Sprint"

- `features/fiches/components/fiche-header.tsx` — suppression du bloc Clock/estimatedMinutes, renommage du badge "Sprint 5 min" → "Révision express"
- `features/fiches/components/fiche-card.tsx` — suppression du Clock/estimatedMinutes dans FicheRow et FicheCard, renommage "Sprint" → "Révision express", nettoyage import Clock
- `app/(app)/exercices/page.tsx` — suppression des badges et labels affichant `estimatedMinutes min`
- `app/(app)/exercices/[id]/page.tsx` — suppression du badge `estimatedMinutes min`
- `features/dashboard/components/session-progress-card.tsx` — suppression de `estimatedMinutes min` dans la méta des sessions
- `app/(app)/tableau-de-bord/page.tsx` — suppression de la durée estimée dans le plan du jour et les items de plan
- `content/fiches/*-sprint.ts` (46 fichiers) — suppression des champs `subtitle` "Révision express — X min"
## [2026-03-18] - Priorite 4 : analyse de la langue enrichie (2 fiches free, 2 fiches premium, 1 serie free)

- `content/fiches/analyse-langue-phrase-complexe-types-sprint.ts` - creation d'une fiche Sprint free sur les types de propositions dans la phrase complexe, avec distinctions independantes / principale / subordonnee et pieges CRPE
- `content/fiches/analyse-langue-complements-circonstanciels-sprint.ts` - creation d'une fiche Sprint free sur l'identification des complements circonstanciels, leurs tests de mobilite/suppressibilite et leur distinction avec les complements essentiels
- `content/fiches/analyse-langue-voix-active-passive-sprint.ts` - creation d'une fiche Sprint premium sur la voix active/passive, les conditions de transformation et les confusions frequentes avec les constructions attributives
- `content/fiches/analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint.ts` - creation d'une fiche Sprint premium sur la distinction completives / circonstancielles, les conjonctions de subordination et les fonctions attendues au CRPE
- `content/fiches/index.ts` - ajout des 4 nouvelles fiches analyse_langue dans `allFiches` et raccordement des imports associes
- `content/french-crpe-series-v3-c.ts` - ajout d'une serie free `phrase_complexe_types` (10 questions) pour rendre le domaine `analyse_langue` visible aux utilisateurs gratuits
- `supabase/migrations/20260324_seed_phrase_complexe_types_free.sql` - creation d'une migration additive qui insere en base la nouvelle serie free `phrase_complexe_types`
Format : `## [YYYY-MM-DD] — Description courte`
Entrées en ordre chronologique inverse (plus récent en haut).
**Les agents Claude doivent ajouter une entrée à chaque session ayant modifié du code.**

---

## [2026-03-18] — Migration SQL V3 : 300 questions en base (30 séries) — corrigée et appliquée

- `supabase/migrations/20260323_seed_v3_series_300_questions.sql` — renommé depuis 20260318 (conflit de version) + correctifs SQL : 2 patterns `«l'''` → `«l''»` (guillemet manquant), ajout `ALTER TABLE ... ADD COLUMN IF NOT EXISTS common_mistake text` ; migration appliquée avec succès en production via `supabase db push`
- `supabase/migrations/20260318_seed_v3_series_300_questions.sql` — supprimé (remplacé par 20260323)

---

## [2026-03-18] — Migration SQL V3 : 300 questions en base (30 séries)

- `supabase/migrations/20260318_seed_v3_series_300_questions.sql` — créé : migration complète 300 questions CRPE Français V3 (30 séries × 10 questions), couvrant Batch A (phrase complexe, subordonnées, discours, types de phrases, participe passé, pluriel, accords, tout/même, ponctuation), Batch B (subjonctif, concordance des temps, aspect verbal, conditionnel, impératif, champs lexicaux, registres, polysémie, connecteurs, majuscules) et Batch C (préfixes/suffixes, dérivation, composition, énonciation, types de textes, anaphores, cohérence textuelle, schéma narratif, texte argumentatif, conscience phonologique) ; UUIDs a3/b3/c3, access_tier free, is_published true

---

## [2026-03-18] - Améliorations UI, corrections et mise à jour diagnostique

- `CLAUDE.md` — token accent mis à jour : vert → bleu (#4A6E8F)
- `components/app-shell.tsx` — logo remplacé par composant Image Next.js avec fichier /logo.png
- `app/(app)/fiches/page.tsx` — passage vouvoiement ("ton" → "votre", "Essaie" → "Essayez")
- `app/(app)/francais/[domain]/page.tsx` — correctif filtre niveau : `option.label` → `option.value`
- `app/(marketing)/mentions-legales/page.tsx` — correction grammaticale : "Toute" → "Tout signalement"
- `content/french-diagnostic-questions.ts` — questions diagnostiques grammaire/orthographe/lexique mises à niveau CRPE avancé (analyse syntaxique, dislocations, subordonnées complexes)
- `features/homepage/components/renderer.tsx` — section FAQ : support lien cliquable sur la note de bas de section
- `features/homepage/lib/blocks.ts` — ajout champ `noteLinkHref` optionnel au schéma FAQ
- `features/homepage/lib/default-homepage.ts` — FAQ mise à jour : réponses enrichies + lien mailto contact
- `supabase/migrations/20260322_update_faq_content.sql` — migration en attente : mise à jour contenu FAQ en base

---

## [2026-03-18] — Sprint contenu V3 : 30 séries + 20 fiches CRPE Français

- `content/french-crpe-series.ts` — intégration des 3 nouveaux batches V3 (imports + spread dans `frenchCrpeSeriesSeed`) ; total séries : 49 (19 existantes + 30 nouvelles)
- `content/french-crpe-series-v3-a.ts` — créé : 10 séries × 10 questions (phrase complexe, subordonnées circonstancielles, complétives, discours direct/indirect, types de phrases, PP avec avoir, pluriel noms composés, accord adjectif couleur, tout/même/quelque, ponctuation)
- `content/french-crpe-series-v3-b.ts` — créé : 10 séries × 10 questions (subjonctif, concordance des temps, aspect verbal, conditionnel, impératif, champs lexicaux, registres de langue, polysémie/homonymie, connecteurs logiques, majuscules)
- `content/french-crpe-series-v3-c.ts` — créé : 10 séries × 10 questions (préfixes/suffixes, dérivation, composition, énonciation, types de textes, anaphores, cohérence textuelle, schéma narratif, texte argumentatif, conscience phonologique)
- `content/fiches/grammaire-phrase-complexe-sprint.ts` — nouvelle fiche sprint
- `content/fiches/grammaire-voix-passive-sprint.ts` — nouvelle fiche sprint
- `content/fiches/grammaire-discours-direct-indirect-sprint.ts` — nouvelle fiche sprint
- `content/fiches/grammaire-subordonnees-circonstancielles-sprint.ts` — nouvelle fiche sprint
- `content/fiches/orthographe-participe-passe-avoir-sprint.ts` — nouvelle fiche sprint
- `content/fiches/orthographe-pluriel-noms-composes-sprint.ts` — nouvelle fiche sprint
- `content/fiches/orthographe-tout-meme-sprint.ts` — nouvelle fiche sprint
- `content/fiches/conjugaison-subjonctif-sprint.ts` — nouvelle fiche sprint
- `content/fiches/conjugaison-concordance-temps-sprint.ts` — nouvelle fiche sprint
- `content/fiches/conjugaison-conditionnel-sprint.ts` — nouvelle fiche sprint
- `content/fiches/lexique-registres-langue-sprint.ts` — nouvelle fiche sprint
- `content/fiches/lexique-champs-lexicaux-sprint.ts` — nouvelle fiche sprint
- `content/fiches/lexique-connecteurs-sprint.ts` — nouvelle fiche sprint
- `content/fiches/analyse-langue-derivation-sprint.ts` — nouvelle fiche sprint
- `content/fiches/analyse-langue-enonciation-sprint.ts` — nouvelle fiche sprint
- `content/fiches/comprehension-texte-schema-narratif-sprint.ts` — nouvelle fiche sprint
- `content/fiches/comprehension-texte-argumentatif-sprint.ts` — nouvelle fiche sprint
- `content/fiches/didactique-conscience-phonologique-sprint.ts` — nouvelle fiche sprint
- `content/fiches/didactique-erreurs-eleves-sprint.ts` — nouvelle fiche sprint
- `content/fiches/didactique-differentiation-sprint.ts` — nouvelle fiche sprint
- `content/fiches/index.ts` — 20 imports + 20 entrées ajoutés dans `allFiches` ; total : 43 fiches

---

## [2026-03-18] — Seed V3 batch C : 10 séries, 100 questions (morphologie, énonciation, types de textes, cohérence, narratif, argumentation, conscience phonologique)

- `content/french-crpe-series-v3-c.ts` — créé : 10 séries × 10 questions niveau CRPE couvrant préfixes/suffixes/radical, dérivation, composition des mots, énonciation et modalités, types et genres de textes, anaphores et substitution lexicale, cohérence et cohésion textuelle, schéma narratif, texte argumentatif, conscience phonologique ; mélange QCM / Vrai-Faux / réponse courte ; explications rigoureuses et common_mistake rédigés ; 100 IDs uniques v3c-*

---

## [2026-03-18] — Seed V3 batch B : 10 séries, 100 questions (conjugaison, lexique, orthographe)

- `content/french-crpe-series-v3-b.ts` — créé : 10 séries × 10 questions niveau CRPE (subjonctif formes/valeurs, concordance des temps, aspect verbal, valeurs du conditionnel, impératif, champs lexicaux, registres et niveaux de langue, polysémie/homonymie/paronymie, connecteurs logiques, emploi des majuscules) ; mélange QCM / Vrai-Faux / réponse courte / correction orthographique ; explications pédagogiques et common_mistake rédigés ; 100 IDs uniques v3b-*

---

## [2026-03-18] — Seed V3 batch A : 10 séries, 100 questions (grammaire, orthographe, analyse de la langue)

- `content/french-crpe-series-v3-a.ts` — créé : 10 séries × 10 questions niveau CRPE (phrase complexe coordination, subordonnées circonstancielles, complétives, discours direct/indirect, types de phrases, participe passé avec avoir, pluriel des noms composés, accord adjectifs de couleur, accord de tout/même/quelque, ponctuation) ; mélange QCM / Vrai-Faux / réponse courte / correction orthographique ; explications et common_mistake rédigés ; 100 IDs uniques v3a-*

---

## [2026-03-18] — 10 nouvelles fiches sprint (lexique, analyse de la langue, compréhension, didactique)

- `content/fiches/lexique-registres-langue-sprint.ts` — nouvelle fiche : distinction niveaux de langue (soutenu/courant/familier) vs registres littéraires (comique/tragique/lyrique…), piège CRPE fréquent
- `content/fiches/lexique-champs-lexicaux-sprint.ts` — nouvelle fiche : champ lexical vs champ sémantique vs famille de mots, métaphore filée par superposition de champs, usage cycle 3
- `content/fiches/lexique-connecteurs-sprint.ts` — nouvelle fiche : 8 catégories de connecteurs logiques, distinctions donc/en effet, par contre/en revanche, organisateurs textuels vs connecteurs
- `content/fiches/analyse-langue-derivation-sprint.ts` — nouvelle fiche : dérivation préfixale et suffixale, valeurs des affixes fréquents, dérivation impropre, piège in- négatif vs directionnel
- `content/fiches/analyse-langue-enonciation-sprint.ts` — nouvelle fiche : déictiques, énoncé ancré vs coupé, modalités, discours indirect libre, auteur ≠ narrateur
- `content/fiches/comprehension-texte-schema-narratif-sprint.ts` — nouvelle fiche : schéma narratif quinaire (Larivaille), situation finale ≠ retour à l'initial, schéma narratif vs schéma actantiel
- `content/fiches/comprehension-texte-argumentatif-sprint.ts` — nouvelle fiche : structure thèse-argument-exemple, types d'arguments, concession rhétorique, argumentation directe vs indirecte
- `content/fiches/didactique-conscience-phonologique-sprint.ts` — nouvelle fiche : conscience syllabique vs phonémique, phonics ≠ conscience phonologique, entraînement explicite, lien dyslexie
- `content/fiches/didactique-erreurs-eleves-sprint.ts` — nouvelle fiche : erreur systématique vs faute, surgénéralisation, remédiation ciblée sur l'obstacle, groupes de besoin, évaluation formative
- `content/fiches/didactique-differentiation-sprint.ts` — nouvelle fiche : 4 leviers (contenu/processus/production/environnement), différenciation proactive ≠ remédiation réactive, PAP/PPRE/PPS
- `content/fiches/index.ts` — enregistrement des 10 nouvelles fiches dans allFiches

## [2026-03-18] — 10 nouvelles fiches sprint (grammaire, orthographe, conjugaison)

- `content/fiches/grammaire-phrase-complexe-sprint.ts` — nouvelle fiche : distinctions juxtaposition/coordination/subordination, piège sur "et" + verbe unique
- `content/fiches/grammaire-voix-passive-sprint.ts` — nouvelle fiche : formation et identification de la voix passive vs construction attributive, verbes intransitifs
- `content/fiches/grammaire-discours-direct-indirect-sprint.ts` — nouvelle fiche : transformations direct→indirect (personnes, temps, déictiques), discours indirect libre
- `content/fiches/grammaire-subordonnees-circonstancielles-sprint.ts` — nouvelle fiche : 6 types de circonstancielles, modes imposés (but/cause/concession/condition/temps/conséquence), piège "après que" + indicatif
- `content/fiches/orthographe-participe-passe-avoir-sprint.ts` — nouvelle fiche : accord PP avec avoir (COD antéposé), invariabilité avec EN, faire + infinitif
- `content/fiches/orthographe-pluriel-noms-composes-sprint.ts` — nouvelle fiche : pluriel des noms composés (noms/adjectifs variables, verbes/adverbes/prépositions invariables), réforme 1990
- `content/fiches/orthographe-tout-meme-sprint.ts` — nouvelle fiche : accord de "tout" (exception voyelle/h aspiré) et de "même" (adjectif vs adverbe)
- `content/fiches/conjugaison-subjonctif-sprint.ts` — nouvelle fiche : déclencheurs du subjonctif, piège "espérer que" + indicatif, "penser/croire" selon la polarité
- `content/fiches/conjugaison-concordance-temps-sprint.ts` — nouvelle fiche : tableau de correspondance des temps, exception vérité générale
- `content/fiches/conjugaison-conditionnel-sprint.ts` — nouvelle fiche : valeurs du conditionnel, règle absolue si + conditionnel interdit, test "si" conditionnel vs interrogatif
- `content/fiches/index.ts` — enregistrement des 10 nouvelles fiches dans allFiches

## [2026-03-18] — Logo app shell remplacé par logo image

- `components/app-shell.tsx` — remplacement du placeholder texte "CR" par le vrai logo `/logo.png` avec filtre `brightness-0 invert` pour visibilité sur fond sombre

## [2026-03-18] — Audit FAQ : enrichissement contenu + email cliquable + migration DB

- `features/homepage/lib/default-homepage.ts` — enrichissement des 5 réponses FAQ trop courtes (gratuit, diagnostic, corrections, résiliation) + ajout `noteLinkHref` pour l'email de contact
- `features/homepage/lib/blocks.ts` — ajout champ optionnel `noteLinkHref: z.string().url().optional()` dans `faqSectionPropsSchema`
- `features/homepage/components/renderer.tsx` — `FaqSection` rend l'email de contact comme lien `<a href={noteLinkHref}>` si le prop est présent
- `supabase/migrations/20260322_update_faq_content.sql` — migration pour mettre à jour le contenu FAQ en base (réponses enrichies + noteLinkHref)

## [2026-03-18] — Audit contenu : 34 questions diagnostiques trop faciles remplacées + corrections

- `content/french-diagnostic-questions.ts` — remplacé 34 questions triviales (niveau CE1-CM2) par des questions de niveau CRPE difficile dans tous les sous-domaines : grammaire (dislocation, négation expletive, complément du résultat), orthographe (PP verbes de perception, accord demi/tout/même/nu/mi, réforme 1990), conjugaison (passé antérieur, imparfait du subjonctif, futur antérieur, conditionnel journalistique, gérondif), lexique (calque sémantique, barbarisme, pléonasme), analyse (participiale absolue, subordonnée comparative, complétive sujet, valeurs de depuis/pendant/en), compréhension (performatif, texte injoncto-explicatif, captation rhétorique), didactique (conflit socio-cognitif, conscience phonologique)

## [2026-03-18] — Audit : corrections French, bug filtre niveau, docs

- `app/(marketing)/mentions-legales/page.tsx` — corrigé accord de genre : "Toute signalement" → "Tout signalement"
- `app/(app)/fiches/page.tsx` — corrigé vouvoiement : "ton besoin" → "votre besoin", "Essaie" → "Essayez" (cohérence avec le reste de l'app)
- `app/(app)/francais/[domain]/page.tsx` — corrigé bug logic : `value={option.label}` → `value={option.value}` dans le filtre Niveau (envoyait le label accentué au lieu de la clé DB)
- `CLAUDE.md` — mis à jour les tokens couleur accent (#476257 → #4A6E8F, #394E45 → #3A5A7A) pour correspondre à tailwind.config.ts

## [2026-03-17] — Responsive mobile : exercise player, offre, francais

- `features/exercises/components/exercise-player.tsx` — h1 session `text-2xl sm:text-4xl`, h2 score final et h2 question `text-2xl sm:text-3xl` (font sizes mobiles)
- `app/(marketing)/offre/page.tsx` — h1 `text-3xl sm:text-5xl`, padding vertical `py-10 sm:py-16`, grille plans `sm:grid-cols-2 lg:grid-cols-4` (2 colonnes intermédiaires tablette)
- `app/(app)/francais/page.tsx` — grille domaines `sm:grid-cols-2 xl:grid-cols-3` (2 colonnes sur tablette)

## [2026-03-17] — Responsive mobile : app-shell et dashboard

- `components/app-shell.tsx` — masquage de l'email utilisateur sur mobile (`hidden md:block`), réduction du gap header sur mobile (`gap-2 md:gap-4`)
- `app/(app)/tableau-de-bord/page.tsx` — padding et taille du h1 hero adaptatifs (`px-5 py-8 sm:px-8 sm:py-12`, `text-4xl sm:text-5xl xl:text-7xl`), flex-wrap sur le header "Plan du jour", `text-2xl sm:text-3xl` sur le h2 correspondant, `text-3xl sm:text-4xl` sur le h2 "Domaines"

## [2026-03-17] — Page fiches : vue liste groupée par catégorie

- `features/fiches/components/fiche-card.tsx` — ajout du composant `FicheRow` (ligne compacte horizontale) + exports des constantes `DOMAINE_LABELS` et `MODEL_LABELS`
- `app/(app)/fiches/page.tsx` — remplacement de la grille uniforme par des sections groupées par domaine avec compteur, chaque section affiche les fiches en liste via `FicheRow`

## [2026-03-17] — Sprint 1 : compréhension de texte — 3 fiches + 2 séries free

- `content/fiches/comprehension-texte-reperage-explicite-sprint.ts` — fiche Sprint : information explicite, lecture littérale, stratégie de balayage, confusion explicite/inférence
- `content/fiches/comprehension-texte-implicite-inference-sprint.ts` — fiche Sprint : inférence logique vs pragmatique, faisceau d'indices, enseignement explicite, erreurs d'élèves (Cain & Oakhill)
- `content/fiches/comprehension-texte-documentaire-sprint.ts` — fiche Sprint : texte documentaire, lecture non linéaire, organisateurs textuels, fait vs opinion
- `content/fiches/index.ts` — ajout des 3 nouvelles fiches comprehension_texte dans l'export allFiches
- `supabase/seed_content_comprehension_texte_v4.sql` — 2 séries free (séries 73-74) : `cpt_reperage_explicite` (Facile, 10 questions avec support_text) et `cpt_inference_facile` (Intermédiaire, 10 questions)

---

## [2026-03-17] — Priorité 2 : 5 fiches Didactique (apprendre à lire, production écrite, évaluation, grammaire inductive, programmes)

- `content/fiches/didactique-apprendre-a-lire-sprint.ts` — fiche Sprint : Simple View of Reading, approche syllabique explicite, méthode globale écartée par les programmes 2016, conscience phonologique dès la GS
- `content/fiches/didactique-production-ecrite-sprint.ts` — fiche Sprint : processus Hayes & Flower (planification/mise en texte/révision), surcharge cognitive, dictée à l'adulte, brouillon valorisé par les programmes
- `content/fiches/didactique-evaluation-francais-sprint.ts` — fiche Sprint : évaluation formative vs sommative vs diagnostique, niveaux de maîtrise 1-4 (LSU), auto-évaluation et métacognition
- `content/fiches/didactique-grammaire-inductive-sprint.ts` — fiche Sprint (premium) : démarche inductive (corpus → règle), manipulation syntaxique, grammaire en contexte ≠ pas de leçon explicite, métalangage progressif
- `content/fiches/didactique-programmes-cycles-reference.ts` — fiche Référence (premium) : attendus par cycle 1/2/3, 4 domaines constants, intégration 6e au cycle 3, progressivité spiralaire, tableau comparatif
- `content/fiches/index.ts` — ajout des 5 nouvelles fiches didactique dans l'export allFiches

---

## [2026-03-17] — Création du plan de déploiement de contenu

- `CONTENT-PLAN.md` — audit complet du contenu existant (530 exercices SQL, 47 séries, 15 fiches) + lacunes identifiées par domaine + roadmap priorisée en 4 sprints + seuils de crédibilité A/B/C

---

## [2026-03-17] — Ajout de 11 nouvelles fiches Sprint (couverture complète des domaines CRPE)

- `content/fiches/orthographe-accord-verbe-sujet-sprint.ts` — accord sujet-verbe : cas difficiles (collectifs, impersonnels, adjonction)
- `content/fiches/orthographe-infinitif-participe-sprint.ts` — distinguer -er (infinitif) et -é (participe), test de substitution
- `content/fiches/grammaire-nature-mots-sprint.ts` — classes grammaticales, mots à double nature (tout, leur, même…)
- `content/fiches/grammaire-fonctions-sprint.ts` — fonctions grammaticales essentielles (sujet, COD, COI, attribut…)
- `content/fiches/grammaire-phrase-simple-sprint.ts` — types et formes de phrases (déclarative, interrogative, négative…)
- `content/fiches/grammaire-subordonnees-relatives-sprint.ts` — pronoms relatifs simples (qui, que, dont, où) et leurs fonctions
- `content/fiches/lexique-formation-mots-sprint.ts` — dérivation, composition, bases savantes gréco-latines
- `content/fiches/lexique-figures-de-style-sprint.ts` — métaphore vs comparaison vs métonymie, hyperbole, anaphore
- `content/fiches/conjugaison-valeurs-present-sprint.ts` — valeurs du présent (vérité générale, habitude, historique, futur proche)
- `content/fiches/conjugaison-imparfait-passe-simple-sprint.ts` — opposition aspectuelle imparfait / passé simple
- `content/fiches/didactique-enseignement-orthographe-sprint.ts` — démarches d'enseignement (phrase du jour, dictée négociée, programmes 2016)
- `content/fiches/analyse-langue-subordonnees-relatives-sprint.ts` — subordonnées relatives en analyse de la langue (antécédent, fonction de dont, déterminative vs explicative)
- `content/fiches/index.ts` — index mis à jour avec les 15 fiches Sprint actives

- `content/fiches/lexique-formation-mots-sprint.ts` — fiche Sprint : dérivation et composition, distinction préfixes courants vs bases savantes gréco-latines, familles de mots
- `content/fiches/lexique-figures-de-style-sprint.ts` — fiche Sprint : 10 figures principales (comparaison, métaphore, métonymie, synecdoque, litote, euphémisme, hyperbole, personnification, antithèse, ironie), piège comparaison/métaphore et litote/euphémisme
- `content/fiches/analyse-langue-subordonnees-relatives-sprint.ts` — fiche Sprint domaine analyse_langue : antécédent, fonction du pronom relatif, déterminative vs explicative, cas de « dont »
- `content/fiches/didactique-enseignement-orthographe-sprint.ts` — fiche Sprint : orthographe lexicale vs grammaticale, démarches recommandées (dictée négociée, ANG, liste de référence), progressivité par cycle, piège dictée-évaluation vs démarche d'apprentissage
- `content/fiches/index.ts` — ajout des 4 nouvelles fiches dans l'export allFiches

---

## [2026-03-17] — Ajout de 4 fiches Sprint orthographe/conjugaison (accord verbe-sujet, infinitif/PP, valeurs du présent, imparfait/passé simple)

- `content/fiches/orthographe-accord-verbe-sujet-sprint.ts` — fiche Sprint : accord du verbe avec les cas difficiles (sujet inversé, sujet collectif, tournure impersonnelle, ainsi que, ni…ni…)
- `content/fiches/orthographe-infinitif-participe-sprint.ts` — fiche Sprint : distinguer infinitif -er et participe passé -é, test de substitution, règle après préposition vs auxiliaire
- `content/fiches/conjugaison-valeurs-present-sprint.ts` — fiche Sprint : 7 valeurs du présent de l'indicatif (énonciation, gnomique, narration, historique, habituel, futur proche, passé récent), piège narration vs énonciation
- `content/fiches/conjugaison-imparfait-passe-simple-sprint.ts` — fiche Sprint : opposition aspectuelle imparfait (arrière-plan) / passé simple (premier plan), imparfait de rupture et imparfait narratif

---

## [2026-03-17] — Ajout de 3 fiches Sprint grammaire (nature, fonctions, phrase simple)

- `content/fiches/grammaire-nature-mots-sprint.ts` — fiche Sprint : identifier la nature des 9 classes grammaticales, piège des mots à double nature (tout, même, leur…)
- `content/fiches/grammaire-fonctions-sprint.ts` — fiche Sprint : fonctions grammaticales (sujet, COD, COI, attribut, épithète, CC), piège nature vs fonction
- `content/fiches/grammaire-phrase-simple-sprint.ts` — fiche Sprint : types (déclaratif, interrogatif, injonctif, exclamatif) et formes (affirmative/négative, active/passive, emphatique), piège type vs forme
- `content/fiches/index.ts` — ajout des 3 nouvelles fiches grammaire dans l'export allFiches

---

## [2026-03-17] — Implémentation section "Fiches CRPE"

- `features/fiches/types.ts` — création des types TypeScript complets (Fiche, FicheContent, FicheBlock, QuizItem, DecisionNode…)
- `features/fiches/lib/get-fiche.ts` — fonctions getAllFiches, getFicheBySlug, getFichesByDomaine
- `content/fiches/index.ts` — index exportant toutes les fiches
- `content/fiches/orthographe-participe-passe-reference.ts` — fiche Référence complète (7 sections + didactique + quiz 7 items)
- `content/fiches/orthographe-participe-passe-sprint.ts` — fiche Sprint avec quiz 5 items
- `content/fiches/orthographe-participe-passe-operatoire.ts` — fiche Opératoire avec arbre de décision complet
- `content/fiches/orthographe-accord-gn-sprint.ts` — fiche Sprint accord dans le GN
- `content/fiches/orthographe-homophones-sprint.ts` — fiche Sprint homophones grammaticaux
- `content/fiches/grammaire-phrase-complexe-reference.ts` — fiche Référence phrase complexe
- `content/fiches/didactique-apprentissage-lecture-reference.ts` — fiche Référence apprentissage de la lecture (Simple View of Reading)
- `features/fiches/components/blocks/block-rule.tsx` — composant règle avec logique linguistique
- `features/fiches/components/blocks/block-example.tsx` — composant exemple avec statut correct/incorrect
- `features/fiches/components/blocks/block-table.tsx` — composant tableau responsive
- `features/fiches/components/blocks/block-watchout.tsx` — composant pièges avec icône alerte
- `features/fiches/components/blocks/block-tip.tsx` — composant conseil (accentSecondarySoft)
- `features/fiches/components/blocks/block-decision-tree.tsx` — composant arbre de décision récursif
- `features/fiches/components/blocks/block-didactic.tsx` — composant section didactique (cycles, erreurs élèves, activités)
- `features/fiches/components/blocks/block-related.tsx` — composant liens vers fiches et exercices
- `features/fiches/components/fiche-block-renderer.tsx` — switch exhaustif sur block.kind
- `features/fiches/components/fiche-header.tsx` — en-tête commune (badges, titre, durée, tags)
- `features/fiches/components/fiche-card.tsx` — carte listing avec métadonnées
- `features/fiches/components/fiche-quiz.tsx` — Client Component quiz interactif avec feedback explicatif
- `features/fiches/components/fiche-reference.tsx` — renderer modèle Référence
- `features/fiches/components/fiche-sprint.tsx` — renderer modèle Sprint
- `features/fiches/components/fiche-operatoire.tsx` — renderer modèle Opératoire
- `app/(app)/fiches/page.tsx` — page listing avec filtres domaine + format
- `app/(app)/fiches/[slug]/page.tsx` — page fiche individuelle avec generateStaticParams
- `app/(app)/fiches/[slug]/loading.tsx` — skeleton de chargement
- `components/app-navigation.tsx` — ajout entrée "Fiches CRPE" (icon BookOpen) + correction NavStandalone pour icône dynamique

---

## [2026-03-17] — Conception section "Fiches CRPE" (design + architecture)

- Aucun fichier de code modifié — session de conception uniquement
- Analyse multi-agents (UX/UI, Pédagogie, Didactique CRPE, Front-end, Critique) produisant un livrable de conception complet en 6 blocs
- Architecture proposée : route `/fiches/[slug]`, 3 modèles (Référence Didactique / Sprint d'Activation / Carte Opératoire), types TypeScript complets, plan d'implémentation séquentiel en 8 étapes
- Décision technique : données statiques TypeScript pour le MVP, migration Supabase planifiée sur critères explicites
- Aucun fichier existant modifié ; modification future minimale : `components/app-navigation.tsx` (1 entrée)

---

## [2026-03-17] — Hook Stop : rappel automatique CHANGELOG

- `.claude/settings.json` — création du fichier de config hooks (projet)
- `.claude/hooks/changelog-check.sh` — script Stop hook : bloque la fin de session si des fichiers ont été modifiés sans entrée dans CHANGELOG.md

---

## [2026-03-17] — Mise à jour de la documentation workflow

- `CLAUDE.md` — ajout des modules manquants (diagnostic, mascot, admin), dépendances (sonner, nextjs-toploader, Radix Accordion/Dialog), table `diagnostic_results`, routes API ; ajout de la section Changelog obligatoire
- `README.md` — mise à jour complète : nouvelles features, seeds multiples, route webhook corrigée, scripts, routes utiles
- `AUDIT-1.0.md` — supprimé (audit 2026-03-16 archivé dans ce fichier)
- `CHANGELOG.md` — création de ce fichier

---

## [2026-03-17] — Intégration Mocca + voix sur les corrections

- `components/mascot/mocca.tsx` — création de la mascotte Mocca (3 états : happy, neutral, grumpy) avec images PNG
- `public/mocca-happy.png`, `public/mocca-neutral.png`, `public/mocca-grumpy.png` — assets mascotte ajoutés
- `features/exercises/components/exercise-player.tsx` — intégration Mocca + feedback vocal (Web Speech API) sur chaque correction

---

## [2026-03-16] — Audit v1.0 — 30+ corrections appliquées

### Technique
- `lib/env.ts` — (C6) `Number(...) || 20` : corrige le bypass NaN sur le quota gratuit
- `lib/supabase/admin.ts`, `types/database.ts` — (C7) client admin typé `createClient<Database>`
- `features/exercises/server/queries.ts` — (C1) `unstable_cache` 1h + tag "exercises" sur `getExercises()`
- `features/exercises/server/queries.ts` — (I8) maps `SUBDOMAIN_INTRO` + `SUBDOMAIN_KEYPOINTS` : metadata spécifiques par sous-domaine
- `features/exercises/server/actions.ts` — (A6) `revalidatePath("/abonnement")` supprimé de `submitAttemptAction`
- `features/auth/server/guards.ts`, `features/billing/server/queries.ts` — (I4) `cache()` React sur `getAuthUser` et `getUserSubscription`
- `features/dashboard/server/queries.ts` — (I6) `.limit(500)` sur la requête `attempts`
- `app/(marketing)/layout.tsx` — (I7) `SiteHeader` monté dans le layout marketing, retiré des 5 pages individuelles

### UI/UX
- `components/app-shell.tsx`, `components/site-footer.tsx` — (U2) branding unifié "CRPE Français"
- `components/app-navigation.tsx` — (C3+U7) nav redirige `/ressources` → `/ressources/glossaire` ; label "Grammaire & Lexique"
- `components/app-shell.tsx` — (U1) `MobileNav` (Sheet Radix) + hamburger dans le header ; sidebar cachée < xl
- `app/(app)/profil/page.tsx` — (U5) UUID Supabase retiré
- `components/site-footer.tsx` — (U4) icônes sociales mortes supprimées
- `app/(marketing)/offre/page.tsx` — (U6) plan gratuit intégré dans la grille `lg:grid-cols-4`
- `app/(app)/tableau-de-bord/page.tsx` — (I1) note développeur supprimée

### Pédagogie
- `features/exercises/components/exercise-player.tsx` — (P2) axes de reprise groupés par sous-domaine avec comptage d'erreurs
- `features/exercises/components/exercise-player.tsx` — (P4) `renderFeedbackBody` affiche `detailed_explanation` sur les bonnes réponses
- `content/french-diagnostic-questions.ts` — (P5) hrefs post-diagnostic enrichis `?subdomain=X` ; accents corrigés
- `lib/dashboard.ts`, `features/dashboard/components/session-progress-card.tsx` — (A4) `MASTERY_THRESHOLD = 85` exporté et affiché

### Contenu
- `app/(app)/ressources/page.tsx` — (C4a) 7 accents manquants corrigés
- `app/(app)/diagnostic/page.tsx` — (C4b) 2 accents manquants corrigés
- `app/(app)/ressources/glossaire/page.tsx` — (A3) glossaire enrichi : 42 → 100 termes, 13 → 18 lettres

### Performance / nettoyage
- `package.json`, `components/marketing/reveal.tsx` — (I9) `framer-motion` désinstallé ; `FadeIn` réécrit IntersectionObserver + CSS
- `package.json`, `features/homepage/components/renderer.tsx` — (A8) `react-wrap-balancer` désinstallé ; `text-balance` Tailwind
- `tailwind.config.ts` — (A2) 3 tokens `backgroundImage` ajoutés ; 5 gradients hardcodés remplacés

### Stripe
- `app/api/_stripe/checkout/route.ts`, `app/api/_stripe/webhook/route.ts` — (C5) webhook one-time : `price_id` dans metadata, `computePeriodEnd` pour daily/weekly, handler `mode:"payment"`
- `app/api/_stripe/checkout/route.ts`, `app/api/_stripe/portal/route.ts` — (I11) `try/catch` ajouté → réponse JSON 502 au lieu de 500 vide
