# Agent 7 — Contenu : nouvelles fiches de révision

## Ta mission

Le projet a 92 fiches mais seulement **5 fiches "reference"** (format complet/exhaustif). Chaque domaine devrait avoir au moins une fiche reference. Tu vas en créer de nouvelles en suivant exactement le format existant.

## Règles de zone

### ✅ Fichiers que tu PEUX créer
- `content/fiches/conjugaison-temps-indicatif-reference.ts` (NOUVEAU)
- `content/fiches/comprehension-texte-types-textes-reference.ts` (NOUVEAU)
- `content/fiches/didactique-apprentissage-lecture-reference.ts` (NOUVEAU)
- `content/fiches/lexique-formation-mots-reference.ts` (NOUVEAU)

### ✅ Fichier que tu PEUX modifier
- `content/fiches/index.ts` — pour ajouter les exports des nouvelles fiches

### 🚫 Fichiers INTERDITS
- Toute fiche existante
- Tout fichier en dehors de `content/fiches/`

## Étapes

### 1. Étudier le format existant
Lis ENTIÈREMENT ces fichiers pour comprendre la structure :
- `content/fiches/index.ts` — comment les fiches sont exportées et indexées
- `content/fiches/grammaire-phrase-complexe-reference.ts` — exemple de fiche reference
- `content/fiches/orthographe-homophones-grammaticaux-reference.ts` — autre exemple
- `content/fiches/analyse-langue-manipulations-syntaxiques-reference.ts` — autre exemple
- `features/fiches/types.ts` — types TypeScript des fiches

### 2. Comprendre les types de blocs disponibles
Les fiches reference utilisent ces blocs :
- `rule` — règle grammaticale/linguistique
- `example` — exemple avec mise en évidence
- `watchout` — piège courant / erreur fréquente
- `tip` — astuce mnémotechnique
- `table` — tableau de données
- `related` — liens vers d'autres fiches

### 3. Créer les 4 fiches

#### Fiche 1 : `conjugaison-temps-indicatif-reference.ts`
**Sujet** : Les temps de l'indicatif (présent, imparfait, passé simple, futur, passé composé, plus-que-parfait, futur antérieur, passé antérieur)
**Contenu attendu** :
- Tableau des terminaisons par groupe pour chaque temps
- Règles d'emploi de chaque temps
- Exemples avec verbes des 3 groupes
- Pièges : auxiliaire être/avoir, accords du participe passé
- Astuce : la valeur des temps dans un récit

#### Fiche 2 : `comprehension-texte-types-textes-reference.ts`
**Sujet** : Les types de textes (narratif, descriptif, argumentatif, explicatif, injonctif, dialogal)
**Contenu attendu** :
- Tableau comparatif des 6 types
- Caractéristiques linguistiques de chaque type
- Exemples concrets tirés de textes scolaires
- Piège : distinction type/genre
- Lien avec les programmes Eduscol

#### Fiche 3 : `didactique-apprentissage-lecture-reference.ts`
**Sujet** : La didactique de l'apprentissage de la lecture (cycles 1 à 3)
**Contenu attendu** :
- Les étapes de l'apprentissage : conscience phonologique → décodage → fluence → compréhension
- Méthodes : syllabique, mixte, globale — positionnement officiel (rapport Dehaene)
- Activités par cycle
- Évaluation de la fluence (nombre de MCLM)
- Différenciation pour élèves en difficulté
- Références aux programmes officiels 2020-2024

#### Fiche 4 : `lexique-formation-mots-reference.ts`
**Sujet** : La formation des mots (dérivation, composition, emprunt, néologie)
**Contenu attendu** :
- Dérivation : préfixes, suffixes, familles de mots
- Composition : mots composés, soudés, à trait d'union
- Autres procédés : emprunt, sigles, troncation, néologismes
- Tableau des préfixes et suffixes les plus courants
- Exercices types au CRPE sur ce sujet

### 4. Enregistrer dans l'index
Ajoute les imports et exports dans `content/fiches/index.ts` en suivant exactement le pattern existant.

## Critères de qualité du contenu
- **Précision** : contenu conforme aux programmes officiels du MEN et aux manuels de référence CRPE
- **Exhaustivité** : une fiche reference doit être COMPLÈTE sur son sujet (c'est le format le plus détaillé)
- **Pédagogie** : exemples clairs, tableaux lisibles, pièges bien identifiés
- **Cohérence** : même structure et même ton que les fiches existantes
- **Longueur** : 15-25 blocs par fiche (les fiches reference sont longues)

## Critères de succès
- [ ] 4 nouvelles fiches créées avec le bon format TypeScript
- [ ] Contenu pédagogiquement correct et adapté au CRPE
- [ ] Ajoutées dans `content/fiches/index.ts`
- [ ] `npm run typecheck` passe sans erreur
- [ ] Chaque fiche a au moins 15 blocs
