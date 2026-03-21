# Agent 4 — Accessibilité (a11y)

> **AVANT DE COMMENCER** : Lis `CLAUDE.md` à la racine du projet. Respecte les conventions (`cn()`, alias `@/`, tokens Tailwind, pas d'inline styles). Ne lance PAS `npm run build` — l'utilisateur le fera. Ne fais PAS de `git commit`.

> **PERSÉVÉRANCE** : Tu DOIS terminer 100% de ta mission. Ne t'arrête JAMAIS en cours de route. Ne demande JAMAIS "voulez-vous que je continue ?". Parcours CHAQUE composant de ta zone un par un et applique les corrections. Si un composant n'a rien à corriger, passe au suivant sans demander.

> **RAPPORT OBLIGATOIRE** : Une fois ta mission 100% terminée, crée le fichier `MULTITASK/RAPPORT-4.md` avec ce format exact :
> ```markdown
> # Rapport Agent 4 — Accessibilité
> ## Statut : ✅ Terminé / ⚠️ Partiel / ❌ Bloqué
> ## Fichiers modifiés
> - `chemin/composant.tsx` — corrections apportées (aria-label, role, focus, etc.)
> ## Fichiers non modifiés (déjà conformes)
> - `chemin/composant.tsx` — raison
> ## Problèmes rencontrés
> - (aucun) ou description
> ## Handoffs
> - (aucun) ou description
> ## Résumé chiffré
> - X composants audités
> - X composants modifiés
> - X aria-labels ajoutés
> - X corrections prefers-reduced-motion
> ```

## Ta mission

Auditer et corriger les problèmes d'accessibilité dans les composants UI et la navigation. L'objectif est un score Lighthouse Accessibility > 95.

## Règles de zone

### ✅ Fichiers que tu PEUX modifier
- `components/ui/accordion.tsx`
- `components/ui/sheet.tsx`
- `components/ui/skeleton.tsx`
- `components/ui/badge.tsx`
- `components/ui/xp-bar.tsx`
- `components/ui/xp-popup.tsx`
- `components/ui/level-badge.tsx`
- `components/ui/achievement-badges.tsx`
- `components/ui/badge-unlock-toast.tsx`
- `components/ui/confetti.tsx`
- `components/ui/activity-heatmap.tsx`
- `components/ui/score-evolution-chart.tsx`
- `components/ui/progression-radar-chart.tsx`
- `components/ui/domain-accordion.tsx`
- `components/site-header.tsx`
- `components/site-footer.tsx`
- `components/app-navigation.tsx`
- `components/mobile-nav.tsx` (si existe)
- `components/mascot/mocca.tsx`
- `components/mascot/mocca-with-message.tsx`

### 🚫 Fichiers INTERDITS
- `components/ui/button.tsx`, `components/ui/card.tsx`, `components/ui/input.tsx` — déjà bien configurés
- Tout fichier dans `features/`, `app/`, `content/`, `lib/`

## Checklist par composant

### Navigation (`site-header.tsx`, `app-navigation.tsx`, `mobile-nav.tsx`)
- [ ] `<nav>` a un `aria-label` (ex: `"Navigation principale"`)
- [ ] Le lien actif a `aria-current="page"`
- [ ] Le menu mobile a `aria-expanded`, `aria-controls`, `aria-label`
- [ ] Les liens ont un contraste suffisant (vérifier `text-muted` sur `bg-paper`)
- [ ] Focus visible sur tous les liens interactifs (`focus-visible:ring-2`)

### Composants de données (`xp-bar.tsx`, `activity-heatmap.tsx`, charts)
- [ ] `role="progressbar"` avec `aria-valuenow`, `aria-valuemin`, `aria-valuemax` sur les barres
- [ ] `aria-label` descriptif sur les graphiques (ex: `"Progression XP : niveau 5, 340/500 XP"`)
- [ ] Les couleurs ne sont pas le seul moyen de transmettre l'info (ajouter du texte ou des patterns)
- [ ] `role="img"` avec `aria-label` sur les SVG/canvas décoratifs

### Badges et notifications (`achievement-badges.tsx`, `badge-unlock-toast.tsx`, `xp-popup.tsx`)
- [ ] Les toasts ont `role="alert"` ou `aria-live="polite"`
- [ ] Les badges ont un `aria-label` décrivant le badge (pas juste l'icône)
- [ ] Les animations respectent `prefers-reduced-motion`

### Mascotte (`mocca.tsx`, `mocca-with-message.tsx`)
- [ ] Image décorative : `alt=""` et `aria-hidden="true"` (déjà partiellement fait)
- [ ] Si Mocca parle (message), le message est dans un `aria-live="polite"` region

### Skeleton (`skeleton.tsx`)
- [ ] `aria-hidden="true"` sur les skeletons
- [ ] Ou `role="status"` avec `aria-label="Chargement..."` sur le conteneur parent

### Accordion (`accordion.tsx`)
- [ ] Radix gère l'a11y — vérifier que les props passent correctement
- [ ] `aria-expanded` fonctionne sur le trigger

## Pattern pour `prefers-reduced-motion`

```tsx
// Dans les composants avec animations
const prefersReducedMotion =
  typeof window !== "undefined" &&
  window.matchMedia("(prefers-reduced-motion: reduce)").matches;

// Ou en CSS
className="motion-safe:animate-bounce"
// Tailwind: motion-safe: et motion-reduce: prefixes
```

## Critères de succès
- [ ] Tous les composants de ta zone passent le checklist
- [ ] `prefers-reduced-motion` respecté sur les animations (confetti, xp-popup, badge-unlock)
- [ ] Navigation keyboard-friendly (tab order logique, focus visible)
- [ ] Tous les éléments interactifs ont un nom accessible
- [ ] Pas de nouveau composant créé — uniquement des améliorations sur l'existant
