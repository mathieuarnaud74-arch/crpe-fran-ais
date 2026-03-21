# Agent 5 — Performance & lazy loading

## Ta mission

Optimiser les performances en ajoutant du lazy loading, des imports dynamiques et des Suspense boundaries sur les composants lourds (graphiques, PDF, animations).

## Règles de zone

### ✅ Fichiers que tu PEUX modifier
- `features/dashboard/components/nivo-radar.tsx`
- `features/dashboard/components/activity-heatmap.tsx` (si existant dans features/)
- `features/dashboard/components/animated-counter.tsx`
- `features/dashboard/components/streak-display.tsx`
- `features/dashboard/components/xp-level-card.tsx`
- `features/dashboard/components/domain-gauge.tsx`
- `features/exercises/components/sprint-player.tsx`
- `features/exercises/components/swipe-player.tsx`
- `features/exercises/components/exercise-timer.tsx`
- `features/exercises/components/exercise-session-wrapper.tsx`
- `features/fiches/components/fiche-pdf.tsx`
- `features/fiches/components/download-fiche-button.tsx`
- `features/onboarding/components/onboarding-tour.tsx`
- `features/onboarding/components/onboarding-tour-wrapper.tsx`

### 🚫 Fichiers INTERDITS
- `app/` (pages, layouts, API routes)
- `components/ui/`
- `lib/`, `content/`, `types/`

## Stratégie

### 1. Identifier les imports lourds
Lis chaque fichier de ta zone et repère :
- Imports de librairies lourdes : `@nivo/*`, `@react-pdf/renderer`, `driver.js`, `react-countdown-circle-timer`, `framer-motion`, `react-confetti`
- Composants qui ne sont visibles qu'après interaction (PDF, onboarding tour)
- Composants below-the-fold (en bas de page)

### 2. Appliquer les imports dynamiques Next.js

```tsx
// AVANT
import { ResponsiveRadar } from "@nivo/radar";

// APRÈS
import dynamic from "next/dynamic";
const ResponsiveRadar = dynamic(
  () => import("@nivo/radar").then((mod) => mod.ResponsiveRadar),
  { ssr: false, loading: () => <div className="h-64 animate-pulse rounded-card bg-secondary" /> }
);
```

### 3. Composants à traiter (par priorité)

#### Priorité 1 — Gros bundles
| Composant | Librairie lourde | Action |
|-----------|-----------------|--------|
| `nivo-radar.tsx` | `@nivo/radar` | `dynamic()` avec `ssr: false` |
| `fiche-pdf.tsx` | `@react-pdf/renderer` | `dynamic()` avec `ssr: false` |
| `download-fiche-button.tsx` | Utilise fiche-pdf | Lazy load du PDF au clic |
| `onboarding-tour.tsx` | `driver.js` | `dynamic()` avec `ssr: false` |

#### Priorité 2 — Composants interactifs lourds
| Composant | Librairie | Action |
|-----------|----------|--------|
| `exercise-timer.tsx` | `react-countdown-circle-timer` | `dynamic()` avec `ssr: false` |
| `sprint-player.tsx` | Animations + timer | Vérifier si déjà lazy |
| `swipe-player.tsx` | `react-swipeable` + animations | `dynamic()` si non-critique au premier render |

#### Priorité 3 — Animations dashboard
| Composant | Action |
|-----------|--------|
| `animated-counter.tsx` | Lazy si utilise framer-motion |
| `domain-gauge.tsx` | Lazy si contient SVG lourd |
| `streak-display.tsx` | Lazy si animations |

### 4. Pattern pour le loading state

Utilise des skeletons qui correspondent à la taille réelle du composant :
```tsx
const loading = () => (
  <div className="h-[300px] w-full animate-pulse rounded-card bg-secondary" />
);
```

### 5. Vérifier qu'il n'y a pas de régression
- Les composants lazy-loadés doivent toujours fonctionner
- Les composants `ssr: false` ne doivent pas casser le build
- Le loading state doit être visible pendant le chargement

## Critères de succès
- [ ] Tous les imports de librairies lourdes sont en `dynamic()` avec `ssr: false`
- [ ] Chaque `dynamic()` a un composant `loading` avec skeleton approprié
- [ ] Le PDF n'est chargé qu'au clic sur "Télécharger"
- [ ] L'onboarding tour n'est chargé que quand nécessaire
- [ ] Pas de régression fonctionnelle
- [ ] `npm run build` passe sans erreur
