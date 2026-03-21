# Changelog

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
