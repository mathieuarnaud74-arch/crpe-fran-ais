# CONTENT-PLAN.md — Plan de déploiement du contenu

> Dernière mise à jour : 2026-03-17
> Objectif : passer d'un MVP à un site crédible capable de convertir des abonnements premium.

---

## 1. État des lieux

### Exercices (seeds SQL)

| Domaine | Exercices | Free | Premium | Séries (≈) |
|---|---|---|---|---|
| Grammaire | 150 | 75 | 75 | 13 |
| Orthographe | 90 | 65 | 25 | 7 |
| Conjugaison | 90 | 40 | 50 | 7 |
| Didactique du français | 80 | 40 | 40 | 8 |
| Lexique | 70 | 30 | 40 | 7 |
| Analyse de la langue | 30 | **0** | 30 | 3 |
| Compréhension de texte | **40** ✅+20 | **30** ✅+20 | 10 | **4** ✅+2 |
| **TOTAL** | **~577** | **~280** | **~270** | **~49** |

> Note : ~27 questions supplémentaires existent dans `content/french-crpe-series.ts` (legacy TS).
> Ratio free/premium : 49% / 51% — bien équilibré globalement.

### Fiches (content/fiches/)

| Domaine | Fiches | Formats |
|---|---|---|
| Orthographe | 5 | Sprint ×5 |
| Grammaire | 4 | Sprint ×4 |
| Lexique | 2 | Sprint ×2 |
| Conjugaison | 2 | Sprint ×2 |
| Analyse de la langue | 1 | Sprint ×1 |
| Didactique du français | 5 | Sprint ×4 + Référence ×1 |
| Compréhension de texte | 3 | Sprint ×3 |
| **TOTAL** | **22** | Sprint ×21 + Référence ×1 |

---

## 2. Lacunes critiques

### ✅ Compréhension de texte — domaine débloqué (Sprint 1 terminé)

C'est l'un des sujets les plus présents à l'épreuve écrite du CRPE.
- ~~0 fiche~~ → 3 fiches Sprint créées (repérage, inférence, texte documentaire)
- ~~20 exercices seulement~~ → 2 séries free ajoutées (cpt_reperage_explicite, cpt_inference_facile)
- Domaine désormais accessible aux utilisateurs gratuits

### ⚠️ Analyse de la langue — 0 exercice gratuit

- 30 exercices, tous premium → les utilisateurs gratuits ne découvrent pas ce domaine
- 1 seule fiche
- Domaine pourtant très attendu en analyse syntaxique (CRPE écrit)

### ✅ Didactique — fiches complétées (Sprint 2 partiel terminé)

- 80 exercices et 8 séries (bien fourni côté entraînement)
- ~~1 seule fiche~~ → 5 fiches créées (apprendre à lire, production écrite, évaluation, grammaire inductive, programmes cycles)

### ⚠️ Conjugaison — modes manquants

- 0 fiche sur le subjonctif, le conditionnel, les temps du récit (passé composé)
- 50 exercices premium mais peu de contenu d'apprentissage pour y accéder

---

## 3. Seuils de crédibilité et conversion

### Seuil A — Lancement crédible (viable pour ouvrir les inscriptions)

| Ressource | Actuel | Cible |
|---|---|---|
| Fiches (tous domaines couverts, ≥3/domaine) | **23** (4/7 domaines ≥3) | **30** (7/7) |
| Exercices | ~577 | 600 |
| Séries | ~49 | 50 |
| Domaines complets (fiches + exercices) | **7/7** ✅ | **7/7** |

### Seuil B — Compétitif (concurrent direct : Studyrama, Pass-Éducation, Lelivrescolaire)

| Ressource | Actuel | Cible |
|---|---|---|
| Fiches (formats mixtes : Sprint + Référence) | 23 | **60** |
| Exercices | ~577 | 1 200 |
| Séries thématiques | ~49 | 80 |
| Examens blancs complets | 0 | **2** |
| Annales commentées (3 ans) | 0 | 6 épreuves |

### Seuil C — Leadership (Pix EDU, Cap Concours niveau)

| Ressource | Actuel | Cible |
|---|---|---|
| Fiches (Sprint + Référence + Opératoire) | 23 | 100+ |
| Exercices | ~577 | 2 500 |
| Séries | ~49 | 150 |
| Examens blancs | 0 | 5 + corrections détaillées |
| Simulateur d'épreuve (3h chrono) | 0 | 1 |

### Pourquoi les fiches sont le levier n°1 de conversion

Les fiches sont un contenu de **découverte et d'ancrage** :
- Un candidat qui arrive sur Google "subjonctif CRPE" atterrit sur une fiche
- Il voit de la valeur immédiatement (contenu gratuit) → il s'inscrit
- Il veut aller plus loin → il s'abonne (fiches Référence + Opératoire en premium)

Les exercices convertissent moins bien seuls : sans contexte théorique, un candidat ne sait pas pourquoi il se trompe. **La fiche → exercice est le tunnel de conversion le plus puissant.**

---

## 4. Backlog priorisé

### ✅ Priorité 1 — Combler le domaine manquant : Compréhension de texte

**Impact : critique (domaine absent = site perçu comme incomplet)**

Fiches :

| Statut | Fiche | Domaine | Format | Tier |
|---|---|---|---|---|
| ✅ | Lire un texte narratif : repérage et interprétation | comprehension_texte | Sprint | free |
| ✅ | Explicite vs implicite : inférence et déduction | comprehension_texte | Sprint | free |
| ✅ | Comprendre un texte documentaire | comprehension_texte | Sprint | free |
| ❌ | Analyser un texte littéraire pour le CRPE | comprehension_texte | Référence | premium |

Exercices :

| Statut | Série | Topic key | Questions | Tier |
|---|---|---|---|---|
| ✅ | Repérage explicite : textes courts | cpt_reperage_explicite | 10 | free |
| ✅ | Inférences et implicite niveau 1 | cpt_inference_facile | 10 | free |
| ❌ | Registres et tonalité du texte | cpt_registres_tonalite | 10 | premium |
| ❌ | Texte documentaire et paraphrase | cpt_documentaire | 10 | premium |
| ❌ | Analyse littéraire niveau CRPE | cpt_analyse_litteraire | 10 | premium |

**Livrable minimal P1 : ✅ FAIT — 3 fiches Sprint + 2 séries free = domaine débloqué pour les visiteurs**

---

### ✅ Priorité 2 — Renforcer la Didactique (différenciation concurrentielle)

**Impact : fort (domaine CRPE-spécifique, introuvable sur les sites généralistes)**

Fiches :

| Statut | Fiche | Domaine | Format | Tier |
|---|---|---|---|---|
| ✅ | Apprendre à lire : méthodes et programmes 2016 | didactique_francais | Sprint | free |
| ✅ | Enseigner la production écrite | didactique_francais | Sprint | free |
| ✅ | Évaluer en français à l'école : sans noter pour punir | didactique_francais | Sprint | free |
| ✅ | Enseigner la grammaire en contexte (approche inductive) | didactique_francais | Sprint | premium |
| ✅ | Les programmes de français cycle 1, 2, 3 | didactique_francais | Référence | premium |

**Livrable minimal P2 : ✅ FAIT — 3 fiches Sprint + bonus : grammaire inductive + programmes cycles**

---

### Priorité 3 — Compléter Conjugaison (modes manquants)

**Impact : moyen-fort (sujets récurrents au CRPE)**

Fiches à créer :

| Fiche | Domaine | Format | Tier | Statut |
|---|---|---|---|---|
| Subjonctif : emplois et formes | conjugaison | Sprint | free | ⬜ |
| Conditionnel : présent et passé | conjugaison | Sprint | free | ⬜ |
| Passé composé vs imparfait (récit) | conjugaison | Sprint | premium | ⬜ |

---

### Priorité 4 — Compléter Analyse de la langue (+ ajouter du free)

**Impact : moyen (actuellement 0 exercice gratuit = domaine invisible)**

Actions :

| Action | Type | Priorité |
|---|---|---|
| Créer 10 exercices free sur `phrase_complexe_types` | Exercices SQL | Haute |
| Fiche : Phrase complexe — types de propositions | Sprint | free |
| Fiche : Compléments circonstanciels — identifier et distinguer | Sprint | free |
| Fiche : Voix active et passive | Sprint | premium |
| Fiche : Subordonnées conjonctives complétives et circonstancielles | Sprint | premium |

---

### Priorité 5 — Enrichir Lexique

**Impact : moyen**

Fiches à créer :

| Fiche | Domaine | Format | Tier |
|---|---|---|---|
| Champ lexical et champ sémantique | lexique | Sprint | free |
| Registres de langue : courant, soutenu, familier | lexique | Sprint | free |
| Polysémie et sens en contexte | lexique | Sprint | premium |

---

### Priorité 6 — Examens blancs (déclencheur d'abonnement le plus fort)

**Impact : fort sur conversion premium**

Un examen blanc CRPE Français complet :
- Durée : 3h (partie 1 : production écrite 2h + partie 2 : connaissance de la langue 1h)
- Format : 1 texte supports + 20-25 questions de langue + sujet de production écrite
- Nécessite : textes authentiques ou inspirés des annales

| Livrable | Contenu | Tier |
|---|---|---|
| Examen blanc n°1 (session type 2024) | 20 questions de langue + consigne de production | premium |
| Examen blanc n°2 (session type 2023) | 20 questions de langue + consigne de production | premium |
| Correction détaillée examen n°1 | Fiches-solutions par question | premium |

---

## 5. Roadmap synthétique

```
✅ SPRINT 1 (immédiat — déblocage du site) — TERMINÉ
  ✅ 3 fiches compréhension_texte (Sprint, free)
  ✅ 2 séries exercices compréhension_texte (free)
  Résultat : site complet sur les 7 domaines ✅

SPRINT 2 (conversion free → inscrit) — EN COURS
  ✅ 3 fiches didactique (Sprint, free) + 2 bonus (premium)
  ❌ 3 fiches conjugaison (Sprint, free + premium)
  ❌ 2 fiches analyse_langue (Sprint, free)
  Résultat visé : 26 fiches, tous domaines ≥ 3 fiches → Seuil A (actuel : 22 fiches)

SPRINT 3 (conversion inscrit → premium)
  → 1 examen blanc complet + correction
  → 5 fiches Référence (compréhension texte + didactique)
  → 20 exercices premium analyse_langue (+ 10 free)
  Résultat : offre premium visible et désirable

SPRINT 4 (autorité et SEO)
  → 15 fiches supplémentaires (Sprint + Référence)
  → 2e examen blanc
  → 200 exercices supplémentaires (tous domaines)
  Résultat : 50+ fiches → Seuil B atteint
```

---

## 6. Récapitulatif des cibles

| Métrique | Aujourd'hui | Seuil A (lancement) | Seuil B (compétitif) |
|---|---|---|---|
| Fiches totales | **23** _(était 15)_ | **30** | 60 |
| Domaines avec ≥3 fiches | **4/7** _(était 2/7)_ | **7/7** | 7/7 |
| Exercices totaux | ~577 _(+20 free cpt)_ | 600 | 1 200 |
| Séries exercices | ~49 _(était ~47)_ | 52 | 80 |
| Exercices free/domaine (min) | 0 (analyse_langue) | **10 minimum** | 20 minimum |
| Examens blancs | 0 | 0 | **2** |

**Prochaine priorité : Sprint 2 suite — conjugaison (3 fiches) + analyse_langue (2 fiches) pour atteindre Seuil A.**
