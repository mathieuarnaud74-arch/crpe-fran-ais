# Changelog

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
