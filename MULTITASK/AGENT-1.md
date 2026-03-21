# Agent 1 — Tests unitaires

## Ta mission

Le projet a **zéro test**. Vitest est configuré dans `package.json` mais aucun fichier test n'existe. Tu vas créer la fondation de tests pour les fonctions critiques du projet.

## Règles de zone

### ✅ Fichiers que tu PEUX créer
- `__tests__/evaluation.test.ts`
- `__tests__/xp.test.ts`
- `__tests__/freemium.test.ts`
- `__tests__/utils.test.ts`
- `__tests__/setup.ts` (si nécessaire pour la config Vitest)
- `vitest.config.ts` (uniquement si absent — vérifie d'abord)

### 🚫 Fichiers INTERDITS
- Tout fichier en dehors de `__tests__/` et `vitest.config.ts`
- Ne modifie AUCUN code source existant

## Étapes

### 1. Vérifier la config Vitest
Lis `package.json` pour voir si `vitest` est dans les dépendances et s'il y a un `vitest.config.ts`.

### 2. Lire les fichiers à tester
Avant d'écrire un seul test, lis ENTIÈREMENT ces fichiers :
- `features/exercises/shared/evaluation.ts` — logique de validation des réponses (8 types d'exercices)
- `lib/xp.ts` — calcul XP, niveaux, seuils
- `lib/freemium.ts` — logique de limite gratuite (20 questions/jour)
- `lib/utils.ts` — utilitaire `cn()` et autres helpers

### 3. Écrire les tests

#### `__tests__/evaluation.test.ts` (PRIORITÉ 1 — le plus critique)
Teste CHAQUE mode de `normalizeExpectedAnswer` et `evaluateAnswer` :
- `single_choice` — QCM classique
- `boolean` — vrai/faux
- `text` — réponse courte avec `acceptableAnswers`
- `categorization` — tri en catégories
- `highlight_groups` — surlignage de propositions
- `correction` — correction orthographique
- Cas limites : réponse vide, casse différente, accents, espaces superflus

#### `__tests__/xp.test.ts` (PRIORITÉ 2)
- Calcul XP pour une bonne réponse
- Calcul XP pour une mauvaise réponse
- Bonus streak
- Calcul de niveau à partir de l'XP total
- Seuils de niveau (niveau 1 → 2, progression linéaire ou non ?)

#### `__tests__/freemium.test.ts` (PRIORITÉ 3)
- Utilisateur sous la limite (< 20)
- Utilisateur à la limite (= 20)
- Utilisateur premium (pas de limite)
- Réinitialisation journalière

#### `__tests__/utils.test.ts` (PRIORITÉ 4)
- `cn()` merge correctement les classes Tailwind
- Gestion des classes conflictuelles

### 4. Valider
Lance `npm run test` (ou `npx vitest run`) pour vérifier que tous les tests passent.

## Critères de succès
- [ ] Minimum **30 tests** au total
- [ ] Tous les tests passent au vert
- [ ] Couverture de tous les modes de `evaluation.ts`
- [ ] Pas de mocks inutiles — teste la logique pure
