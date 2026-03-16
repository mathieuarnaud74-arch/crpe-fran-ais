# AUDIT DES LACUNES — Contenu CRPE Français
**Date :** 2026-03-16
**Base :** lecture des 6 fichiers SQL seed + glossaire + french-crpe-series.ts

---

## 1. INVENTAIRE DES EXERCICES EN DB

### Grammaire — 80 exercices / 8 séries ✅ Bien couvert
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| grm_classes_facile | Classes grammaticales | 10 | free | Facile |
| grm_fonctions_intermediaire | Fonctions syntaxiques | 10 | free | Intermediaire |
| grm_propositions_intermediaire | Propositions subordonnées | 10 | free | Intermediaire |
| grm_temps_intermediaire | Temps et modes verbaux | 10 | free | Intermediaire |
| grm_voix_passive_avancee | Voix active et passive | 10 | premium | Avance |
| grm_verbaux_avancee | Accords verbaux complexes | 10 | premium | Avance |
| grm_participes_avancee | Participes et gérondifs | 10 | premium | Avance |
| grm_adjectifs_avancee | Accords des adjectifs | 10 | premium | Avance |

**Manque :** ponctuation, types de phrases, discours direct/indirect, subordination relative

### Orthographe — 50 exercices / 5 séries ⚠️ Couverture partielle
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| ort_accord_sv | Accord sujet-verbe | 10 | free | Facile |
| ort_pp_etre | Participe passé avec être | 10 | free | Intermediaire |
| ort_pp_avoir | Participe passé avec avoir | 10 | premium | Intermediaire |
| ort_homophones | Homophones grammaticaux | 10 | free | Facile |
| ort_pluriel_gn | Pluriel dans le groupe nominal | 10 | free | Intermediaire |

**Manque :** homophones lexicaux (a/à, ou/où…), accord des adjectifs de couleur, noms composés au pluriel, rectifications 1990, accents (é/è/ê)

### Conjugaison — 50 exercices / 5 séries ⚠️ Couverture partielle
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| conj_present | Présent de l'indicatif | 10 | free | Facile |
| conj_imp_pc | Imparfait et passé composé | 10 | free | Facile |
| conj_futur_cond | Futur simple et conditionnel présent | 10 | free | Intermediaire |
| conj_subjonctif | Subjonctif présent | 10 | premium | Intermediaire |
| conj_valeurs_temps | Valeurs des temps verbaux | 10 | premium | Avance |

**Manque :** passé simple, plus-que-parfait, conditionnel passé, subjonctif passé, impératif, valeurs de l'imparfait, concordance des temps

### Lexique — 20 exercices / 2 séries 🔴 Très insuffisant
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| lex_figures_registres | Figures de style et registres | 10 | free | Intermediaire |
| lex_morphologie_mots | Morphologie : formation des mots | 10 | free | Facile |

**Manque :** synonymes/antonymes/homonymes, champs lexicaux, étymologie (préfixes/suffixes latins et grecs), registres de langue, polysémie, sens propre/figuré, familles de mots

### Analyse de la langue — 10 exercices / 1 série 🔴 Critique
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| al_syntaxe_avancee | Syntaxe avancée : subordonnées | 10 | premium | Difficile |

**Manque :** analyse grammaticale complète, transposition de textes, types et formes de phrases, subordination (relative/complétive/circonstancielle), coordination vs subordination

### Compréhension de texte — 10 exercices / 1 série 🔴 Critique
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| cpt_texte_litteraire | Compréhension de texte littéraire | 10 | free | Intermediaire |

**Manque :** textes documentaires, inférences, cohérence textuelle, connecteurs logiques, reformulation, résumé, textes injonctifs/argumentatifs

### Didactique du français — 50 exercices / 5 séries ✅ Correctement couvert
| topic_key | topic_label | Nb Q | Tier | Niveau |
|---|---|---|---|---|
| did_lecture_cp | Apprentissage de la lecture | 10 | free | Intermediaire |
| did_phonologie_structures | Phonologie et structures | 10 | free | Intermediaire |
| did_orthographe_apprentissage | Orthographe : apprentissage | 10 | free | Intermediaire |
| did_vocabulaire_semantique | Vocabulaire et sémantique | 10 | free | Intermediaire |
| did_comprehension_inference | Compréhension et inférence | 10 | premium | Intermediaire |

**Manque :** production d'écrits, enseignement de la grammaire en classe, différenciation pédagogique, évaluation des compétences langagières

---

## 2. RÉCAPITULATIF DES LACUNES PRIORITAIRES

| Priorité | Sous-domaine | Séries existantes | Objectif | Séries à créer |
|---|---|---|---|---|
| 🔴 P1 | comprehension_texte | 1 | 6 | 5 |
| 🔴 P1 | analyse_langue | 1 | 6 | 5 |
| 🔴 P2 | lexique | 2 | 8 | 6 |
| 🟠 P2 | orthographe | 5 | 10 | 5 |
| 🟠 P2 | conjugaison | 5 | 10 | 5 |
| 🟡 P3 | grammaire | 8 | 13 | 5 |
| 🟡 P3 | didactique | 5 | 8 | 3 |

**Total cible : ~340 nouveaux exercices** (34 nouvelles séries × 10 questions)

---

## 3. GLOSSAIRE — ÉTAT

**Couvert (13 lettres, 41 termes)** : A, C, D, F, G, H, I, L, M, N, P, S, V

**Manquant (13 lettres)** :
- **B** : Base lexicale, Barbarisme
- **E** : Ellipse, Énoncé, Expansion du GN
- **J** : *(rare en grammaire — à évaluer)*
- **K** : *(rare — à évaluer)*
- **O** : Orthographe lexicale, Orthographe grammaticale
- **Q** : *(rare — à évaluer)*
- **R** : Radical, Registre de langue, Reformulation
- **T** : Temps verbal, Transposition, Type de phrase
- **U** : *(rare — à évaluer)*
- **W, X, Y, Z** : *(rares — xénisme possible pour X)*

**Termes supplémentaires à ajouter dans les lettres existantes** :
- A : Analyse grammaticale, Attribut, Auxiliaire
- C : Classe grammaticale, Cohérence textuelle, Complément du nom, Connecteur
- D : Discours direct/indirect
- E : (nouvelle lettre)
- F : Forme affirmative/négative
- G : Groupe nominal, Groupe verbal
- I : Impératif, Indicatif, Infinitif
- P : Ponctuation, Prédicat, Proposition indépendante
- R : (nouvelle lettre)
- S : Subordonnée relative/complétive/circonstancielle
- T : (nouvelle lettre)
- V : Valeur des temps, Verbe attributif, Verbe pronominal

**Objectif glossaire : 100+ termes, 20 lettres couvertes**

---

## 4. NOTIONS CRPE ABSENTES DU CATALOGUE

D'après le programme officiel CRPE français, ces notions ne sont couvertes par aucune série :

### Grammaire
- Types et formes de phrases (déclarative, interrogative, exclamative, impérative)
- Discours direct et indirect (transposition)
- Ponctuation (rôle et emploi)
- Groupe nominal et ses expansions (épithète, apposition, complément du nom)

### Orthographe
- Homophones lexicaux courants (a/à, ou/où, ce/se, son/sont…)
- Accord de l'adjectif de couleur
- Pluriel des noms composés
- Rectifications orthographiques de 1990
- Majuscules et traits d'union

### Conjugaison
- Passé simple (reconnaissance + usage)
- Plus-que-parfait
- Conditionnel passé
- Subjonctif passé
- Valeurs de l'imparfait (description, habitude, hypothèse)

### Lexique
- Synonymes, antonymes, homonymes, paronymes
- Champs sémantiques et lexicaux
- Étymologie : préfixes et suffixes latins/grecs
- Sens propre et sens figuré
- Registres de langue (familier, courant, soutenu)
- Familles de mots

### Compréhension de texte
- Textes documentaires et informatifs
- Textes injonctifs et argumentatifs
- Inférences (logiques, pragmatiques)
- Connecteurs logiques et cohérence
- Résumé et reformulation

### Analyse de la langue
- Analyse grammaticale complète de phrases
- Subordination : relative (explicative/déterminative), complétive, circonstancielle
- Types de propositions
- Fonctions dans le GN (épithète, apposition)
- Transposition de textes (temps, personne, genre/nombre)

---

## 5. ORDRE DE GÉNÉRATION RECOMMANDÉ

### Vague 1 — Lacunes critiques (Phase 3a) ✅ TERMINÉE
1. `comprehension_texte` : 5 nouvelles séries → `seed_content_comprehension_texte_v2.sql` (50Q)
2. `analyse_langue` : 5 nouvelles séries → `seed_content_analyse_langue_v2.sql` (50Q)
3. `lexique` : 6 nouvelles séries → `seed_content_lexique_v2.sql` (60Q)

### Vague 2 — Enrichissement (Phase 3b) ✅ TERMINÉE
4. `orthographe` : 5 nouvelles séries → `seed_content_orthographe_v2.sql` (50Q)
5. `conjugaison` : 5 nouvelles séries → `seed_content_conjugaison_v2.sql` (50Q)
6. `grammaire` : 5 nouvelles séries → `seed_content_grammaire_v2.sql` (50Q)

**Total Vague 1+2 : 310 nouvelles questions, 31 nouvelles séries**

### Vague 3 — Approfondissement (Phase 3c) ⏳ À FAIRE
7. `didactique` : 3 nouvelles séries (production d'écrits, différenciation, évaluation)
8. Glossaire : ✅ 100 termes, 18 lettres — objectif atteint
9. Diagnostic : enrichir à 20-25 questions/sous-domaine (actuellement 15)

---

## 6. SOURCES À COLLECTER (Phase 1)

| ID | Source | Contenu cible | Agent |
|---|---|---|---|
| S1 | Éduscol — Terminologie grammaticale | Définitions officielles MEN | Haiku H1 |
| S2 | Éduscol — Ressources cycle 3 français | Notions au programme | Haiku H2 |
| S3 | Académie française — Questions de langue | Règles d'orthographe et grammaire | Haiku H3 |
| S4 | Éduscol — Ressources didactique lecture | Méthodes apprentissage lecture | Haiku H4 |
| S5 | Programme officiel CRPE | Référentiel de compétences | Haiku H5 |
