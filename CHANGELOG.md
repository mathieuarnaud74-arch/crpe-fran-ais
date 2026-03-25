# Changelog

## [2026-03-25] — Fix dette technique migrations (53 UUID collisions + 1 réponse fausse)

- `supabase/migrations/20260822_fix_uuid_collisions.sql` — 53 questions silencieusement ignorées par ON CONFLICT DO NOTHING (préfixes UUID fa0X/fa1X/fc0X en collision avec d'anciennes séries françaises). Réinsérées avec nouveaux préfixes (fa2X/fa5X/fc2X). + correction réponse fractions (7/12−3/8+1/6 = 3/8, pas 9/24). + 2 vrai_faux avec choices→NULL.
- `supabase/migrations/20260807_seed_complete_nombres_calcul_batch2.sql` — correction expected_answer "b"→"a" (forme irréductible)
- `supabase/migrations/20260809_seed_complete_grandeurs_mesures_batch2.sql` — 2 vrai_faux: choices explicites → NULL

## [2026-03-25] — Optimisation performance tableau de bord + fix modes expected_answer

- `features/exercises/server/queries.ts` — nouvelle fonction `getDashboardSessions()` avec SELECT ciblé (skip choices, expected_answer, detailed_explanation, support_text). Réduit le payload Supabase de ~70% sur le tableau de bord.
- `features/dashboard/server/queries.ts` — branchement sur `getDashboardSessions()` au lieu de `getExercises()`

## [2026-03-25] — Fix modes expected_answer non reconnus (flexible/multiple/keywords)

- `features/exercises/shared/normalize.ts` — ajout des modes `flexible`, `multiple`, `keywords` au branchement `text` de `normalizeExpectedAnswer`. Ces modes provenant des migrations antérieures n'étaient pas reconnus, ce qui causait des réponses vides (l'utilisateur ne pouvait jamais avoir juste) et un spam de warnings console ralentissant le tableau de bord.
- `supabase/migrations/20260821_fix_expected_answer_modes.sql` — UPDATE en base pour normaliser tous les `flexible`/`multiple`/`keywords` → `text`.

## [2026-03-25] — Simplification radicale des séries d'exercices (1 topic_key = 1 série)

Refonte de l'architecture des séries. Avant : les séries étaient calculées en groupant les exercices par `topic_key::level::access_tier`, puis découpées en blocs de 10. Cela créait une fragmentation massive (un même thème éclaté en 3-6 séries), des séries incomplètes silencieusement invisibles, et un cycle infini de backfills correctifs. Après : 1 `topic_key` = 1 série, point.

### Migration SQL
- `supabase/migrations/20260820_simplify_series_schema.sql` — ajout colonne `series_order` (ordre explicite des questions), neutralisation de `level` (→ 'Standard') et `access_tier` (→ 'free'), index `idx_exercises_topic_order`

### Core logic
- `features/exercises/server/queries.ts` — réécriture complète de `buildSessionsFromExercises` : groupement par `topic_key` seul, tri par `series_order`, plus de chunking en blocs de 10, plus de minimum de questions, suppression de `getQuestionSequence()` (extraction hex UUID). Ajout fallback dans `getExerciseSessionById` pour les anciens IDs de session (`session-{topicKey}-{level}-{chunk}` → `session-{topicKey}`). Suppression du filtre `.eq("access_tier", "free")` dans `getRandomExercises`. Suppression du filtre `level` dans `fetchAllExercises` et `ExerciseFilters`
- `features/exercises/server/actions.ts` — suppression du gate premium (`exercise.access_tier === "premium" && !premium`), seul le quota quotidien (30/jour) limite désormais
- `lib/dashboard/build-dashboard-data.ts` — suppression du filtre `visibleSessions` par `access_tier`, suppression de `level`/`estimatedMinutes`/`access_tier` de la construction `sessionProgress`

### Types
- `types/domain.ts` — suppression de `AccessTier`, suppression de `level`/`access_tier` de `ExerciseRecord`, suppression de `level`/`estimatedMinutes`/`access_tier` de `RevisionSession` et `DashboardSessionProgress`, ajout de `series_order` optionnel sur `ExerciseRecord`

### UI — composants
- `features/exercises/components/exercise-session-header.tsx` — suppression des badges level et premium
- `features/dashboard/components/session-progress-card.tsx` — suppression du badge premium, suppression de `session.level` dans `formatSessionMeta`
- `features/exercises/components/random-exercise-wrapper.tsx` — suppression de `level`, `estimatedMinutes`, `access_tier` du virtual session
- `features/srs/components/srs-review-card.tsx` — suppression de `level` du type `DueExercise`

### UI — pages
- `app/(app)/exercices/page.tsx` — réécriture : suppression du split free/premium, des lock icons, du filtre level, du CTA "Passer en premium", de `isPremiumUser`. Liste unique "Toutes les séries"
- `app/(app)/exercices/[id]/page.tsx` — suppression du gate premium, des badges level/premium
- `app/(app)/francais/[domain]/page.tsx` — suppression du filtre level (dropdown, `selectedLevel`, chips actifs, `matchesSearch`)
- `app/(app)/maths/[domain]/page.tsx` — idem
- `app/(app)/tableau-de-bord/page.tsx` — suppression des filtres `access_tier === "free"` sur sessions résumé/challenge, remplacement `estimatedMinutes` par `questionCount` dans `PlanItem`
- `app/(app)/revision/page.tsx` — suppression du filtre premium sur les exercices SRS, suppression de l'import `isPremiumUser`

### Constants et badges
- `lib/constants.ts` — suppression de `LEVEL_LABELS`, `LEVEL_OPTIONS`, `formatLevelLabel()`, `ACCESS_TIER_LABELS`
- `lib/dashboard/badges.ts` — suppression de 4 badges liés aux niveaux (`facile-mastery`, `intermediaire-mastery`, `all-levels-tried`, `avance-mastery`) et des variables `levelsWithAttempts`/`levelsMastered`

### Fiches (adaptation type)
- `features/fiches/types.ts` — `AccessTier` défini localement (le système fiches garde son propre access tier indépendant)

### Fichiers de contenu (nettoyage des seeds)
- `content/french-crpe-series-v3-a.ts` à `content/french-crpe-series-v3-k.ts` (11 fichiers) — suppression de `level` et `access_tier` des signatures helper (`qcm`, `vraiFaux`, `reponseCourte`, `correction`), des call sites, et des objets session (`level`, `estimatedMinutes`, `access_tier`). Mise à jour des types `QuestionInput`/`SessionInput` (Omit étendu)
- `content/french-crpe-series.ts` — idem
- `content/french-crpe-series-tri-nature-mots.ts` — suppression de `level`, `access_tier`, `estimatedMinutes` des objets exercice et session
- `content/french-crpe-module.ts` — suppression du type `FrenchLevel`, de `level` dans `FrenchSeriesPlanItem` et `FrenchSeries`, de `estimatedMinutes` dans `FrenchSeries`
- `scripts/generate-french-module-seed.ts` — hardcode `'Standard'` et `'free'` dans le SQL généré (les colonnes existent encore en DB)

### Tests
- `__tests__/submit-attempt-action.test.ts` — suppression du test premium gate, remplacement `level`/`access_tier` par `series_order` dans les mocks

### Vérification
- `npm run typecheck` — 0 erreur
- `npm run build` — build complet OK
- `npx vitest run` — 211 tests, 12 fichiers, tous verts

## [2026-03-24] - Reconstruction du catalogue maths en production (backfill + nettoyage + re-harmonisation)

Correctif deploye pour aligner la base distante sur les migrations locales de mathematiques. Le probleme reel n'etait pas seulement un regroupement casse : une grande partie des questions Q1-Q7 etait absente en prod, ce qui laissait beaucoup de `topic_key` a 2 ou 3 questions seulement.

- `supabase/migrations/20260814_backfill_missing_math_seed_questions.sql` - reinjection de 1014 questions maths manquantes detectees entre les seeds locales et la base distante ; gestion des anciens IDs invalides et des collisions d'UUID entre certains topics
- `supabase/migrations/20260815_unpublish_legacy_math_v1_topics.sql` - depublie 7 anciens topics maths `v1` hors catalogue courant qui faussaient les compteurs par domaine
- `supabase/migrations/20260816_reharmonize_math_catalog_after_backfill.sql` - re-harmonise `level`, `access_tier` et `topic_label` apres backfill pour garantir 1 serie visible par `topic_key`
- `features/exercises/server/queries.ts` - tri des questions par numero reel avant construction des sessions pour garantir l'ordre Q1 -> Q10 apres backfill

Verification sur la base distante apres deploiement :

- `1620` exercices maths publies
- `162` `topic_key` maths
- `162` series visibles
- `0` topic sous 10 questions
- `0` serie fracturee par `level/access_tier`

Repartition finale par domaine maths :

- `45` series `nombres_calcul`
- `32` series `geometrie`
- `28` series `grandeurs_mesures`
- `27` series `organisation_donnees`
- `30` series `didactique_maths`

## [2026-03-24] — Complétion massive des séries incomplètes (155 séries → 462 questions ajoutées)

Audit et complétion de toutes les séries d'exercices ayant moins de 10 questions. 11 fichiers de migration créés :

- `supabase/migrations/20260801_seed_complete_geometrie_batch1.sql` — +30 questions (10 séries géométrie)
- `supabase/migrations/20260802_seed_complete_nombres_calcul_batch1.sql` — +30 questions (10 séries nombres/calcul)
- `supabase/migrations/20260803_seed_complete_didactique_batch1.sql` — +30 questions (10 séries didactique)
- `supabase/migrations/20260804_seed_complete_grandeurs_mesures_batch1.sql` — +30 questions (10 séries grandeurs/mesures)
- `supabase/migrations/20260805_seed_complete_organisation_donnees_batch1.sql` — +30 questions (10 séries org. données)
- `supabase/migrations/20260806_seed_complete_geometrie_batch2.sql` — +63 questions (21 séries géométrie)
- `supabase/migrations/20260807_seed_complete_nombres_calcul_batch2.sql` — +92 questions (28 séries 7→10 + 4 sujets blancs 8→10)
- `supabase/migrations/20260808_seed_complete_didactique_batch2.sql` — +54 questions (18 séries didactique)
- `supabase/migrations/20260809_seed_complete_grandeurs_mesures_batch2.sql` — +51 questions (17 séries grandeurs/mesures)
- `supabase/migrations/20260810_seed_complete_organisation_donnees_batch2.sql` — +48 questions (16 séries org. données)
- `supabase/migrations/20260811_seed_complete_francais_tri_nature.sql` — +4 questions (1 série français tri_categories)

Résultat : **370 séries, toutes à 10+ questions**. Types variés (qcm, vrai_faux, reponse_courte, tri_categories). Accès free, niveaux Intermediaire/Avancé.

## [2026-03-24] — Deux nouvelles séries probabilités (vrai/faux + QCM)

- `supabase/migrations/20260799_seed_math_probabilites_vrai_ou_faux.sql` — 7 exercices vrai/faux sur les pièges classiques des probabilités (sophisme du joueur, incompatibilité, additivité, arbre)
- `supabase/migrations/20260800_seed_math_probabilites_situations_concretes.sql` — 7 exercices QCM ancrés dans des situations du quotidien (tombola, bonbons, météo, code secret, match de foot)

## [2026-03-24] — Sécurisation pré-déploiement (BeforeDeployment.md P1/P2)

- `features/auth/server/actions.ts` — ajout de server actions `signInAction` / `signUpAction` avec rate-limit (10 tentatives / 15 min par IP) ; `deleteAccountAction` annule désormais l'abonnement Stripe actif avant suppression du compte
- `features/auth/components/auth-form.tsx` — migration des appels Supabase côté client vers les server actions rate-limitées
- `features/billing/server/queries.ts` — `isPremiumUser()` gère désormais le statut `past_due` (grace period de 3 jours) au lieu de l'ignorer
- `app/error.tsx` — nouvel error boundary racine (attrape les erreurs dans le layout global et les pages marketing)

## [2026-03-24] — Nouveau contenu mathématiques CRPE (fiches + exercices)

- `content/fiches-maths/donnees-arbre-probabilites-operatoire.ts` — nouvelle fiche opératoire : construire et lire un arbre de probabilités (avec/sans remise, épreuves indépendantes ou conditionnelles)
- `content/fiches-maths/donnees-statistiques-etude-operatoire.ts` — nouvelle fiche opératoire : mener une étude statistique de la collecte à l'interprétation (choix du diagramme, indicateurs, données qualitatives/quantitatives)
- `content/fiches-maths/didactique-institutionnalisation-sprint.ts` — nouvelle fiche sprint : l'institutionnalisation au sens de Brousseau (moment de naissance officielle du savoir dans la mémoire de classe)
- `content/fiches-maths/didactique-situations-recherche-sprint.ts` — nouvelle fiche sprint : les situations de recherche (dévolution, situation a-didactique, variables didactiques, problèmes ouverts)
- `content/fiches-maths/didactique-preparer-seance-maths-operatoire.ts` — nouvelle fiche opératoire : préparer une séance de maths de l'objectif à la trace écrite (découverte vs entraînement, 4 phases, gestion des groupes)
- `content/fiches-maths/didactique-histoire-maths-sprint.ts` — nouvelle fiche sprint : histoire des mathématiques pour le CRPE (Pythagore, Euclide, Al-Khwarizmi, Descartes, irrationnels, numération)
- `content/fiches-maths/didactique-differenciation-operatoire.ts` — nouvelle fiche opératoire : différencier en mathématiques (objectifs vs moyens, étayage/désétayage, groupes de besoin, enrichissement)
- `content/fiches-maths/index.ts` — ajout des 7 nouvelles fiches dans `allFichesMaths`
- `supabase/migrations/20260795_seed_math_histoire_mathematiques.sql` — 7 exercices sur l'histoire des mathématiques (Al-Khwarizmi, Pythagore/Babyloniens, Euclide, irrationnels, base 60, Descartes, usage Éduscol)
- `supabase/migrations/20260796_seed_math_logique_demonstration.sql` — 7 exercices sur la logique et la démonstration (contre-exemple, implication/réciproque, absurde, Euclide/nombres premiers)

## [2026-03-24] — Corrections terminologiques grammaire (audit P6)

- `content/fiches/grammaire-phrase-interrogative-sprint.ts` — disclaimer : "quatre types de phrase (déclarative, interrogative, impérative, exclamative)" → "trois types de phrase (déclarative, interrogative, injonctive)" ; note ajoutée que la phrase exclamative est une forme de phrase, non un type (Éduscol 2021)
- `content/fiches/grammaire-phrase-complexe-reference.ts` — tableau des conjonctions de coordination : ajout d'une colonne "Statut MEN 2020" ; "donc" reclassifié comme adverbe de liaison ; "or" signalé comme relevant de certaines grammaires seulement ; note MEN 2020 ajoutée dans la rule et les keyPoints
- `content/fiches/grammaire-nature-fonction-operatoire.ts` — règle de la conjonction dans l'arbre de décision : liste "mais, ou, et, donc, or, ni, car" → "mais, ou, et, ni, car (+ or selon certaines grammaires)" avec note sur le reclassement de "donc" comme adverbe de liaison (MEN 2020)
- `content/fiches/grammaire-complements-circonstanciels-reference.ts` — toutes les occurrences de "verbe d'état" remplacées par "verbe attributif" (terminologie imposée par Éduscol 2021)
- `content/fiches/analyse-langue-identifier-subordonnees-operatoire.ts` — règle circonstancielle : "suppressible et déplaçable" → "généralement suppressible et déplaçable" avec précision sur les subordonnées de conséquence et de cause à mobilité réduite ; quiz item correspondant : isCorrect true → false avec explication nuancée

## [2026-03-24] — Corrections contenu divers (audit P4/P6)

- `content/fiches-maths/donnees-statistiques-reference.ts` — "disqualitatives" → "qualitatives" (terme correct pour les données catégorielles non numériques)
- `content/fiches-maths/didactique-soustraction-sprint.ts` — "les remédiation" → "les remédiations" (pluriel manquant)
- `content/fiches/analyse-langue-derivation-sprint.ts` — vérifié : "modable" absent du fichier, les exemples -able à partir de noms (corvéable, charitable) sont déjà corrects, aucune modification nécessaire
- `content/fiches/orthographe-rectifications-1990-sprint.ts` — "deux-cents" retiré de l'exemple sur le trait d'union des numéraux (la règle de l'accord de "cent" est distincte et antérieure à 1990) ; remplacé par "deux-cent-cinquante" avec note explicative

## [2026-03-24] — Corrections accents et coquilles (audit P1/P6)

- `content/fiches/grammaire-voix-passive-sprint.ts` — vérifié : "fatiguit" absent du fichier, forme "fatigue" déjà correcte, aucune modification nécessaire
- `content/fiches/analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint.ts` — accents manquants corrigés sur l'ensemble des strings (title, tags, disclaimer, oneLiner, exampleCorrect, exampleWrong, mainTrap, quiz) : "Subordonnées", "complétives", "circonstancielles", "conjonction", "différente", "dépendance", "réussira", "désigne", "déjà", "sémantique", "énoncé", "rôle", "révise", etc.
- `content/fiches/analyse-langue-voix-active-passive-sprint.ts` — vérifié : accents correctement présents dans toutes les strings, aucune modification nécessaire

## [2026-03-24] — Audit Passe 9 : géométrie et grandeurs (fiches TS + migrations SQL)

- `erreursexercices.md` — Ajout de la Passe 9 (renommée depuis une collision avec Passe 7) : audit de 33 fiches TypeScript géométrie/grandeurs et 9 migrations SQL. 2 erreurs critiques (P9-1 : triangle équilatéral décrit avec un « centre de symétrie » au lieu d'un centre de rotation d'ordre 3 ; P9-2 : tip affirmant que le parallélogramme est un trapèze, contredisant la convention Éduscol), 4 erreurs importantes, 4 mineures. Cumul passes 1-9 : 19 critiques, 52 importantes, 31 mineures.

## [2026-03-24] — Audit Passe 8 : 47 fiches maths TypeScript + 20 migrations SQL

- `erreursexercices.md` — Ajout de la Passe 8 : audit de 47 fiches TypeScript (fiches-maths) et 20 migrations SQL maths. 1 erreur importante identifiée (coquille "disqualitatives" dans `donnees-statistiques-reference.ts`), 67 fichiers OK sur 67.

## [2026-03-24] — Audit Passe 8 (suite) : 16 fiches français + 6 migrations SQL

- `erreursexercices.md` — Passe 8 (suite) : audit de 16 fiches TypeScript français (orthographe, lexique, compréhension, didactique) et 6 migrations SQL (sujets blancs, surlignage, conjugaison tri-formes). 2 erreurs critiques (exemple "deux-cents" erroné dans `orthographe-rectifications-1990-sprint.ts` ; référence "programmes 2020" inexistants dans `20260361_seed_didactique_part2.sql`), 2 erreurs importantes, 6 mineures. 17 fichiers sur 22 entièrement corrects.

## [2026-03-23] — Nouveau contenu : 4 fiches (reference/opératoire) + 40 exercices interactifs

### Fiches de révision (4 nouvelles)
- `content/fiches-maths/grandeurs-resolution-problemes-reference.ts` — Fiche reference : résolution de problèmes (démarche de Polya, 8 stratégies, modélisation, erreurs fréquentes)
- `content/fiches-maths/geometrie-classer-quadrilateres-operatoire.ts` — Fiche opératoire : arbre de décision pour reconnaître et classer les quadrilatères (trapèze → parallélogramme → rectangle/losange/carré)
- `content/fiches/orthographe-participe-passe-complet-reference.ts` — Fiche reference : tous les cas d'accord du participe passé (être, avoir, pronominaux, impersonnels, fait+infinitif)
- `content/fiches/analyse-langue-fonctions-phrase-complexe-operatoire.ts` — Fiche opératoire : arbre de décision pour identifier nature et fonction des propositions dans la phrase complexe

### Séries d'exercices (40 questions)
- `supabase/migrations/20260790_seed_math_tri_figures_geometriques.sql` — 10 exercices tri_categories : classer figures géométriques (quadrilatères, triangles, solides) par propriétés
- `supabase/migrations/20260791_seed_math_proportionnalite_situations.sql` — 10 exercices QCM : proportionnalité en situations concrètes (recettes, vitesse, échelle, pourcentages, taux d'évolution)
- `supabase/migrations/20260792_seed_francais_tri_fonctions_grammaticales.sql` — 10 exercices tri_categories : fonctions grammaticales (sujet/COD/COI/CC/attribut/épithète/apposition)
- `supabase/migrations/20260793_seed_francais_surlignage_propositions_avance.sql` — 10 exercices surlignage_propositions : délimiter et identifier les propositions dans des phrases complexes

### Index mis à jour
- `content/fiches-maths/index.ts` — ajout des 2 nouvelles fiches maths
- `content/fiches/index.ts` — ajout des 2 nouvelles fiches français

## [2026-03-23] — Correctifs bugs critiques/majeurs (bugreport session)

### Sécurité & infrastructure
- `app/api/auth/callback/route.ts` — MIN-011 : validation du paramètre `next` pour bloquer les open redirects vers des domaines externes
- `middleware.ts` — CRIT-004 : ajout de la protection middleware pour toutes les routes `/(app)/` ; redirection vers `/connexion` si non authentifié
- `lib/supabase/admin.ts` — CRIT-002 : suppression du singleton admin Supabase ; le client est maintenant créé à chaque appel
- `lib/stripe/server.ts` — MIN-041 : même fix que CRIT-002 appliqué au client Stripe (suppression singleton)
- `lib/rate-limit.ts` — MAJ-013 : suppression du `setInterval` global (fuite mémoire) ; nettoyage paresseux dans `rateLimit()`

### Logique métier
- `features/exercises/server/queries.ts` — MAJ-001 : guard `% 24` sur le calcul de l'heure Paris
- `features/fiches/server/queries.ts` — MIN-009 : même correctif que MAJ-001
- `lib/dashboard/build-dashboard-data.ts` — MAJ-005 : remplacement de `setHours(0,0,0,0)` (UTC en prod) par le calcul minuit Paris
- `app/(app)/revision/page.tsx` — MAJ-021 : filtrage des exercices premium dans la file SRS pour les utilisateurs gratuits
- `lib/env.ts` — MIN-039 : `Number(x) || fallback` → `isNaN` pour respecter la valeur `0`

### UX / navigation
- `features/exercises/components/exercise-player.tsx` — MAJ-003 + MAJ-014 : `goToPreviousQuestion` et `goToNextQuestion` naviguent désormais séquentiellement (`±1`)
- `features/exercises/components/exercise-reducer.ts` — MAJ-015 : `RESET_SESSION` remet `sessionXp`, `lastXpEarned`, `xpTrigger` à zéro
- `app/(app)/maths/page.tsx` — MAJ-020 : remplacement de `<a href>` par `<Link>` pour la navigation client-side
- `features/auth/components/auth-form.tsx` — MIN-003 : `localStorage.removeItem` conditionné à `resp.ok` ; MIN-024 : suppression du `router.refresh()` redondant après `router.push()`
- `features/auth/components/reset-password-form.tsx` — MIN-040 : suppression du `router.refresh()` redondant

## [2026-03-23] — Audit passe 9 : 3 nouveaux bugs mineurs documentés (MIN-040, MIN-041, MIN-042)

- `bugreport.md` — ajout passe 9 : MIN-040 (reset-password-form: router.push + router.refresh, même pattern que MIN-024), MIN-041 (singleton Stripe identique à CRIT-002), MIN-042 (4 nouvelles migrations utilisent le format legacy "mode":"single" au lieu de "single_choice") ; mise à jour du résumé exécutif (5 critiques, 22 majeurs, 41 mineurs)

## [2026-03-23] — Audit passe 7 : 4 nouveaux bugs documentés (MAJ-021, MAJ-022, MIN-034, MIN-035)

- `bugreport.md` — ajout passe 7 : MAJ-021 (SRS révision expose les exercices premium aux utilisateurs gratuits), MAJ-022 (reindexDraftSections non atomique), MIN-034 (WeekRange calcule les dates en UTC au lieu de Paris), MIN-035 (markHomepageAsDraft ignore les erreurs Supabase) ; mise à jour du résumé exécutif (22 majeurs, 34 mineurs)

## [2026-03-23] — Popup auth central (inscription + connexion)

- `features/auth/components/auth-dialog.tsx` — nouveau composant popup centré pour inscription et connexion, avec bascule entre les deux modes sans fermer le dialog
- `components/site-header.tsx` — les boutons "Connexion" et "Créer mon compte" ouvrent le popup au lieu de naviguer vers des pages dédiées
- `features/auth/components/signup-sheet.tsx` — supprimé (remplacé par auth-dialog)

## [2026-03-23] — Audit contenu pédagogique + création 6 fiches + 2 migrations

### Audit
- Inventaire complet : 110 fiches FR + 98 fiches Maths + ~350 séries d'exercices (Français & Maths)
- Lacunes identifiées : graphophonologie/CGP absent (FR didactique), langage oral maternelle absent (FR didactique), 4 opérations sans fiche dédiée (Maths didactique), série `math_didactique_addition` inexistante

### Nouvelles fiches (Français)
- `content/fiches/didactique-graphophonologie-cgp-sprint.ts` — Graphophonologie et CGP : correspondances graphèmes-phonèmes, décodage/encodage, voie phonologique, progression CP
- `content/fiches/didactique-langage-oral-maternelle-sprint.ts` — Langage oral en maternelle : développement du langage PS/MS/GS, dictée à l'adulte, langage évoqué, ateliers langagiers
- `content/fiches/index.ts` — ajout des 2 imports et exports

### Nouvelles fiches (Mathématiques)
- `content/fiches-maths/didactique-addition-sprint.ts` — Didactique de l'addition : structures additives (réunion/ajout), commutativité, stratégies de calcul réfléchi, progression CP-CE1
- `content/fiches-maths/didactique-soustraction-sprint.ts` — Didactique de la soustraction : retrait/complément/comparaison, bug du plus petit au plus grand, algorithmes emprunt/compensation
- `content/fiches-maths/didactique-multiplication-sprint.ts` — Didactique de la multiplication : addition itérée, produit scalaire, tables, commutativité, distributivité
- `content/fiches-maths/didactique-division-sprint.ts` — Didactique de la division : partition vs quotition, division euclidienne, reste, interprétation contextuelle
- `content/fiches-maths/index.ts` — ajout des 4 imports et exports

### Nouvelles migrations SQL
- `supabase/migrations/20260720_seed_graphophonologie_cgp.sql` — 10 exercices sur les CGP (topic_key: graphophonologie_cgp, subdomain: didactique_francais)
- `supabase/migrations/20260721_seed_math_didactique_addition.sql` — 10 exercices sur la didactique de l'addition (topic_key: math_didactique_addition, subdomain: didactique_maths)

## [2026-03-23] — Audit passe 5 : micro-audit ciblé (types, états d'erreur, cookies, flux end-to-end, routes admin, migrations)

- `bugreport.md` — ajout de 8 nouveaux bugs (CRIT-005, MAJ-017–018, MIN-024–028) ; résumé exécutif mis à jour (5 critiques, 18 majeurs, 27 mineurs)

## [2026-03-23] — Quotas freemium : exercices 30/jour, fiches 5/jour + verrouillage premium

- `lib/env.ts` — quota exercices monté de 20 à 30, ajout `freeDailyFicheLimit` (5)
- `lib/freemium.ts` — ajout `getDailyRemainingFicheQuota()` et `canReadFiche()` pour le quota fiches
- `features/fiches/server/queries.ts` — ajout `getFicheReadsCountToday()` (comptage lectures du jour, timezone Paris)
- `features/fiches/server/actions.ts` — `markFicheReadAction` vérifie désormais le tier premium et le quota quotidien
- `app/(app)/fiches/[slug]/page.tsx` — page fiche détail : gate premium (CTA abonnement) + gate quota (limite atteinte) + compteur restant pour free users
- `features/fiches/components/fiche-card.tsx` — `FicheRow` accepte `locked` / `lockReason` pour afficher les fiches verrouillées (premium ou quota) en grisé avec icône cadenas
- `app/(app)/fiches/page.tsx` — listing fiches français : affiche quota restant, verrouille fiches premium et hors-quota
- `app/(app)/fiches-maths/page.tsx` — listing fiches maths : idem
- `app/(marketing)/offre/page.tsx` — textes mis à jour : 20 → 30 questions/jour
- `features/homepage/lib/default-homepage.ts` — idem
- `app/(app)/exercices/[id]/page.tsx` — texte quota dynamique via `env.freeDailyQuestionLimit`
- `__tests__/freemium.test.ts` — tests mis à jour pour quota 30 + ajout 11 tests pour `getDailyRemainingFicheQuota` et `canReadFiche`
- `CLAUDE.md` — documentation mise à jour (quotas 30 questions + 5 fiches)

## [2026-03-23] — Tests unitaires sur les chemins critiques

- `features/exercises/shared/normalize.ts` — extraction de `normalizeExpectedAnswer` et `normalizeChoices` depuis `features/exercises/server/queries.ts` pour permettre les tests directs
- `features/exercises/server/queries.ts` — import depuis le nouveau module partagé (pas de changement de comportement)
- `__tests__/rate-limit.test.ts` — tests du rate limiter in-memory (sliding window, reset, clés indépendantes)
- `__tests__/daily-streak.test.ts` — tests de `computeDailyStreakUpdate` (consécutif, freeze, reset, première activité) et `isStreakMilestone`
- `__tests__/billing.test.ts` — tests de `isPremiumUser` (active, trialing, expired, canceled, date invalide)
- `__tests__/api-diagnostic-complete.test.ts` — tests de la route POST diagnostic (auth, validation Zod, insert, duplicate 23505, rate limit)
- `__tests__/api-stripe-webhook.test.ts` — tests du webhook Stripe (signature, checkout subscription/payment, subscription updated/deleted, upsert fail)
- `__tests__/api-stripe-checkout.test.ts` — tests de la route checkout (auth, priceId invalide, happy path, customer existant, rate limit, erreur Stripe)
- `__tests__/submit-attempt-action.test.ts` — tests de la server action submitAttemptAction (auth, exercice introuvable, premium, quota, QCM correct/incorrect, insert fail, level up, daily streak, revalidatePath virtual/normal, gamification graceful fail)
- `__tests__/normalize-expected-answer.test.ts` — tests de normalizeExpectedAnswer (vrai_faux, single_choice, text, free_text, categorization, highlight_groups, fallbacks) et normalizeChoices

## [2026-03-23] — Refactor lib/dashboard.ts : découpage en modules

- `lib/dashboard.ts` — supprimé (982 lignes → 7 fichiers dans `lib/dashboard/`)
- `lib/dashboard/types.ts` — types locaux : AttemptInput, SessionStats, SubdomainStats, DomainStats
- `lib/dashboard/utils.ts` — utilitaires : MASTERY_THRESHOLD, STATUS_ORDER, getCorrectRate, getLatestTimestamp
- `lib/dashboard/status.ts` — fonctions de statut : getStatus, getReviewReason, getSessionStatus
- `lib/dashboard/badges.ts` — computeEarnedBadges (calcul des badges gagnés)
- `lib/dashboard/activity.ts` — buildDailyActivity, buildScoreEvolution
- `lib/dashboard/build-dashboard-data.ts` — fonction principale buildDashboardData
- `lib/dashboard/index.ts` — barrel export (les imports `@/lib/dashboard` existants continuent de fonctionner)

## [2026-03-23] — Refactor exercise-player.tsx : découpage en sous-composants + useReducer

- `features/exercises/components/exercise-reducer.ts` — nouveau fichier : types (SessionResult, ExerciseState, ExerciseAction) + reducer consolidant les 16 useState
- `features/exercises/components/status-glyph.tsx` — nouveau fichier : composant SVG partagé (check, warning, error)
- `features/exercises/components/exercise-xp-header.tsx` — nouveau fichier : barre XP + popup + compteur de session
- `features/exercises/components/exercise-session-header.tsx` — nouveau fichier : panel session (badges, titre, détails, barre de progression)
- `features/exercises/components/exercise-review-card.tsx` — nouveau fichier : carte de review par question dans l'écran de résultats
- `features/exercises/components/exercise-choice-list.tsx` — nouveau fichier : rendu des choix QCM/vrai_faux avec états visuels
- `features/exercises/components/exercise-feedback.tsx` — nouveau fichier : bloc de feedback post-réponse (titre, corps, Mocca, explication, règle)
- `features/exercises/components/exercise-results-panel.tsx` — nouveau fichier : écran de fin complet (score, mastery, bilan, axes de reprise, review cards)
- `features/exercises/components/exercise-question-panel.tsx` — nouveau fichier : phase passation (streak, encouragement, question, inputs, feedback, navigation)
- `features/exercises/components/exercise-player.tsx` — réduit de 1 101 lignes à ~250 lignes : remplacé 16 useState par useReducer, composition des sous-composants

## [2026-03-23] — Correction de 23 bugs issus de l'audit automatisé

### Critiques (2)
- `app/api/stripe/checkout/route.ts` — BUG-021 : plans daily/weekly créaient des abonnements récurrents indéfiniment ; ajout `cancel_at_period_end: true`
- `features/exercises/server/queries.ts` — BUG-036 : seeds maths `mode:"single"` non reconnu → crash QCM ; mapping `"single"` → `"single_choice"` dans `normalizeExpectedAnswer`

### Majeurs (6)
- `app/(app)/exercices/[id]/page.tsx` — BUG-001 : bouton "Série suivante" absent pour les maths → ajout `getSubjectFromSubdomain()`
- `features/exercises/server/queries.ts` — BUG-004 : quotas réinitialisés en UTC au lieu de Europe/Paris
- `features/exercises/server/actions.ts` — BUG-022 : streak client manipulable → capé à [0, 10] côté serveur
- `features/srs/server/queries.ts` — BUG-023 : race condition INSERT sur srs_cards → `upsert` atomique
- `features/diagnostic/server/queries.ts` — BUG-032 : mismatch schéma diagnostic (objet stocké, tableau attendu) → transformation correcte
- `features/exercises/components/sprint-player.tsx` + `swipe-player.tsx` — BUG-041 : crash client sur mode legacy → try-catch

### Mineurs (15)
- `lib/env.ts` — BUG-014 : `Number()` pouvait produire NaN → fallback `|| 20`
- `lib/freemium.ts` — BUG-028 : `Infinity` non sérialisable JSON → sentinel `-1`
- `content/french-diagnostic-questions.ts` — BUG-040 : href `comprehension_texte` pointait vers le mauvais domaine
- `features/exercises/components/exercise-player.tsx` — BUG-008 : timeout sans réponse attendue → `buildExpectedAnswerLabel`
- `features/exercises/components/exercise-player.tsx` — BUG-017 : eslint-disable caduque supprimée
- `lib/xp.ts` — BUG-026 : barre progression fantôme au niveau 20 → cap à `progress: 1`
- `features/auth/components/auth-form.tsx` — BUG-033 : diagnostic invité perdu à l'inscription → récupération localStorage après signup
- `features/gamification/server/queries.ts` — BUG-031 : race condition personal best sprint → update atomique WHERE
- `types/domain.ts` + `lib/dashboard.ts` + `lib/constants.ts` — BUG-029 : sous-domaines non commencés → statut `non_commencee`
- `features/onboarding/components/onboarding-tour-wrapper.tsx` — BUG-034 : userId inutile supprimé du body
- `features/exercises/server/queries.ts` — BUG-038 : `if (limit)` → `if (limit !== undefined)`
- `components/ui/badge-unlock-toast.tsx` — BUG-013 : prop dépréciée `earnedBadges` supprimée
- `features/leaderboard/server/actions.ts` — BUG-030 : rate limiting ajouté sur changement de pseudo
- `lib/constants.ts` — BUG-027 : `FRENCH_DASHBOARD_SUBDOMAINS` dead code supprimé
- `features/gamification/context.tsx` — BUG-006 : dépendance `gamification.xp` superflue dans `addXp`

## [2026-03-23] — Mot de passe oublié

- `app/api/auth/callback/route.ts` — nouvelle route callback Supabase pour échanger le code de réinitialisation contre une session
- `features/auth/components/forgot-password-form.tsx` — formulaire de demande de réinitialisation de mot de passe
- `features/auth/components/reset-password-form.tsx` — formulaire de saisie du nouveau mot de passe
- `app/(auth)/mot-de-passe-oublie/page.tsx` — page "Mot de passe oublié"
- `app/(auth)/reinitialiser-mot-de-passe/page.tsx` — page "Réinitialiser le mot de passe"
- `app/(auth)/connexion/page.tsx` — ajout du lien "Mot de passe oublié ? Réinitialiser"
- `features/dashboard/components/domain-gauge.tsx` — fix type pré-existant : ajout `non_commencee` au type status
## [2026-03-23] — Police du diagnostic : Cormorant Garamond → Manrope

- `features/diagnostic/components/diagnostic-client.tsx` — remplacement de `font-serif` par `font-sans` sur tous les titres, sous-titres et textes de questions du diagnostic pour uniformiser avec le reste de l'app

## [2026-03-23] — Correction de 12 bugs mineurs supplémentaires

- `features/exercises/components/exercise-player.tsx` — BUG-008 : timed mode affichait une réponse attendue vide sur timeout ; ajout `buildExpectedAnswerLabel`
- `features/exercises/components/exercise-player.tsx` — BUG-017 : suppression directive `eslint-disable` caduque
- `lib/xp.ts` — BUG-026 : barre de progression fantôme au niveau 20 ; cap à `progress: 1` quand max-level atteint
- `features/auth/components/auth-form.tsx` — BUG-033 : diagnostic invité perdu à l'inscription ; ajout récupération localStorage après signup
- `features/gamification/server/queries.ts` — BUG-031 : race condition sur personal best sprint ; remplacé par update atomique avec clause WHERE
- `types/domain.ts` + `lib/dashboard.ts` + `lib/constants.ts` + `components/` — BUG-029 : sous-domaines non commencés affichés comme "en cours" ; ajout statut `non_commencee`
- `features/onboarding/components/onboarding-tour-wrapper.tsx` — BUG-034 : suppression `userId` inutile exposé dans le body de la requête
- `features/exercises/server/queries.ts` — BUG-038 : `if (limit)` bloquait `limit=0` ; corrigé en `limit !== undefined`
- `components/ui/badge-unlock-toast.tsx` — BUG-013 : suppression prop dépréciée `earnedBadges` (dead code)
- `features/leaderboard/server/actions.ts` — BUG-030 : ajout rate limiting sur `updateDisplayNameAction` (anti-spam)
- `lib/constants.ts` — BUG-027 : suppression `FRENCH_DASHBOARD_SUBDOMAINS` (doublon dead code)
- `features/gamification/context.tsx` — BUG-006 : suppression `gamification.xp` superflue dans les dépendances de `addXp`

## [2026-03-23] — Correction de 11 bugs (3 critiques, 5 majeurs, 3 mineurs)

### Critiques
- `app/api/stripe/checkout/route.ts` — BUG-021 : les plans daily/weekly créaient des abonnements récurrents indéfiniment ; ajout `cancel_at_period_end: true` pour les accès limités
- `features/exercises/server/queries.ts` — BUG-036 : les seeds maths utilisaient `mode:"single"` non reconnu → crash QCM ; ajout du mapping `"single"` → `"single_choice"` dans `normalizeExpectedAnswer`

### Majeurs
- `app/(app)/exercices/[id]/page.tsx` — BUG-001 : `getExercises` ne passait pas le `subject` pour les maths → bouton "Série suivante" toujours absent pour les séries maths ; ajout de `getSubjectFromSubdomain()`
- `features/exercises/server/queries.ts` — BUG-004 : `getAttemptsCountToday` utilisait le fuseau UTC du serveur au lieu de Europe/Paris → quotas réinitialisés à la mauvaise heure
- `features/exercises/server/actions.ts` — BUG-022 : le streak était lu depuis le FormData client (manipulable) → capé à [0, 10] côté serveur
- `features/srs/server/queries.ts` — BUG-023 : race condition INSERT sur `srs_cards` en cas de double-clic → remplacé par `upsert` atomique
- `features/diagnostic/server/queries.ts` — BUG-032 : mismatch de schéma entre écriture (objet) et lecture (tableau) des résultats diagnostic → transformation correcte avec calcul mastery/recommendation
- `features/exercises/components/sprint-player.tsx` + `swipe-player.tsx` — BUG-041 : `evaluateExerciseAnswer` sans try-catch → crash client sur questions maths avec mode legacy

### Mineurs
- `lib/env.ts` — BUG-014 : `Number()` pouvait produire `NaN` si `FREE_DAILY_QUESTION_LIMIT` invalide → fallback `|| 20`
- `lib/freemium.ts` + `__tests__/freemium.test.ts` — BUG-028 : `getDailyRemainingQuota` retournait `Infinity` (non sérialisable JSON) → sentinel `-1` pour premium
- `content/french-diagnostic-questions.ts` — BUG-040 : href de `comprehension_texte` pointait vers le mauvais domaine → corrigé avec `?subdomain=comprehension_texte`

## [2026-03-23] — Fix tunnel diagnostic P0 + optimisations performance

### Tunnel diagnostic (P0 critique)
- `features/diagnostic/components/diagnostic-client.tsx` — Correction du format envoyé à l'API : subdomains convertis d'array en record, `correct` → `score` (le format précédent ne passait pas la validation Zod)
- `features/diagnostic/components/diagnostic-client.tsx` — Sauvegarde des résultats en localStorage pour les invités (`guest_diagnostic_result`) afin de tenir la promesse "retrouver vos résultats"
- `features/auth/components/auth-form.tsx` — Après connexion, récupération automatique du diagnostic invité depuis localStorage, POST vers l'API, puis nettoyage du stockage

### Exercices — normalisation des formats expected_answer
- `features/exercises/server/queries.ts` — Support des modes `acceptableAnswers`, `exact`, `categories` (items+categories) et `free_text` (avec tableau) qui provoquaient des warnings et un fallback en tableau vide

### Performance
- `features/homepage/components/renderer.tsx` — Hero image quality réduite de 100 à 75 (gain de poids significatif sans perte visible)
- `next.config.ts` — Réactivation de `reactStrictMode: true` pour détecter les effets de bord en dev

## [2026-03-23] — Quick wins audit : acquisition, SEO, accessibilité, cohérence marque

### Homepage
- `features/homepage/lib/default-homepage.ts` — Activation des sections `trust_bar` et `domains` (visible: true) pour exposer la profondeur du produit
- `features/homepage/lib/default-homepage.ts` — Unification email contact `crpe-prep.fr` → `crpe-francais.fr` dans la FAQ
- `features/homepage/components/renderer.tsx` — Remplacement `<main>` par `<div>` pour éviter un double `<main>` imbriqué avec le layout marketing

### Header & navigation
- `components/site-header.tsx` — CTA desktop : ajout bouton "Créer mon compte gratuit" comme action principale, "Connexion" rétrogradé en lien textuel
- `components/site-header.tsx` — Menu mobile : ajout "Créer mon compte gratuit" + "Connexion" en secondaire pour les non-connectés

### Cohérence marque
- `components/site-footer.tsx` — Copyright "CRPE Prep" → "CRPE Français" pour cohérence avec le header et le logo
- `components/site-footer.tsx` — Email contact `crpe-prep.fr` → `crpe-francais.fr`

### Accessibilité
- `app/(marketing)/layout.tsx` — Ajout `<main id="main-content">` englobant les pages marketing (cible du skip link existant)

### SEO
- `app/sitemap.ts` — Retrait des pages auth `/connexion` et `/inscription` du sitemap (non indexables)
- `app/robots.ts` — Ajout des routes privées manquantes au disallow : `/francais`, `/maths`, `/exercices`, `/exercice-aleatoire`, `/revision`, `/abonnement`, `/classement`, `/ressources`, `/fiches-maths`, `/connexion`, `/inscription`

## [2026-03-23] — Persistance des badges en base de données

- `supabase/migrations/20260787_create_user_badges.sql` — Nouvelle table `user_badges` (user_id, badge_id, earned_at) avec RLS pour persister les badges débloqués
- `features/badges/server/queries.ts` — Module serveur : getUserBadgeIds, getUserBadgesWithDates, syncBadges (compare badges calculés vs DB, insère les nouveaux)
- `features/dashboard/server/queries.ts` — getDashboardData appelle syncBadges après computeEarnedBadges et retourne `newlyUnlockedBadges`
- `components/ui/badge-unlock-toast.tsx` — Utilise `newlyUnlockedBadges` (venant de la DB) au lieu de localStorage pour détecter les nouveaux badges
- `app/(app)/tableau-de-bord/page.tsx` — Passe `newlyUnlockedBadges` (FR + Maths combinés) au toast
- `app/(app)/progression/page.tsx` — Passe `newlyUnlockedBadges` au toast

## [2026-03-23] — Améliorations accessibilité, SEO et UX (loop automatique)

### Accessibilité
- `features/exercises/components/swipe-player.tsx` — Ajout `aria-label="Répondre Vrai/Faux"` sur les boutons de réponse
- `components/app-navigation.tsx` — Ajout `aria-controls` + `id` + `role="region"` sur les groupes dépliables du menu latéral
- `components/ui/input.tsx` — Focus ring plus visible (opacité 15% → 30%, ajout ring-offset)
- `features/dashboard/components/collapsible-panel.tsx` — Ajout `aria-controls`, `id` et `role="region"` pour lier bouton ↔ contenu
- `features/exercises/components/exercise-timer.tsx` — Ajout `aria-atomic="true"` + `aria-live="polite"` pour annonce complète du temps restant aux lecteurs d'écran
- `features/auth/components/auth-form.tsx` — Ajout `aria-busy` sur le bouton submit pendant le chargement
- `features/auth/components/auth-form.tsx` — Ajout `autoComplete` (name, email, new-password/current-password) pour gestionnaires de mots de passe
- `features/diagnostic/components/radar-chart.tsx` — Ajout `role="img"` et `aria-label` avec scores par sous-domaine sur le SVG du radar
- `features/exercises/components/exercise-player.tsx` — Raccourci Ctrl+Entrée pour soumettre une réponse courte + indication dans le placeholder

### Performance
- `features/diagnostic/components/radar-chart.tsx` — Wrappé avec `React.memo` pour éviter les re-renders SVG inutiles

### Validation
- `features/auth/components/auth-form.tsx` — Ajout `required`, `minLength={2}`, `maxLength={30}` + validation JS + trim sur le champ displayName

### Grammaire
- `features/dashboard/components/session-progress-card.tsx` — Fix accord : "traitée(s)" s'accorde avec "question(s)" (basé sur `questionCount`)

### SEO & Metadata
- `app/(marketing)/page.tsx` — Ajout metadata title, description et OpenGraph pour la homepage
- `app/(marketing)/offre/page.tsx` — Ajout metadata SEO et OpenGraph pour la page offres
- `app/(marketing)/diagnostic/page.tsx` — Ajout metadata SEO et OpenGraph pour la page diagnostic
- `app/layout.tsx` — Ajout Twitter card `summary_large_image`

### UX
- `features/dashboard/components/session-progress-card.tsx` — Ajout hover shadow (transition-shadow + hover:shadow-elevated)
- `features/auth/components/auth-form.tsx` — Autofocus sur le premier champ (prénom en inscription, email en connexion)
- `app/(app)/francais/page.tsx` — CTA "Découvrir les exercices" dans l'état vide (aucune série commencée)
- `app/(app)/maths/page.tsx` — Idem, CTA dans l'état vide
- ~~`features/diagnostic/components/diagnostic-client.tsx` — Touche Escape~~ **REVERTÉ** (supprimait la progression sans confirmation)
- ~~`app/api/stripe/webhook/route.ts` — Guard payment_intent~~ **REVERTÉ** (cassait les abonnements Stripe mode subscription)

## [2026-03-23] — 87 nouvelles séries d'exercices maths (609 questions) — de 63 à 150 séries

### Résumé — 5 domaines, 87 séries, 609 exercices

| Domaine | Séries | Questions |
|---|---|---|
| nombres_calcul | +18 | 126 |
| geometrie | +18 | 126 |
| grandeurs_mesures | +17 | 119 |
| organisation_donnees | +17 | 119 |
| didactique_maths | +17 | 119 |

- `supabase/migrations/20260619_*.sql` à `20260786_*.sql` — 87 fichiers SQL de seed, 7 exercices chacun
- Chaque série suit la progression SERIESMATHS.md : amorce → consolidation → approfondissement
- 3+ formats par série (QCM, vrai/faux, réponse courte), distracteurs diagnostiques
- Terminologie Éduscol, références Vergnaud/Brousseau/Duval/Pólya pour la didactique
- Mix free/premium selon le niveau (facile=free, avancé/didactique=premium)

### organisation_donnees (4 séries — 28 questions)
- `supabase/migrations/20260619_seed_math_moyennes_medianes.sql` — Moyenne, médiane et étendue : 7 exercices (moyenne simple, médiane série impaire/paire, étendue, moyenne pondérée, comparaison moyenne/médiane, tableau d'effectifs). Intermédiaire, premium.
- `supabase/migrations/20260620_seed_math_tableaux_donnees.sql` — Tableaux de données — Lecture et interprétation : 7 exercices (tableau double entrée, proportions, tendances, fréquences relatives, croisement de données). Intermédiaire, free.
- `supabase/migrations/20260621_seed_math_probabilites_evenements.sql` — Probabilités — Événements et calculs : 7 exercices (événement simple, complémentaire, union disjointe, cartes, arbre, événements indépendants, probabilité conditionnelle). Intermédiaire, premium.
- `supabase/migrations/20260622_seed_math_diagrammes_representation.sql` — Diagrammes et représentations graphiques : 7 exercices (diagramme en barres, circulaire, histogramme vs barres, graphiques trompeurs, lecture d'échelle). Facile, free.

### didactique_maths (2 séries — 14 questions)
- `supabase/migrations/20260623_seed_math_didactique_fractions.sql` — Didactique des fractions — Erreurs et remédiations : 7 exercices (erreurs d'addition, rôle dénominateur, champs conceptuels Vergnaud, simplification, fractions équivalentes, fractions impropres, comparaison). Intermédiaire, premium.
- `supabase/migrations/20260624_seed_math_didactique_proportionnalite.sql` — Didactique de la proportionnalité — Situations et obstacles : 7 exercices (raisonnement additif vs multiplicatif, situations non proportionnelles, isomorphisme de mesures Vergnaud, proportionnalité directe/inverse, linéaire vs affine, variables didactiques). Difficile, premium.

### nombres_calcul (2 séries — 14 questions)
- `supabase/migrations/20260625_seed_math_multiples_diviseurs.sql` — Multiples, diviseurs et nombres premiers : 7 exercices (identification diviseurs, critères de divisibilité, primalité 91, décomposition 180, PGCD, fraction irréductible, problème bouquets). Intermédiaire, free.
- `supabase/migrations/20260626_seed_math_operations_priorites.sql` — Priorités opératoires et expressions complexes : 7 exercices (PEMDAS, non-associativité division, parenthèses/exposants, crochets imbriqués, analyse erreur élève, distributivité calcul mental, traduction problème→expression). Difficile, premium.

### geometrie (2 séries — 14 questions)
- `supabase/migrations/20260627_seed_math_triangles_proprietes.sql` — Triangles — Propriétés, angles et cas remarquables : 7 exercices (somme angles, types de triangles, triangle 30-60-90, angle extérieur, inégalité triangulaire, hypoténuse 45-45-90, médiane/hauteur isocèle). Intermédiaire, premium.
- `supabase/migrations/20260628_seed_math_figures_complexes_aires.sql` — Figures complexes — Calculs d'aires composées : 7 exercices (rectangle+demi-cercle, cadre rectangulaire, forme en L, anneau, jardin, hexagone par décomposition, trapèze multi-étapes). Difficile, premium.

### grandeurs_mesures (2 séries — 14 questions)
- `supabase/migrations/20260629_seed_math_echelles_plans.sql` — Échelles, plans et cartes — Applications : 7 exercices (distance réelle, formats d'échelle, trouver une échelle, aires avec échelle², carte, plan architectural, problème multi-étapes). Intermédiaire, premium.
- `supabase/migrations/20260630_seed_math_unites_aire_volume.sql` — Unités d'aire et de volume — Conversions avancées : 7 exercices (cm²↔m², dm³=L, m³↔L, hectares↔m², aquarium, erreur km², peinture multi-étapes). Difficile, premium.

## [2026-03-23] — Fix : carte Vrai/Faux ne se recentre pas après réponse

- `features/exercises/components/swipe-player.tsx` — Reset de la motion value `x` à chaque changement de question + ajout de `x: 0` dans initial/animate pour éviter que la carte hérite de la position de sortie précédente (causait des réponses involontaires)

## [2026-03-22] — 35 nouvelles fiches de révision mathématiques CRPE (62 → 97 fiches)

### Dernière itération (5 fiches)
- `content/fiches-maths/nombres-inequations-sprint.ts` — Sprint : inéquations, inversion du sens, intervalles, encadrements
- `content/fiches-maths/geometrie-rotation-translation-sprint.ts` — Sprint : rotation et translation, isométries, propriétés de conservation
- `content/fiches-maths/grandeurs-mesurer-construire-angle-operatoire.ts` — Opératoire : rapporteur, mesurer/construire un angle, erreurs élèves
- `content/fiches-maths/didactique-jeu-calcul-mental-sprint.ts` — Sprint : calcul mental automatisé vs réfléchi, rituels, jeux (Mathador)
- `content/fiches-maths/donnees-frequences-cumulees-quartiles-sprint.ts` — Sprint : fréquences cumulées, quartiles, écart interquartile, boîte à moustaches
- Voir entrée détaillée des 30 premières fiches plus bas dans le changelog

## [2026-03-22] — Batch 12 : 6 séries mathématiques + sujet blanc n°5 (42 questions)

- `supabase/migrations/20260613_seed_math_calcul_litteral.sql` — Série « Calcul littéral — Identités remarquables » : 7 exercices (développement (a+b)², factorisation a²-b², identités 3e degré, calcul mental 101², résolution x²-9x+20=0, problème géométrique). Niveau intermédiaire, premium.
- `supabase/migrations/20260614_seed_math_decimaux_operations.sql` — Série « Nombres décimaux — Opérations posées et pièges » : 7 exercices (addition avec alignement, multiplication décimaux, soustraction avec retenue, division par décimal, comparaison/rangement). Niveau facile, free.
- `supabase/migrations/20260615_seed_math_geometrie_espace_sections.sql` — Série « Géométrie dans l'espace — Sections et perspectives » : 7 exercices avancés (sections cube/cylindre/cône, perspective cavalière, prisme pentagonal/Euler, section par sommet). Niveau avancé, premium.
- `supabase/migrations/20260616_seed_math_didactique_differenciation.sql` — Série « Didactique — Différenciation pédagogique » : 7 exercices avancés (définition, supports/processus, étayage, évaluation formative, successive vs simultanée, plan de travail). Niveau avancé, premium.
- `supabase/migrations/20260617_seed_math_equations_droites.sql` — Série « Équations de droites et repères » : 7 exercices (droite par origine, coefficient directeur, équation par un point, parallélisme, intersection, perpendicularité). Niveau intermédiaire, premium.
- `supabase/migrations/20260618_seed_math_sujet_blanc_5.sql` — Série « Sujet blanc CRPE maths n°5 » : 7 exercices multi-domaines (calcul littéral, cône/Pythagore, dé truqué, proportionnalité imprimante, Héron, didactique cycle 2, statistiques descriptives). Niveau avancé, premium.

## [2026-03-22] — 30 nouvelles fiches de révision mathématiques CRPE (62 → 92 fiches)

### Nombres et calcul (8 fiches)
- `content/fiches-maths/nombres-pourcentages-sprint.ts` — Sprint : pourcentages, coefficients multiplicateurs, pourcentages successifs
- `content/fiches-maths/nombres-pourcentages-operatoire.ts` — Opératoire : arbre de décision hausse/baisse/taux/valeur initiale/pourcentages successifs
- `content/fiches-maths/nombres-equations-premier-degre-sprint.ts` — Sprint : résolution par opérations inverses, erreurs de signe, vérification
- `content/fiches-maths/nombres-relatifs-operations-sprint.ts` — Sprint : règles des signes addition vs multiplication, piège −5² vs (−5)²
- `content/fiches-maths/nombres-divisibilite-operatoire.ts` — Opératoire : critères de divisibilité, décomposition facteurs premiers
- `content/fiches-maths/nombres-fonctions-lineaires-affines-sprint.ts` — Sprint : distinction linéaire/affine = proportionnel/non-proportionnel
- `content/fiches-maths/nombres-numeration-bases-sprint.ts` — Sprint : numération en bases, conversion, intérêt didactique

### Géométrie (7 fiches)
- `content/fiches-maths/geometrie-thales-sprint.ts` — Sprint : configurations triangle et papillon, réciproque
- `content/fiches-maths/geometrie-thales-operatoire.ts` — Opératoire : calculer une longueur ou prouver un parallélisme
- `content/fiches-maths/geometrie-programmes-construction-sprint.ts` — Sprint : rédiger et interpréter un programme de construction
- `content/fiches-maths/geometrie-trigonometrie-sprint.ts` — Sprint : SOH-CAH-TOA, confusion adjacent/opposé
- `content/fiches-maths/geometrie-agrandissement-reduction-sprint.ts` — Sprint : coefficient k, règle L×k A×k² V×k³
- `content/fiches-maths/geometrie-angles-paralleles-sprint.ts` — Sprint : alternes-internes, correspondants, co-internes
- `content/fiches-maths/geometrie-reperage-operatoire.ts` — Opératoire : coordonnées, distances, milieux dans le plan

### Grandeurs et mesures (7 fiches)
- `content/fiches-maths/grandeurs-unites-composees-sprint.ts` — Sprint : km/h ↔ m/s, densité, débits
- `content/fiches-maths/grandeurs-vitesse-temps-distance-operatoire.ts` — Opératoire : problèmes v/t/d à étapes, piège vitesse moyenne
- `content/fiches-maths/grandeurs-echelles-operatoire.ts` — Opératoire : distance réelle/plan, échelle, k²/k³
- `content/fiches-maths/grandeurs-durees-horaires-sprint.ts` — Sprint : système sexagésimal, piège 2h45 ≠ 2,45h
- `content/fiches-maths/grandeurs-perimetre-aire-confusion-sprint.ts` — Sprint : indépendance périmètre/aire
- `content/fiches-maths/grandeurs-volumes-contenances-operatoire.ts` — Opératoire : cube, pavé, cylindre, pyramide, conversion dm³=L

### Organisation de données (5 fiches)
- `content/fiches-maths/donnees-lecture-graphiques-sprint.ts` — Sprint : lecture critique, diagramme en barres vs histogramme
- `content/fiches-maths/donnees-probabilites-composees-sprint.ts` — Sprint : 2 épreuves, avec/sans remise, arbres
- `content/fiches-maths/donnees-moyenne-ponderee-operatoire.ts` — Opératoire : moyenne pondérée, médiane, étendue
- `content/fiches-maths/donnees-denombrement-combinatoire-sprint.ts` — Sprint : principe multiplicatif, arrangements vs combinaisons
- `content/fiches-maths/donnees-proportionnalite-graphique-sprint.ts` — Sprint : droite passant par l'origine = proportionnel

### Didactique des mathématiques (6 fiches)
- `content/fiches-maths/didactique-obstacles-geometrie-sprint.ts` — Sprint : obstacle prototypique (Houdement & Kuzniak)
- `content/fiches-maths/didactique-vergnaud-structures-sprint.ts` — Sprint : structures additives et multiplicatives
- `content/fiches-maths/didactique-brousseau-contrat-situations-sprint.ts` — Sprint : contrat didactique, dévolution, effet Topaze
- `content/fiches-maths/didactique-evaluation-remediation-sprint.ts` — Sprint : évaluation formative, diagnostic d'erreur, remédiation
- `content/fiches-maths/didactique-materiel-manipulation-sprint.ts` — Sprint : matériel et manipulation, parcours manipuler→représenter→symboliser

### Index
- `content/fiches-maths/index.ts` — Ajout des 30 imports et entrées dans allFichesMaths (92 fiches total)

## [2026-03-22] — Batch 11 : 6 nouvelles séries mathématiques (42 questions)

- `supabase/migrations/20260607_seed_math_inequations_encadrements.sql` — Série « Inéquations et encadrements » : 7 exercices (résolution inéquations, inversion du sens, encadrement √50, encadrement 2π, division par négatif, problème contextualisé artisan, encadrement a-b). Niveau intermédiaire, premium.
- `supabase/migrations/20260608_seed_math_lecture_graphique.sql` — Série « Lecture graphique de fonctions » : 7 exercices (amplitude thermique, sens de variation, distance-temps avec arrêt, fonction linéaire, tarifs postaux escalier, débit piscine, comparaison forfaits). Niveau intermédiaire, free.
- `supabase/migrations/20260609_seed_math_divisibilite_criteres.sql` — Série « Multiples, diviseurs et critères de divisibilité » : 7 exercices (critère div par 3, div par 6→2 et 3, diviseurs de 36, critère par 4, PPCM, PGCD bouquets, chiffre manquant div par 9). Niveau facile, free.
- `supabase/migrations/20260610_seed_math_didactique_resolution_problemes.sql` — Série « Didactique — Résolution de problèmes » : 7 exercices avancés (Polya 4 étapes, problème ouvert IREM, obstacle « perdre »/Vergnaud, application vs recherche, données inutiles, champ additif, rôle enseignant/dévolution). Niveau avancé, premium.
- `supabase/migrations/20260611_seed_math_agrandissement_reduction.sql` — Série « Agrandissement et réduction » : 7 exercices (dimensions ×k, aire ×k² piège, aire triangle réduit, photocopie 150%, volume ×k³, échelle maquette, périmètre réduit). Niveau intermédiaire, premium.
- `supabase/migrations/20260612_seed_math_perimetre_aire_volume_confusions.sql` — Série « Périmètre, aire, volume — Confusions et pièges » : 7 exercices (même P ≠ même A, incomparabilité unités, carré vs rectangle isopérimétrique, doublement dimensions, aquarium verre+eau, optimisation grillage→carré). Niveau intermédiaire, free.

## [2026-03-22] — Batch 10 (final) : 2 séries + sujet blanc n°4 (15 questions)

- `supabase/migrations/20260537_seed_math_proportionnel_ou_non.sql` — Série « Proportionnel ou non ? — Distinguer les situations » : 7 exercices (proportionnalité directe/inverse, relation affine vs proportionnelle, graphique, illusion de linéarité, obstacle didactique). Niveau intermédiaire, free.
- `supabase/migrations/20260538_seed_math_sujet_blanc_4.sql` — Série « Sujet blanc CRPE — Mini-épreuve n°4 » : 8 exercices multi-domaines (priorités fractionnaires, cercle inscrit, hectares, linéarité de la moyenne, confusion périmètre/aire, lettre-inconnue au cycle 3, partage inégal, nombres premiers). Niveau avancé, premium.

## [2026-03-22] — 25 nouvelles fiches de révision mathématiques CRPE (62 → 87 fiches)

### Nombres et calcul (6 fiches)
- `content/fiches-maths/nombres-pourcentages-sprint.ts` — Sprint : pourcentages, coefficients multiplicateurs, pourcentages successifs
- `content/fiches-maths/nombres-pourcentages-operatoire.ts` — Opératoire : arbre de décision hausse/baisse/taux/valeur initiale/pourcentages successifs
- `content/fiches-maths/nombres-equations-premier-degre-sprint.ts` — Sprint : résolution par opérations inverses, erreurs de signe, vérification
- `content/fiches-maths/nombres-relatifs-operations-sprint.ts` — Sprint : règles des signes addition vs multiplication, piège −5² vs (−5)²
- `content/fiches-maths/nombres-divisibilite-operatoire.ts` — Opératoire : critères de divisibilité, décomposition en facteurs premiers, liste des diviseurs
- `content/fiches-maths/nombres-fonctions-lineaires-affines-sprint.ts` — Sprint : distinction linéaire/affine = proportionnel/non-proportionnel

### Géométrie (6 fiches)
- `content/fiches-maths/geometrie-thales-sprint.ts` — Sprint : configurations triangle et papillon, réciproque de Thalès
- `content/fiches-maths/geometrie-thales-operatoire.ts` — Opératoire : calculer une longueur ou prouver un parallélisme pas à pas
- `content/fiches-maths/geometrie-programmes-construction-sprint.ts` — Sprint : rédiger et interpréter un programme de construction
- `content/fiches-maths/geometrie-trigonometrie-sprint.ts` — Sprint : SOH-CAH-TOA, confusion adjacent/opposé, complémentarité cos/sin
- `content/fiches-maths/geometrie-agrandissement-reduction-sprint.ts` — Sprint : coefficient k, règle L×k A×k² V×k³
- `content/fiches-maths/geometrie-angles-paralleles-sprint.ts` — Sprint : alternes-internes, correspondants, co-internes

### Grandeurs et mesures (5 fiches)
- `content/fiches-maths/grandeurs-unites-composees-sprint.ts` — Sprint : km/h ↔ m/s, densité, débits
- `content/fiches-maths/grandeurs-vitesse-temps-distance-operatoire.ts` — Opératoire : problèmes v/t/d à étapes, piège vitesse moyenne
- `content/fiches-maths/grandeurs-echelles-operatoire.ts` — Opératoire : distance réelle/plan, échelle, agrandissement-réduction
- `content/fiches-maths/grandeurs-durees-horaires-sprint.ts` — Sprint : système sexagésimal, piège 2h45 ≠ 2,45h
- `content/fiches-maths/grandeurs-perimetre-aire-confusion-sprint.ts` — Sprint : indépendance périmètre/aire, obstacle didactique

### Organisation de données (4 fiches)
- `content/fiches-maths/donnees-lecture-graphiques-sprint.ts` — Sprint : lecture critique, distinction diagramme en barres / histogramme
- `content/fiches-maths/donnees-probabilites-composees-sprint.ts` — Sprint : situations à 2 épreuves, avec/sans remise, arbres
- `content/fiches-maths/donnees-moyenne-ponderee-operatoire.ts` — Opératoire : moyenne pondérée, médiane, étendue, centres de classes
- `content/fiches-maths/donnees-denombrement-combinatoire-sprint.ts` — Sprint : principe multiplicatif vs additif, arrangements vs combinaisons

### Didactique des mathématiques (4 fiches)
- `content/fiches-maths/didactique-obstacles-geometrie-sprint.ts` — Sprint : obstacle prototypique, géométrie perceptive vs déductive (Houdement & Kuzniak)
- `content/fiches-maths/didactique-vergnaud-structures-sprint.ts` — Sprint : structures additives et multiplicatives de Vergnaud
- `content/fiches-maths/didactique-brousseau-contrat-situations-sprint.ts` — Sprint : contrat didactique, situation a-didactique, dévolution, effet Topaze
- `content/fiches-maths/didactique-evaluation-remediation-sprint.ts` — Sprint : évaluation formative, diagnostic d'erreur, remédiation par changement de registre

### Index
- `content/fiches-maths/index.ts` — Ajout des 25 imports et entrées dans allFichesMaths (87 fiches total)

## [2026-03-22] — Batch 10 : 6 nouvelles séries mathématiques (42 questions)

- `supabase/migrations/20260534_seed_math_logique_raisonnement.sql` — Série « Logique et raisonnement — Contre-exemples et démonstrations » : 7 exercices avancés (contre-exemples, preuve par l'absurde, généralisation abusive, quantificateurs, démonstration algébrique). Niveau avancé, premium.
- `supabase/migrations/20260535_seed_math_tableaux_proportionnalite.sql` — Série « Tableaux et proportionnalité — Organisation de données » : 7 exercices (reconnaissance proportionnalité, coefficient unitaire, diagramme circulaire, pourcentage global, croissance vs proportionnalité). Niveau intermédiaire, free.
- `supabase/migrations/20260536_seed_math_division_euclidienne.sql` — Série « Division euclidienne — Problèmes et sens » : 7 exercices (reste, propriété r<d, arrondi supérieur bus, distribution bonbons, forme 7k+3, corde, calendrier modulo). Niveau intermédiaire, free.
- `supabase/migrations/20260537_seed_math_didactique_geometrie.sql` — Série « Didactique — Erreurs et remédiations en géométrie » : 7 exercices avancés (van Hiele niveaux 1-3, prototype géométrique, hauteur vs verticale, axes de symétrie rectangle, classification des figures). Niveau avancé, premium.
- `supabase/migrations/20260538_seed_math_masses_contenances.sql` — Série « Masses, contenances et ordres de grandeur » : 7 exercices (masse baguette, eau=1kg/L, cL→L, chargement camion, unité adaptée, masse recette, erreur d'ordre de grandeur). Niveau facile, free.
- `supabase/migrations/20260539_seed_math_sujet_blanc_3.sql` — Série « Sujet blanc CRPE maths n°3 » : 7 exercices multi-domaines (facteurs premiers, Pythagore+aire, probabilité complémentaire, robinets/débits, moyenne pondérée, multiplication posée erreur, échelle et surface). Niveau avancé, premium.

## [2026-03-22] — Batch 9 : 3 séries finales + sujet blanc n°3 (22 questions)

- `supabase/migrations/20260534_seed_math_cercles_disques.sql` — Série « Cercles et disques — Propriétés et calculs » : 7 exercices (vocabulaire, périmètre, aire du disque, longueur d'arc, effet du doublement du rayon, couronne, roue de vélo). Niveau intermédiaire, free.
- `supabase/migrations/20260535_seed_math_logique_raisonnement.sql` — Série « Logique et raisonnement — Problèmes ouverts » : 7 exercices avancés (contre-exemple, contraposée, combinatoire/permutations, logique déductive, problème de chiffres, raisonnement par l'absurde, dénombrement de matchs). Niveau avancé, premium.
- `supabase/migrations/20260536_seed_math_sujet_blanc_3.sql` — Série « Sujet blanc CRPE — Mini-épreuve n°3 » : 8 exercices multi-domaines (PPCM, ombre/Thalès, robinets/débit, probabilité deux dés, proportionnalité inverse, introduction de l'aire, clôture circulaire, trains qui se croisent). Niveau avancé, premium.

## [2026-03-22] — Sujets blancs v3 : 20 questions, 2 parties, textes allongés

- `supabase/migrations/20260507_seed_sujets_blancs_v3.sql` — Refonte des 3 sujets blancs : 20 questions par sujet (au lieu de 15), textes littéraires allongés, 2 parties (Étude de la langue + Analyse du lexique), questions de réécriture, niveau Intermédiaire-Difficile uniquement
- `app/(app)/exercices/page.tsx` — Description et cartes mises à jour (2 parties, nombre de questions dynamique)
- `features/exercises/server/queries.ts` — Textes de session adaptés au nouveau format 2 parties

## [2026-03-22] — Batch 8 : 3 nouvelles séries + sujet blanc n°2 (22 questions)

- `supabase/migrations/20260531_seed_math_angles_mesures_proprietes.sql` — Série « Angles — Mesures et propriétés » : 7 exercices (vocabulaire, complémentaires/supplémentaires, alternes-internes, angle inscrit/au centre, somme des angles d'un polygone). Niveau intermédiaire, free.
- `supabase/migrations/20260532_seed_math_mise_en_equation.sql` — Série « Mise en équation — Du problème à l'équation » : 7 exercices (traduction d'énoncé, résolution 1er degré, périmètre avec inconnue, entiers consécutifs, inéquation, problème de mélange, poules et lapins). Niveau intermédiaire, premium.
- `supabase/migrations/20260533_seed_math_sujet_blanc_2.sql` — Série « Sujet blanc CRPE — Mini-épreuve n°2 » : 8 exercices multi-domaines (fractions, trapèze, échelle/aire, médiane, erreur périmètre/aire cercle, programmes division, réservoir cubique, raisonnement divisibilité). Niveau avancé, premium.

## [2026-03-22] — Batch 7 : 6 nouvelles séries mathématiques (42 questions)

- `supabase/migrations/20260527_seed_math_sujet_blanc_maths.sql` — Série « Sujet blanc CRPE — Épreuve de maths n°1 » : 7 exercices multi-domaines simulant une épreuve CRPE (PGCD, aire médiane, réservoir/bidons, vitesse/temps, statistiques, erreur décimale, trapèze). Niveau avancé, premium.
- `supabase/migrations/20260528_seed_math_aires_perimetres_composees.sql` — Série « Aires et périmètres — Figures composées » : 7 exercices (triangle, cercle, terrain+piscine, piste d'athlétisme, losange, quart de cercle, rectangle+triangle). Niveau intermédiaire, free.
- `supabase/migrations/20260529_seed_math_numeration_bases.sql` — Série « Numération — Bases et systèmes positionnels » : 7 exercices (valeur positionnelle, rôle du zéro, base 2→10, base 10→5, chiffres en base 8, système maya, intérêt didactique des bases). Niveau intermédiaire, premium.
- `supabase/migrations/20260530_seed_math_vitesses_moyennes.sql` — Série « Vitesses moyennes et pièges » : 7 exercices avancés sur le piège classique de la moyenne harmonique vs arithmétique (aller-retour, conversion km/h↔m/s, arrêts, avance, deux vitesses). Niveau avancé, premium.
- `supabase/migrations/20260531_seed_math_didactique_manuels.sql` — Série « Didactique — Analyse de manuels et séquences » : 7 exercices avancés (Vergnaud multiplicatif, fractions multi-représentations, quotition/partage, progression aires, conflit cognitif périmètre/aire, obstacle décimaux, programmes cycle 3). Niveau avancé, premium.
- `supabase/migrations/20260532_seed_math_durees_horaires.sql` — Série « Grandeurs — Durées et horaires » : 7 exercices sur le système sexagésimal (heures→minutes, 1h30≠1,30h, addition de durées, conversion décimale, calcul d'intervalles, cumul horaire, passage par minuit). Niveau facile, free.

## [2026-03-22] — Batch 6 : 4 nouvelles séries + 1er sujet blanc CRPE (29 questions)

- `supabase/migrations/20260525_seed_math_arithmetique_pgcd_ppcm.sql` — Série « Arithmétique — Divisibilité, PGCD et PPCM » : 7 exercices avancés (critères de divisibilité, décomposition en facteurs premiers, PGCD, PPCM, applications concrètes : fleuriste, bus, carrelage). Niveau avancé, premium.
- `supabase/migrations/20260526_seed_math_symetries_transformations.sql` — Série « Symétries et transformations géométriques » : 7 exercices (axes de symétrie, symétrie axiale/centrale, translation, composition de symétries, homothétie et aires). Niveau intermédiaire, premium.
- `supabase/migrations/20260527_seed_math_nombres_relatifs_puissances.sql` — Série « Nombres relatifs et puissances » : 7 exercices (opérations sur les relatifs, règle des signes, puissances de 10, notation scientifique, puissance d'un négatif, comparaison). Niveau intermédiaire, free.
- `supabase/migrations/20260528_seed_math_sujet_blanc_mini_epreuve.sql` — Série « Sujet blanc CRPE — Mini-épreuve n°1 » : 8 exercices type annale (arithmétique PGCD, géométrie Pythagore, pourcentages inverses, statistiques moyenne, 2 questions didactiques, problème citerne cylindrique, problème chemin autour d'un terrain). Niveau avancé, premium.

## [2026-03-22] — Batch 5 : 4 nouvelles séries mathématiques (28 questions) + enrichissement batch 4

- `supabase/migrations/20260520_seed_math_didactique_variables_situations.sql` — Série « Didactique — Variables et situations » (NOUVELLE) : 7 exercices avancés sur Vergnaud (structures additives), contrat didactique (âge du capitaine), dévolution, institutionnalisation, remédiation ciblée. Niveau avancé, premium.
- `supabase/migrations/20260522_seed_math_solides_patrons.sql` — Série « Solides et patrons » (enrichie) : 7 exercices (Euler, patrons de cube, volume pavé/prisme/pyramide, aire latérale cylindre, agrandissement k³). Niveau intermédiaire, free.
- `supabase/migrations/20260523_seed_math_problemes_transversaux.sql` — Série « Problèmes transversaux — Multi-domaines » (enrichie) : 7 exercices avancés type annale CRPE croisant 2+ domaines (échelle+vitesse, fractions+proportionnalité, Pythagore+coût, statistiques+pourcentages, volume cylindre+fractions). Niveau avancé, premium.
- `supabase/migrations/20260519_seed_math_pourcentages_avances.sql` — Série « Proportionnalité avancée — Pourcentages successifs » (enrichie) : 7 exercices (coefficient multiplicateur, taux réciproque, TVA+marge, croissance composée sur 3 ans). Niveau avancé, premium.

## [2026-03-22] — Batch 4 : 6 séries d'exercices mathématiques (42 questions)

- `supabase/migrations/20260519_seed_math_pourcentages_avances.sql` — Série « Proportionnalité avancée — Pourcentages successifs » : 7 exercices avancés. Premium.
- `supabase/migrations/20260520_seed_math_didactique_variables.sql` — Série « Didactique — Variables didactiques » : 7 exercices avancés (Brousseau). Premium.
- `supabase/migrations/20260521_seed_math_geometrie_coordonnees.sql` — Série « Géométrie — Repérage et coordonnées » : 7 exercices. Premium.
- `supabase/migrations/20260522_seed_math_transversales_multidomaines.sql` — Série « Problèmes transversaux — Multi-domaines » : 7 exercices avancés. Premium.
- `supabase/migrations/20260523_seed_math_solides_patrons.sql` — Série « Solides et patrons » : 7 exercices. Free.
- `supabase/migrations/20260524_seed_math_programmes_construction.sql` — Série « Programmes de construction » : 7 exercices. Premium.

## [2026-03-22] — 8 nouvelles séries d'exercices mathématiques — batch 3 (56 questions)

- `supabase/migrations/20260507_seed_math_chasse_erreurs_geometrie.sql` — Série « Chasse aux erreurs — Géométrie » : 7 exercices d'analyse d'erreurs en géométrie (quadrilatères, triangles, diagonales, symétrie, Pythagore, Thalès, agrandissement). Niveau intermédiaire, free.
- `supabase/migrations/20260508_seed_math_chasse_erreurs_mesures.sql` — Série « Chasse aux erreurs — Mesures et conversions » : 7 exercices d'analyse d'erreurs sur les conversions (longueurs, aires, heures, contenances, vitesses, volumes). Niveau intermédiaire, free.
- `supabase/migrations/20260509_seed_math_proportionnalite_etapes.sql` — Série « Problèmes à étapes — Proportionnalité » : 7 exercices contextualisés (proportionnalité, pourcentages successifs, vitesse moyenne, échelle, TVA, partage proportionnel). Niveau intermédiaire, premium.
- `supabase/migrations/20260510_seed_math_analyse_productions_numeration.sql` — Série « Analyse de productions d'élèves — Numération » : 7 exercices de didactique (conception entière des décimaux, transcodage, chiffre/nombre, remédiation, variables didactiques). Niveau intermédiaire, premium.
- `supabase/migrations/20260511_seed_math_statistiques_graphiques.sql` — Série « Statistiques et graphiques — Lecture critique » : 7 exercices sur les statistiques (fréquences, moyenne/médiane, lecture critique de graphiques, diagramme circulaire, probabilité). Niveau intermédiaire, free.
- `supabase/migrations/20260512_seed_math_fractions_decimaux_pieges.sql` — Série « Fractions et décimaux — Passages et pièges » : 7 exercices avancés (décimaux finis/infinis, comparaison, intercalation, irréductibilité, multiplication par décimal < 1). Niveau avancé, premium.
- `supabase/migrations/20260513_seed_math_quadrilateres_demonstrations.sql` — Série « Quadrilatères — Propriétés et démonstrations » : 7 exercices sur la hiérarchie, diagonales, nature d'un quadrilatère, aire du losange, théorème de Varignon. Niveau intermédiaire, premium.
- `supabase/migrations/20260514_seed_math_conversions_systematiques.sql` — Série « Grandeurs — Conversions systématiques » : 7 exercices de conversion (longueurs, masses, contenances, temps, aires, vitesses, hectares). Niveau facile, free.

## [2026-03-22] — 6 nouvelles séries d'exercices mathématiques — batch 2 (42 questions)

- `supabase/migrations/20260513_seed_math_grandeurs_composees.sql` — Série « Problèmes à étapes — Grandeurs composées » : 7 exercices avancés sur vitesse, débit, masse volumique, consommation (contextes : route, piscine, usine). Niveau avancé, premium.
- `supabase/migrations/20260514_seed_math_quadrilateres_demonstrations.sql` — Série « Quadrilatères — Propriétés et démonstrations » : 7 exercices sur la hiérarchie des quadrilatères, propriétés minimales, démonstrations avec coordonnées. Niveau intermédiaire, premium.
- `supabase/migrations/20260515_seed_math_conversions_systematiques.sql` — Série « Grandeurs — Conversions systématiques » : 7 exercices de conversion (longueurs, masses, aires, volumes, vitesses, hectares). Niveau facile, free.
- `supabase/migrations/20260516_seed_math_probabilites_composees.sql` — Série « Probabilités — Situations composées » : 7 exercices avancés (dés, tirages sans remise, inclusion-exclusion, Bayes, loterie). Niveau avancé, premium.
- `supabase/migrations/20260517_seed_math_pythagore_thales.sql` — Série « Pythagore et Thalès — Applications » : 7 exercices avancés (réciproque de Pythagore, application de Thalès, ombre/hauteur, parallélisme). Niveau avancé, premium.
- `supabase/migrations/20260518_seed_math_calcul_mental_strategies.sql` — Série « Calcul mental — Stratégies » : 7 exercices sur les stratégies de calcul mental (distributivité, compensation, conservation des écarts, décomposition du diviseur). Niveau facile, free.

## [2026-03-22] — 6 nouvelles séries d'exercices mathématiques (42 questions)

- `supabase/migrations/20260507_seed_math_geometrie_chasse_erreurs.sql` — Série « Chasse aux erreurs — Géométrie » : 7 exercices d'analyse d'erreurs géométriques (propriétés des quadrilatères, symétrie, Pythagore, Thalès, angles). Personnage : Emma. Niveau intermédiaire, free.
- `supabase/migrations/20260508_seed_math_mesures_chasse_erreurs.sql` — Série « Chasse aux erreurs — Mesures et conversions » : 7 exercices sur les erreurs classiques de conversion (km/m, m²/cm², heures décimales, dm³/L, km/h→m/s, hectares, volumes). Personnage : Noah. Niveau intermédiaire, free.
- `supabase/migrations/20260509_seed_math_proportionnalite_etapes.sql` — Série « Problèmes à étapes — Proportionnalité » : 7 exercices contextualisés avec progression (situations proportionnelles, recettes, pourcentages successifs, échelles, vitesses, comparaison d'offres, budget de sortie scolaire). Niveau intermédiaire, premium.
- `supabase/migrations/20260510_seed_math_fractions_decimaux.sql` — Série « Fractions et décimaux — Passages et pièges » : 7 exercices avancés (conversion fraction/décimal, ordre des fractions, décimaux périodiques, opérations fractionnaires, analyse d'erreurs, problème de partage, irréductibilité). Niveau avancé, premium.
- `supabase/migrations/20260511_seed_math_statistiques_graphiques.sql` — Série « Statistiques et graphiques — Lecture critique » : 7 exercices sur l'organisation de données (médiane, moyenne pondérée, lecture de graphiques, probabilités, comparaison de distributions, analyse critique de statistiques). Niveau intermédiaire, free.
- `supabase/migrations/20260512_seed_math_didactique_numeration.sql` — Série « Analyse de productions d'élèves — Numération » : 7 exercices de didactique (erreurs de numération positionnelle, obstacle du nombre entier, soustraction avec retenue, variables didactiques, remédiation, cadre de Vergnaud). Niveau intermédiaire, premium.

## [2026-03-22] — Correction UUIDs migrations + refonte sujets blancs CRPE

- `supabase/migrations/20260429_seed_grm_predicat_structure.sql` → renommé `20260433` pour éviter conflit de version avec leaderboard
- `supabase/migrations/20260430,431,432` — Préfixes UUID corrigés (t → a, hex valide)
- `supabase/migrations/20260503,504,505` — Préfixes UUID corrigés (m → b, hex valide)
- Toutes les migrations pending poussées sur Supabase (20260430 à 20260506)

## [2026-03-22] — Refonte complète des sujets blancs CRPE (modèle annales)

- `supabase/migrations/20260506_seed_sujets_blancs_v2.sql` — 3 sujets blancs refaits sur le modèle réel du CRPE : chaque sujet est basé sur un texte littéraire (Le Grand Meaulnes, Sido, L'Enfant) avec 15 questions structurées en 3 parties (étude de la langue sur le texte, compréhension et interprétation, didactique). Remplace les anciens sujets qui étaient de simples paquets de QCM sans rapport avec le format des annales.
- `app/(app)/exercices/page.tsx` — Description de la section sujets blancs mise à jour pour refléter le nouveau format (épreuve sur texte littéraire)
- `features/exercises/server/queries.ts` — Textes de session (summary, objective, introduction) mis à jour pour les sujets blancs

## [2026-03-22] — 3 séries d'exercices de mathématiques (30 questions)

- `supabase/migrations/20260503_seed_math_nombres_chasse_erreurs.sql` — Série « Chasse aux erreurs — Calcul et fractions » : 10 exercices où l'élève fictif Liam fait des erreurs de calcul à identifier (fractions, décimaux, priorités, PGCD, proportionnalité)
- `supabase/migrations/20260504_seed_math_geometrie_vrai_faux.sql` — Série « Géométrie : vrai ou faux ? » : 10 affirmations sur les propriétés des figures (carré/rectangle, losange, symétrie, Pythagore) mêlant évidences et pièges
- `supabase/migrations/20260505_seed_math_grandeurs_quotidien.sql` — Série « Maths du quotidien » : 10 exercices en contexte réel (cuisine, courses, voyage, bricolage, échelle) sur grandeurs, mesures et proportionnalité

## [2026-03-22] — Infrastructure multi-matières : ajout des Mathématiques

- `types/domain.ts` — Ajout types `Subject`, `MathDomainKey`, `MathSubdomain`, `FrenchSubdomain`, `DomainKey`
- `lib/constants.ts` — Ajout `MATH_DOMAIN_CONFIG`, `MATH_DOMAIN_ORDER`, `MATH_SUBDOMAIN_OPTIONS`, labels et helpers maths (`getMathDomainKey`, `isMathSubdomain`, `getSubjectFromSubdomain`)
- `lib/dashboard.ts` — Paramétrage de `buildDashboardData` par `subject` pour isoler Français et Maths
- `features/dashboard/server/queries.ts` — Paramétrage de `getDashboardData` par `subject`
- `features/exercises/server/queries.ts` — Ajout intros/keypoints maths, textes de session dynamiques, `getExerciseById` sans filtre subject hardcodé
- `content/french-crpe-module.ts` — Correction type `DOMAIN_LABELS` vers `FrenchSubdomain`
- `components/app-navigation.tsx` — Ajout groupe "Mathématiques" avec 5 domaines et icône Calculator
- `app/(app)/maths/page.tsx` — Nouveau portail Mathématiques (miroir de /francais)
- `app/(app)/maths/[domain]/page.tsx` — Nouvelle page domaine maths avec filtres
- `app/(app)/exercices/page.tsx` — Ajout filtre "Matière" (Français / Mathématiques) dans la recherche avancée
- `app/(app)/tableau-de-bord/page.tsx` — Section "Mathématiques — Domaines" ajoutée au dashboard (masquée si vide)
- `supabase/migrations/20260501_add_math_subdomains.sql` — Migration : ajout des 5 sous-domaines maths à l'enum `exercise_subdomain`

## [2026-03-22] — Édition du pseudo sur la page Profil

- `features/leaderboard/server/actions.ts` — Server action `updateDisplayNameAction` pour mettre à jour le `display_name` en base (validation 2-30 chars)
- `features/leaderboard/components/display-name-form.tsx` — Formulaire client "Pseudo (visible dans le classement)" avec feedback succès/erreur
- `app/(app)/profil/page.tsx` — Intégration du formulaire de pseudo dans la section Compte

## [2026-03-22] — Classement : affichage du nom utilisateur

- `features/leaderboard/server/queries.ts` — Ajout de `getUserDisplayName` (cachée via `cache()`) pour récupérer le nom d'affichage depuis la table profiles
- `app/(app)/classement/page.tsx` — Affichage du nom utilisateur au lieu du label de niveau dans la carte personnelle du classement

## [2026-03-22] — Classement hebdomadaire (Leaderboard)

- `supabase/migrations/20260429_add_leaderboard_function.sql` — Fonction SQL `get_weekly_leaderboard` (SECURITY DEFINER) : agrège les XP de la semaine ISO en cours par utilisateur, retourne top N + position de l'appelant
- `features/leaderboard/server/queries.ts` — Query serveur `getWeeklyLeaderboard` appelant le RPC Supabase, type `LeaderboardEntry`
- `features/leaderboard/components/leaderboard-table.tsx` — Composant client : podium animé top 3 (médailles or/argent/bronze), tableau responsive rangs 4+, mise en évidence de l'utilisateur courant, état vide
- `app/(app)/classement/page.tsx` — Page `/classement` : résumé personnel (niveau, position, XP semaine) + classement complet
- `components/app-navigation.tsx` — Ajout lien "Classement" (icône Trophy) dans le groupe "Mon parcours"

## [2026-03-22] — Fiche sprint : Le predicat et la structure de la phrase

- `content/fiches/grammaire-predicat-structure-sprint.ts` — Nouvelle fiche sprint grammaire couvrant P = [GS + GV] (+ GC), le predicat = GV, les niveaux d'analyse, les tests du GC ; 6 quiz items vrai/faux avec explications detaillees
- `content/fiches/index.ts` — Import et ajout de `grammairePredicatStructureSprint` dans `allFiches`

## [2026-03-22] — Bug fix : null dereference dans insertDefaultHomepageData

- `features/homepage/server/queries.ts` — Ajout garde `if (pageError || !page)` avant accès à `page.id` après insert Supabase : évite un crash si l'insertion de la page homepage échoue

## [2026-03-22] — Code quality : suppression double-formatage formatLevelLabel

- `app/(app)/exercices/page.tsx`, `app/(app)/exercices/[id]/page.tsx`, `features/exercises/components/exercise-player.tsx`, `lib/dashboard.ts` — Suppression de 4 appels redondants à `formatLevelLabel(session.level)` : `session.level` est déjà formaté dans `buildSessionsFromExercises`. Imports `formatLevelLabel` inutilisés nettoyés

## [2026-03-22] — Code quality : dédoublonnage constantes, renommages

- `lib/xp.ts` — `LEVEL_LABELS` renommé en `XP_LEVEL_LABELS` pour éviter la collision avec `LEVEL_LABELS` de `lib/constants.ts` (types différents : `Record<number>` vs `Record<string>`)
- `components/ui/xp-bar.tsx`, `features/dashboard/components/xp-level-card.tsx` — Mise à jour des imports vers `XP_LEVEL_LABELS`
- `features/dashboard/components/learning-status-badge.tsx` — Suppression du `PROGRESS_STATUS_LABELS` local dupliqué, import depuis `@/lib/constants`

## [2026-03-22] — Bugs : 4 correctifs (Stripe, sprint, errors silencieux)

- `app/api/stripe/checkout/route.ts` — Suppression cast `as unknown as` sur `subscriptionData` (propriété `cancel_at_period_end` inexistante sur le type Stripe, déjà gérée dans le webhook). `VALID_PRICES` hoisted en constante module
- `features/exercises/components/sprint-player.tsx` — 2 catch blocks silencieux (`catch {}` et `.catch(() => {})`) remplacés par `console.error` pour rendre les erreurs de submit et de persist personal best visibles
- Corrections mineures liées à l'audit bugs (homepage actions, type casts) : pas de bug réel, `redirectToAdmin` correctement typé `never`

## [2026-03-22] — Performance : 3 optimisations render/query

- `features/dashboard/components/nivo-radar.tsx` — Objets instables (legends, theme, data) hoistés en constantes module + `useMemo` sur data : supprime les re-renders inutiles du chart Nivo
- `app/(app)/tableau-de-bord/page.tsx` — challengePool : 4 passes `.filter()` remplacées par un groupement single-pass en buckets `{ a_revoir, non_commencee, en_cours }`
- `features/exercises/components/exercise-player.tsx` — `weakAreas` useMemo : dépendance `session.questions` (ref instable) remplacée par `session.id` (stable)

## [2026-03-22] — Audit performance, bugs & qualité — 5 correctifs critiques

- `lib/env.ts` — Fix bug falsy zero : `Number(...) || 20` remplacé par `Number(... ?? 20)` pour gérer correctement `FREE_DAILY_QUESTION_LIMIT=0`
- `features/gamification/context.tsx` — Fix stale closure dans `addXp` : ajout de `gamification.xp` aux dépendances du `useCallback`
- `features/gamification/server/queries.ts` — Ajout de `cache()` React sur `getUserGamification` pour dédupliquer les requêtes DB intra-request
- `features/exercises/server/queries.ts` — `getRandomExercises` : ajout `.limit(100)` au lieu de charger tous les exercices free en mémoire
- `app/(app)/exercices/[id]/page.tsx` — `VALID_MODES` Set hoisted en constante module au lieu d'être recréé à chaque requête

## [2026-03-22] — Optimisation séries : cache fix, cards compactes, grille 2 colonnes

- `features/exercises/server/queries.ts` — Fix cache React `cache()` : sérialisation des filtres en clé string stable (`filtersToKey`) pour éviter les miss de cache par référence objet, corrigeant le bug intermittent "pas dans votre espace de révision"
- `app/(app)/exercices/page.tsx` — SessionCard redessinée : suppression MetaCells/Separator, layout compact (badges inline, résumé limité 2 lignes, footer inline). Grille passée de 1 à 2 colonnes (`sm:grid-cols-2`). Imports inutilisés nettoyés (Card, Separator)

## [2026-03-22] — Section "Sujets blancs CRPE" sur /exercices

- `app/(app)/exercices/page.tsx` — Nouvelle section dédiée "Sujets blancs CRPE" avec cards distinctives (badge "Sujet blanc", bordure accent, mention "7 sous-domaines"). Sujets blancs isolés des séries régulières via filtre `topicKey.startsWith("sujet_blanc")`
- `features/exercises/server/queries.ts` — Groupement spécifique des sujets blancs (pas de split par level), titre/résumé/introduction/objectif adaptés au format examen

## [2026-03-22] — 100 exercices interactifs premium (10 séries immersives, 5 domaines)

- `supabase/migrations/20260412_seed_grammaire_surlignage_groupes.sql` — 10× surlignage : découper GN/GV/CC sur des phrases de Hugo, Colette, Saint-Exupéry, Proust, Zola
- `supabase/migrations/20260413_seed_grammaire_copies_eleves.sql` — Analyser des copies d'élèves CE2-CM2 : correction, tri d'erreurs, identification grammaticale
- `supabase/migrations/20260414_seed_orthographe_dictees_eleves.sql` — Corriger des dictées d'élèves : typologie Catach (phonographique/morphographique/logographique)
- `supabase/migrations/20260415_seed_orthographe_homophones_contexte.sql` — Homophones dans des extraits littéraires (La Fontaine, Maupassant, Perrault) : tri + surlignage
- `supabase/migrations/20260416_seed_conjugaison_temps_recit.sql` — Surlignage passé simple vs imparfait dans Le Petit Prince, Les Misérables, Le Petit Nicolas
- `supabase/migrations/20260417_seed_conjugaison_tri_formes.sql` — Tri des formes verbales par temps/mode/voix dans des textes complets
- `supabase/migrations/20260418_seed_lexique_figures_style_textes.sql` — Surlignage des figures de style dans Baudelaire, Verlaine, Éluard, Desnos
- `supabase/migrations/20260419_seed_lexique_sens_contexte.sql` — Polysémie : tri sens propre/figuré/technique (glace, tableau, pied, opération...)
- `supabase/migrations/20260420_seed_didactique_scenarios_classe.sql` — Scénarios de classe : le candidat choisit la remédiation face aux erreurs d'élèves
- `supabase/migrations/20260421_seed_didactique_evaluation_productions.sql` — Évaluer des productions d'élèves : critères, différenciation, acquis/en cours/non acquis
- Zéro support_text NULL — chaque exercice a un texte littéraire, une copie d'élève, ou un scénario de classe
- Types interactifs dominants : 34 surlignage, 28 tri_categories, 9 correction, 21 QCM contextualisés, 6 réponse courte, 2 V/F

## [2026-03-22] — 10 séries interactives tri_categories + surlignage (100 exercices)

- `supabase/migrations/20260422_seed_conjugaison_interactives.sql` — Tri participe présent/adj. verbal (free) + Surlignage temps du récit (premium)
- `supabase/migrations/20260423_seed_analyse_langue_interactives.sql` — Tri nature/fonction (free) + Surlignage propositions phrase complexe (premium)
- `supabase/migrations/20260424_seed_lexique_interactives.sql` — Tri formation des mots (free) + Surlignage champs lexicaux (premium)
- `supabase/migrations/20260425_seed_orthographe_interactives.sql` — Tri chaînes d'accords (free) + Surlignage accords dans la phrase (premium)
- `supabase/migrations/20260426_seed_grammaire_interactives.sql` — Tri phrase neutre/emphatique (free) + Surlignage expansions du nom (premium)

## [2026-03-22] — Fix critique : séries manquantes (pagination PostgREST)

- `features/exercises/server/queries.ts` — Ajout de la pagination pour la requête d'exercices. PostgREST limite à 1000 lignes par défaut, mais la base contient 1593 exercices publiés. Les sous-domaines en fin d'enum (analyse_langue, comprehension_texte, didactique_francais) étaient tronqués.
- Réparation de l'historique de migrations (14 migrations orphelines marquées comme revertées)
- Push des 6 migrations pendantes (20260406–20260411)

## [2026-03-22] — 100 exercices premium supplémentaires (10 nouvelles séries, 5 domaines)

- `supabase/migrations/20260400_seed_conjugaison_subjonctif.sql` — Série Conjugaison : subjonctif présent et ses emplois — 10 questions
- `supabase/migrations/20260401_seed_orthographe_pluriels_irreguliers.sql` — Série Orthographe : pluriels irréguliers et cas particuliers — 10 questions
- `supabase/migrations/20260402_seed_lexique_champs_lexicaux.sql` — Série Lexique : champs lexicaux et réseaux de sens — 10 questions
- `supabase/migrations/20260403_seed_grammaire_fonctions_syntaxiques.sql` — Série Grammaire : fonctions syntaxiques (COD, COI, CC, attribut) — 10 questions
- `supabase/migrations/20260404_seed_didactique_apprentissage_lecture.sql` — Série Didactique : apprentissage de la lecture cycle 2 — 10 questions
- `supabase/migrations/20260405_seed_orthographe_participe_passe.sql` — Série Orthographe : accord du participe passé — 10 questions
- `supabase/migrations/20260406_seed_conjugaison_temps_composes.sql` — Série Conjugaison : temps composés de l'indicatif — 10 questions
- `supabase/migrations/20260407_seed_lexique_formation_mots.sql` — Série Lexique : formation des mots (préfixes, suffixes, familles) — 10 questions
- `supabase/migrations/20260408_seed_didactique_production_ecrite.sql` — Série Didactique : production d'écrits cycles 2-3 — 10 questions
- `supabase/migrations/20260409_seed_grammaire_determinants.sql` — Série Grammaire : déterminants (articles, possessifs, démonstratifs) — 10 questions
- Mix de types variés : QCM, vrai/faux, réponse courte, tri catégories, correction orthographique
- Toutes premium, terminologie Éduscol 2021

## [2026-03-22] — Audit pédagogique + 240 exercices premium (24 séries)

- `supabase/migrations/20260357_seed_didactique_part1.sql` — 4 séries Didactique (40 questions) : Enseignement compréhension, grammaire, vocabulaire, différenciation/évaluation
- `supabase/migrations/20260361_seed_didactique_part2.sql` — 3 séries Didactique (30 questions) : Étude de la langue cycles 2-3, littérature jeunesse, fluence
- `supabase/migrations/20260358_seed_grammaire_nouvelles.sql` — 5 séries Grammaire (50 questions) : Nature/fonction, GN, GV, subordonnées relatives, transformations
- `supabase/migrations/20260359_seed_comprehension_nouvelles.sql` — 5 séries Compréhension (50 questions) : Inférences, énonciation, texte explicatif, poétique, mise en réseau
- `supabase/migrations/20260360_seed_conjugaison_nouvelles.sql` — 3 séries Conjugaison (30 questions) : Temps simples/composés, verbes irréguliers 3e groupe, participe/adjectif verbal
- `supabase/migrations/20260365_seed_lexique_nouvelles.sql` — 4 séries Lexique (40 questions) : Étymologie, figures de style, sens propre/figuré, néologie/emprunts
- Toutes premium, terminologie Éduscol 2021, mix 4 QCM + 3 V/F + 3 réponse courte par série
- Renommage migrations conflictuelles (20260322→20260362-364, 20260357001→20260361)

## [2026-03-22] — Renommage migrations + mise à jour CLAUDE.md

- `CLAUDE.md` — Mise à jour des règles projet
- `supabase/migrations/` — Renommage des migrations pour éviter les conflits de version (20260336→20260362/63/64, 20260357001→20260361)
- `supabase/migrations/20260360_seed_conjugaison_nouvelles.sql` — Correction du contenu

## [2026-03-22] — Bouton "Nouvelle série aléatoire" + "Recommencer" raccourci

- `features/exercises/components/exercise-player.tsx` — Nouveau prop `onNewSession` : affiche un bouton CTA sur l'écran de fin pour relancer une nouvelle série. Texte "Recommencer la série" raccourci en "Recommencer"
- `features/exercises/components/random-exercise-wrapper.tsx` — Branche `onNewSession` sur `router.refresh()` pour recharger 10 nouvelles questions aléatoires sans navigation pleine page

## [2026-03-22] — Renforcement des règles CLAUDE.md (insights)

- `CLAUDE.md` — Renforcé la section Changelog (ne jamais sauter), ajout compatibilité CLI Supabase dans Database Migrations, ajout cohérence sizing/spacing dans UI/Design Guidelines

## [2026-03-22] — Nettoyage du code mort

- `lib/demo-data.ts` — Supprimé (données de démo jamais importées)
- `lib/mocca-messages.ts` — Supprimé (messages Mocca jamais importés)
- `lib/crpe-context.ts` — Supprimé (constantes dupliquées localement dans la page exercices)
- `lib/pricing.ts` — Supprimé (objet PRICING jamais importé)
- `components/demo-banner.tsx` — Supprimé (composant jamais utilisé)
- `components/nav-links.tsx` — Supprimé (composant jamais utilisé)
- `components/ui/level-badge.tsx` — Supprimé (uniquement en Storybook, jamais en production)
- `components/ui/level-badge.stories.tsx` — Supprimé (story du composant supprimé)
- `components/ui/select.tsx` — Supprimé (wrapper Radix Select jamais utilisé)
- `features/dashboard/components/domain-summary-card.tsx` — Supprimé (composant jamais utilisé)
- `features/dashboard/components/streak-display.tsx` — Supprimé (composant jamais utilisé)
- `features/gamification/components/settings-panel.tsx` — Supprimé (composant jamais utilisé)
- `app/api/srs/due/route.ts` — Supprimé (route orpheline, le SRS utilise des server queries directement)
- `features/fiches/lib/get-fiche.ts` — Retiré `getFichesByDomaine()` et `getFichesByModel()` (jamais appelées), nettoyé les imports

## [2026-03-22] — Écran de fin : corrections repliées par défaut

- `features/exercises/components/exercise-player.tsx` — Les corrections de chaque question sont repliées par défaut sur l'écran de fin (clic pour déplier). Réduit drastiquement le scroll. L'instruction est tronquée à 2 lignes, chevron ▾/▴ indique l'état

## [2026-03-22] — Audit pédagogique + création de 200 exercices premium (20 séries)

- `supabase/migrations/20260357_seed_didactique_part1.sql` — 4 séries Didactique (40 questions) : Enseignement de la compréhension, Enseignement de la grammaire, Enseignement du vocabulaire, Différenciation et évaluation
- `supabase/migrations/20260357_seed_didactique_part2.sql` — 3 séries Didactique (30 questions) : Étude de la langue aux cycles 2-3, Littérature de jeunesse, Fluence et automatisation en lecture
- `supabase/migrations/20260358_seed_grammaire_nouvelles.sql` — 5 séries Grammaire (50 questions) : Nature et fonction, Groupe nominal, Groupe verbal, Subordonnées relatives, Transformations de la phrase
- `supabase/migrations/20260359_seed_comprehension_nouvelles.sql` — 5 séries Compréhension de texte (50 questions) : Inférences et implicite, Énonciation et point de vue, Texte explicatif, Texte poétique, Mise en réseau
- `supabase/migrations/20260360_seed_conjugaison_nouvelles.sql` — 3 séries Conjugaison (30 questions) : Temps simples/composés, Verbes irréguliers 3e groupe, Participe présent vs adjectif verbal
- Toutes les séries sont `premium`, terminologie Éduscol 2021, mix 4 QCM + 3 V/F + 3 réponse courte par série

## [2026-03-22] — Seed 5 séries Compréhension de texte (50 exercices)

- `supabase/migrations/20260359_seed_comprehension_nouvelles.sql` — Création de 50 exercices premium répartis en 5 séries : Inférences et implicite, Énonciation et point de vue, Le texte explicatif et documentaire, Le texte poétique, Analyse comparative et mise en réseau. Mix par série : 4 QCM + 3 vrai/faux + 3 réponse courte, 3 Facile + 4 Intermédiaire + 3 Difficile. UUIDs f5010000–f5050000.

## [2026-03-22] — Nettoyage fichiers .md obsolètes

- `Rapport Codex.md` — Supprimé (audit marketing terminé, recommandations appliquées)
- `contenu/sources/eduscol/COLLECTE-SOURCES.md` — Supprimé (rapport de collecte URLs terminé, aucune valeur résiduelle)
- `MULTITASK/` — Supprimé (19 fichiers : INDEX, AGENT-1→8, RAPPORT-1→8, HANDOFF-8). Missions des 8 agents terminées. Les TODO de HANDOFF-8 (refactoring constantes lib/pricing.ts, lib/crpe-context.ts, lib/constants.ts) sont conservés pour une session future.

## [2026-03-22] — Fix persistance réponses + stabilité XP

- `features/exercises/server/actions.ts` — Wrap global try/catch dans `submitAttemptAction` pour ne plus jamais throw (retourne toujours un objet d'état). Log console de l'erreur réelle côté serveur
- `features/exercises/components/exercise-player.tsx` — Log de l'erreur réelle côté client quand l'action échoue. Rollback de l'XP optimiste en cas d'échec (empêche le décalage XP entre sessions)
- `features/exercises/server/queries.ts` — `getRandomExercises` ne pioche que dans les exercices `free` (évite le rejet premium côté action)

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
