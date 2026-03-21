# Rapport des séries d'exercices — CRPE Français

## Vue d'ensemble

| Indicateur | Valeur |
|---|---|
| **Séries totales** | **59** |
| **Questions totales** | **590** |
| **Questions par série** | **10** (uniforme) |
| **Sous-domaines** | 7 |
| **Types d'exercices** | 8 |
| **Migrations SQL** | 6 fichiers |

---

## Convention de numérotation

Les séries sont identifiées par deux systèmes :

| Système | Format `topic_key` | Format UUID | Exemple |
|---|---|---|---|
| **V3** (legacy) | `snake_case` descriptif | `[batch]3XXXXXX-0000-...` (`a3`, `b3`, `c3`) | `phrase_complexe_coord` / `a3010000-...` |
| **V4** (récent) | `prefixe_domaine_sujet` | `[code]10000-0000-...` (`a101`, `c101`, etc.) | `grm_types_formes_phrases` / `c1010000-...` |

**Préfixes V4 :** `grm_` = grammaire, `orth_` = orthographe, `conj_` = conjugaison, `lex_` = lexique, `cpt_` = compréhension, `anal_` = analyse, `did_` = didactique

---

## Détail par sous-domaine et série

### 1. Grammaire — 12 séries, 120 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `phrase_complexe_coord` | Phrase complexe : coordination et juxtaposition | V3-A | qcm, vrai_faux, réponse courte |
| 2 | `subordonnees_circonstancielles` | Subordonnées circonstancielles | V3-A | qcm, vrai_faux, réponse courte |
| 3 | `subordonnees_completives` | Subordonnées complétives | V3-A | qcm, vrai_faux, réponse courte |
| 4 | `discours_direct_indirect` | Discours direct et indirect | V3-A | qcm, vrai_faux, réponse courte |
| 5 | `types_phrases_grammaire` | Types et formes de phrases | V3-A | qcm, vrai_faux, réponse courte |
| 6 | `ponctuation_usages` | La ponctuation | V3-A | qcm, vrai_faux, réponse courte |
| 7 | `grm_types_formes_phrases` | Types et formes de phrases | 20260334 | tri_categories |
| 8 | `grm_constituants_phrase` | Constituants de la phrase P = [GS+GV](+GC) | 20260334 | tri_categories |
| 9 | `grm_classes_de_mots` | Les 8 classes de mots | 20260334 | tri_categories |
| 10 | `grm_nature_fonction` | Nature vs Fonction | 20260334 | tri_categories |
| 11 | `grm_phrase_complexe_prop` | Phrase complexe — Propositions | 20260334 | surlignage_propositions |
| 12 | `grm_fonctions_phrase` | Fonctions grammaticales dans la phrase | 20260334 | surlignage_propositions |

### 2. Orthographe — 9 séries, 90 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `participe_passe_avoir` | Participe passé avec avoir | V3-A | qcm, vrai_faux, réponse courte |
| 2 | `pluriel_noms_composes` | Pluriel des noms composés | V3-A | qcm, vrai_faux, réponse courte |
| 3 | `accord_adjectif_couleur` | Accord de l'adjectif de couleur | V3-A | qcm, vrai_faux, réponse courte |
| 4 | `tout_meme_accord` | Accord de tout, même et quelque | V3-A | qcm, vrai_faux, réponse courte |
| 5 | `majuscules_regles` | Emploi des majuscules | V3-B | correction_orthographique |
| 6 | `orth_accord_sujet_verbe` | Accord sujet-verbe : les cas complexes | 20260337 | qcm, vrai_faux, réponse courte |
| 7 | `orth_homophones_gram` | Homophones grammaticaux | 20260337 | qcm, vrai_faux, réponse courte |
| 8 | `orth_participe_passe` | Accord du participe passé | 20260337 | qcm, vrai_faux, réponse courte |
| 9 | `orth_pluriel_composes` | Pluriel des noms composés | 20260337 | qcm, vrai_faux, réponse courte |

### 3. Conjugaison — 10 séries, 100 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `subjonctif_formes_valeurs` | Le subjonctif | V3-B | qcm, vrai_faux, réponse courte |
| 2 | `concordance_des_temps` | Concordance des temps | V3-B | qcm, vrai_faux, réponse courte |
| 3 | `aspect_verbal` | L'aspect verbal | V3-B | qcm, vrai_faux, réponse courte |
| 4 | `valeurs_conditionnel` | Les valeurs du conditionnel | V3-B | qcm, vrai_faux, réponse courte |
| 5 | `imperatif_formes_emplois` | L'impératif | V3-B | qcm, vrai_faux, réponse courte |
| 6 | `conj_voix_modes_temps` | Voix, modes et temps | 20260334 | tri_categories |
| 7 | `conj_present_indicatif` | Présent de l'indicatif | 20260337 | qcm, vrai_faux, réponse courte |
| 8 | `conj_imparfait_passe_simple` | Imparfait et passé simple | 20260337 | qcm, vrai_faux, réponse courte |
| 9 | `conj_subjonctif_present` | Le subjonctif présent | 20260337 | qcm, vrai_faux, réponse courte |
| 10 | `conj_concordance_temps` | Concordance des temps | 20260337 | qcm, vrai_faux, réponse courte |

### 4. Lexique — 11 séries, 110 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `champs_lexicaux` | Champs lexicaux | V3-B | qcm, vrai_faux, réponse courte |
| 2 | `registres_niveaux_langue` | Registres et niveaux de langue | V3-B | qcm, vrai_faux, réponse courte |
| 3 | `polysemie_homonymie` | Polysémie et homonymie | V3-B | qcm, vrai_faux, réponse courte |
| 4 | `prefixes_suffixes_radical` | Préfixes, suffixes et radical | V3-C | qcm, vrai_faux, réponse courte |
| 5 | `derivation_mots` | La dérivation | V3-C | qcm, vrai_faux, réponse courte |
| 6 | `composition_mots` | La composition des mots | V3-C | qcm, vrai_faux, réponse courte |
| 7 | `lex_formation_mots` | Formation des mots | 20260334 | tri_categories |
| 8 | `lex_champs_lexicaux` | Champs lexicaux et sémantiques | 20260338 | qcm, vrai_faux, réponse courte |
| 9 | `lex_figures_style` | Figures de style | 20260338 | qcm, vrai_faux, réponse courte |
| 10 | `lex_registres_langue` | Registres et niveaux de langue | 20260338 | qcm, vrai_faux, réponse courte |
| 11 | `lex_relations_sens` | Relations de sens | 20260338 | qcm, vrai_faux, réponse courte |

### 5. Compréhension de texte — 6 séries, 60 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `enonciation_modalites` | L'énonciation | V3-C | qcm, vrai_faux, réponse courte |
| 2 | `types_genres_textes` | Types et genres de textes | V3-C | qcm, vrai_faux, réponse courte |
| 3 | `anaphores_substitution` | Anaphores et substitution lexicale | V3-C | qcm, vrai_faux, réponse courte |
| 4 | `cpt_schema_narratif` | Le schéma narratif | 20260338 | qcm, vrai_faux, réponse courte |
| 5 | `cpt_texte_argumentatif` | Texte argumentatif | 20260338 | qcm, vrai_faux, réponse courte |
| 6 | `cpt_coherence_textuelle` | Cohérence et cohésion textuelle | 20260338 | qcm, vrai_faux, réponse courte |

### 6. Analyse de la langue — 6 séries, 60 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `coherence_textuelle` | Cohérence et cohésion textuelle | V3-C | qcm, vrai_faux, réponse courte |
| 2 | `schema_narratif` | Le schéma narratif | V3-C | qcm, vrai_faux, réponse courte |
| 3 | `texte_argumentatif` | Le texte argumentatif | V3-C | qcm, vrai_faux, réponse courte |
| 4 | `anal_subordonnees_relatives` | Les subordonnées relatives | 20260339 | qcm, vrai_faux, réponse courte |
| 5 | `anal_complements_circ` | Compléments circonstanciels | 20260339 | qcm, vrai_faux, réponse courte |
| 6 | `anal_voix_active_passive` | Voix active et voix passive | 20260339 | qcm, vrai_faux, réponse courte |

### 7. Didactique du français — 5 séries, 50 questions

| # | Topic Key | Label | Migration | Type principal |
|---|---|---|---|---|
| 1 | `connecteurs_logiques` | Connecteurs logiques | V3-B | qcm, vrai_faux, réponse courte |
| 2 | `conscience_phonologique` | Conscience phonologique | V3-C | qcm, vrai_faux, réponse courte |
| 3 | `did_apprentissage_lecture` | L'apprentissage de la lecture | 20260339 | qcm, vrai_faux, réponse courte |
| 4 | `did_conscience_phono` | Conscience phonologique | 20260339 | qcm, vrai_faux, réponse courte |
| 5 | `delimitation_propositions` | Délimitation de propositions | 20260331 | surlignage_propositions |

---

## Synthèse par sous-domaine

| Sous-domaine | Séries V3 | Séries V4 | **Total séries** | **Total questions** |
|---|---|---|---|---|
| Grammaire | 6 | 6 | **12** | **120** |
| Orthographe | 5 | 4 | **9** | **90** |
| Conjugaison | 5 | 5 | **10** | **100** |
| Lexique | 6 | 5 | **11** | **110** |
| Compréhension de texte | 3 | 3 | **6** | **60** |
| Analyse de la langue | 3 | 3 | **6** | **60** |
| Didactique du français | 2 | 3 | **5** | **50** |
| **TOTAL** | **30** | **29** | **59** | **590** |

---

## Répartition par type d'exercice

| Type | Nombre de séries utilisant ce type |
|---|---|
| `qcm` (QCM) | ~45 séries |
| `vrai_faux` (Vrai/Faux) | ~38 séries |
| `reponse_courte` (Réponse courte) | ~38 séries |
| `tri_categories` (Tri par catégories) | 7 séries (V4 uniquement) |
| `surlignage_propositions` (Délimitation) | 3 séries (V4 uniquement) |
| `correction_orthographique` | 2 séries (V3 uniquement) |

---

## Répartition par fichier de migration

| Fichier | Contenu | Séries | Questions |
|---|---|---|---|
| `20260323_seed_v3_series_300_questions.sql` | Batch A/B/C — toutes matières | 30 | 300 |
| `20260331_seed_surlignage_propositions.sql` | Délimitation de propositions | 1 | 10 |
| `20260334_seed_series_variees.sql` | Tri + surlignage (grammaire, lexique, conjugaison) | 8 | 80 |
| `20260337_seed_orthographe_conjugaison.sql` | Orthographe + Conjugaison | 8 | 80 |
| `20260338_seed_lexique_comprehension.sql` | Lexique + Compréhension | 7 | 70 |
| `20260339_seed_analyse_didactique.sql` | Analyse + Didactique | 5 | 50 |
| **Total** | | **59** | **590** |

---

## Points notables

- **Toutes les séries font 10 questions** — c'est parfaitement uniforme.
- **Les séries V3 et V4 couvrent parfois les mêmes thèmes** (ex: conscience phonologique, concordance des temps, pluriel des noms composés) mais avec des `topic_key` différents → ils sont traités comme des séries distinctes.
- **Les types interactifs** (`tri_categories`, `surlignage_propositions`) n'existent que dans les migrations V4 (post-20260331).
- **Accès** : la quasi-totalité est `free`. Seules quelques questions V3 sont `premium`.
