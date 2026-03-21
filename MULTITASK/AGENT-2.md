# Agent 2 — Error boundaries & pages d'erreur

## Ta mission

Le projet n'a **aucun `error.tsx`** ni **`not-found.tsx`** dans l'app router. Quand une erreur serveur ou une page introuvable survient, l'utilisateur voit une page blanche ou l'erreur Next.js par défaut. Tu vas créer des pages d'erreur cohérentes avec le design system.

## Règles de zone

### ✅ Fichiers que tu PEUX créer
- `app/global-error.tsx`
- `app/not-found.tsx`
- `app/(app)/error.tsx`
- `app/(app)/not-found.tsx`
- `app/(app)/exercices/error.tsx`
- `app/(app)/exercices/[id]/error.tsx`
- `app/(app)/fiches/[slug]/error.tsx`
- `app/(app)/francais/[domain]/error.tsx`
- `app/(app)/tableau-de-bord/error.tsx`
- `app/(app)/progression/error.tsx`

### 🚫 Fichiers INTERDITS
- Ne modifie AUCUN fichier existant (layout, page, etc.)
- Ne touche pas à `components/ui/`

## Contexte design

Avant de coder, lis ces fichiers pour comprendre le design system :
- `CLAUDE.md` — palette, tokens, typographie
- `components/ui/button.tsx` — pour réutiliser le composant Button
- `components/mascot/mocca.tsx` — la mascotte Mocca (état `grumpy` pour les erreurs)
- `app/globals.css` — styles globaux

## Étapes

### 1. `app/global-error.tsx`
- Page d'erreur critique (crash React entier)
- **ATTENTION** : `global-error.tsx` doit inclure ses propres tags `<html>` et `<body>`
- Ne peut PAS utiliser le layout de l'app
- Design simple : fond `paper`, texte `ink`, bouton "Recharger la page"
- C'est un **Client Component** obligatoirement (`"use client"`)

### 2. `app/not-found.tsx`
- Page 404 globale
- Utilise la mascotte Mocca en état `grumpy`
- Message sympathique : "Oups, cette page n'existe pas !"
- Bouton "Retour à l'accueil" avec `ButtonLink` vers `/`
- Design cohérent avec le reste du site

### 3. `app/(app)/error.tsx`
- Error boundary pour toute la section app
- `"use client"` obligatoire
- Reçoit `{ error, reset }` en props
- Affiche Mocca en état `grumpy` avec un message d'erreur
- Bouton "Réessayer" qui appelle `reset()`
- Bouton secondaire "Retour au tableau de bord" vers `/tableau-de-bord`

### 4. Pages d'erreur spécifiques (exercices, fiches)
- `app/(app)/exercices/[id]/error.tsx` — "Cet exercice a rencontré un problème"
- `app/(app)/fiches/[slug]/error.tsx` — "Cette fiche n'a pas pu être chargée"
- Même pattern que le error.tsx principal mais avec des messages contextuels

### 5. `app/(app)/not-found.tsx`
- 404 dans la section protégée
- "Cette page n'existe pas dans ton espace de révision"
- Bouton retour vers `/tableau-de-bord`

## Conventions
- Utilise `cn()` de `@/lib/utils` pour les classes
- Utilise les tokens Tailwind du projet (`bg-paper`, `text-ink`, `text-muted`, `rounded-card`, etc.)
- Importe `{ Button, ButtonLink }` de `@/components/ui/button`
- Pas de `default export` pour les composants partagés, MAIS les pages Next.js DOIVENT avoir un `export default`

## Critères de succès
- [ ] `global-error.tsx` fonctionnel avec ses propres `<html>/<body>`
- [ ] `not-found.tsx` avec Mocca grumpy et navigation
- [ ] `error.tsx` dans `(app)/` avec reset + navigation
- [ ] Au moins 2 error boundaries spécifiques (exercices, fiches)
- [ ] Design cohérent avec la palette paper/ink/accent
