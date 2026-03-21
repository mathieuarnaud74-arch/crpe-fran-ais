# Agent 8 — Constants, types & nettoyage

## Ta mission

Extraire les valeurs hardcodées dans des constantes, améliorer les types, et centraliser les chaînes business-critical. Cela rend le code plus maintenable sans changer aucun comportement.

## Règles de zone

### ✅ Fichiers que tu PEUX modifier
- `lib/constants.ts` — ajouter de nouvelles constantes
- `types/domain.ts` — améliorer/compléter les types

### ✅ Fichiers que tu PEUX créer
- `lib/pricing.ts` — constantes de pricing (si pas déjà dans constants.ts)
- `lib/crpe-context.ts` — chaînes de contexte CRPE réutilisables

### 🚫 Fichiers INTERDITS
- Tout fichier dans `features/`, `components/`, `app/`, `content/`
- `lib/utils.ts`, `lib/xp.ts`, `lib/freemium.ts`, `lib/sounds.ts`

**IMPORTANT** : Tu NE mets PAS à jour les fichiers qui UTILISENT ces constantes. Tu crées uniquement les fichiers de constantes/types. Les autres agents ou une session future se chargeront de brancher les imports.

## Étapes

### 1. Identifier les valeurs hardcodées
Lis ces fichiers pour trouver les valeurs à extraire :

```
app/(app)/exercices/[id]/page.tsx  — prix "0,99 €", "20 questions", textes CRPE
app/(app)/tableau-de-bord/page.tsx — seuils, messages
lib/freemium.ts                   — limite gratuite (probablement déjà une constante)
lib/xp.ts                         — seuils XP, niveaux
features/gamification/             — noms de badges, seuils
```

### 2. Créer `lib/pricing.ts`

```typescript
/** Constantes tarifaires — source unique de vérité */
export const PRICING = {
  /** Prix d'accès 24h (pass journalier) */
  DAY_PASS_PRICE: "0,99 €",
  /** Prix d'accès 24h (valeur numérique en centimes) */
  DAY_PASS_CENTS: 99,
  /** Limite gratuite quotidienne */
  FREE_DAILY_LIMIT: 20,
  /** Label de la limite gratuite */
  FREE_DAILY_LIMIT_LABEL: "20 questions corrigées par jour",
} as const;
```

### 3. Créer `lib/crpe-context.ts`

Extraire les chaînes de contexte CRPE utilisées dans les prompts et les pages :

```typescript
/** Contexte CRPE réutilisable pour les pages et les prompts */
export const CRPE_CONTEXT = {
  EXAM_NAME: "CRPE",
  EXAM_FULL_NAME: "Certificat de Recrutement des Professeurs des Écoles",
  SUBJECT: "Français",
  TARGET_AUDIENCE: "futurs professeurs des écoles",
  // ... autres chaînes trouvées
} as const;
```

### 4. Améliorer `types/domain.ts`

Lis `types/domain.ts` et vérifie que :
- Tous les types d'exercices sont dans un union type (`ExerciseType`)
- Tous les sous-domaines sont typés
- Les modes de réponse sont exhaustifs
- Les types sont exportés avec des JSDoc si nécessaire

### 5. Améliorer `lib/constants.ts`

Lis `lib/constants.ts` et ajoute ce qui manque :
- Mapping domaine → couleur (si hardcodé dans les composants)
- Mapping domaine → label français
- Liste des exercise types
- Tout ce qui est répété dans 2+ fichiers

### 6. Documenter les handoffs

Crée `MULTITASK/HANDOFF-8.md` avec la liste des fichiers qui utilisent actuellement des valeurs hardcodées et qui devraient importer tes nouvelles constantes. Format :

```markdown
## Fichiers à mettre à jour (hors de ma zone)

- `app/(app)/exercices/[id]/page.tsx:101` — remplacer `"0,99 €"` par `PRICING.DAY_PASS_PRICE`
- `app/(app)/exercices/[id]/page.tsx:107` — remplacer `"20 questions"` par `PRICING.FREE_DAILY_LIMIT_LABEL`
- ...
```

## Critères de succès
- [ ] `lib/pricing.ts` créé avec toutes les valeurs tarifaires
- [ ] `lib/crpe-context.ts` créé avec les chaînes CRPE
- [ ] `lib/constants.ts` enrichi (sans casser l'existant)
- [ ] `types/domain.ts` amélioré (sans casser l'existant)
- [ ] `MULTITASK/HANDOFF-8.md` créé avec la liste des fichiers à brancher
- [ ] `npm run typecheck` passe sans erreur
