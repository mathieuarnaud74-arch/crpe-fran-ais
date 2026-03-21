# Agent 5 — Performance & lazy loading

> **AVANT DE COMMENCER** : Lis `CLAUDE.md` à la racine du projet. Respecte les conventions (`cn()`, alias `@/`, `"use client"` uniquement si nécessaire). Ne lance PAS `npm run build` — l'utilisateur le fera. Ne fais PAS de `git commit`.

> **PERSÉVÉRANCE** : Tu DOIS terminer 100% de ta mission. Ne t'arrête JAMAIS en cours de route. Ne demande JAMAIS "voulez-vous que je continue ?". Traite chaque composant de la liste par ordre de priorité (Priorité 1 d'abord, puis 2, puis 3). Si un composant n'utilise pas de librairie lourde, passe au suivant sans demander.

> **RAPPORT OBLIGATOIRE** : Une fois ta mission 100% terminée, crée le fichier `MULTITASK/RAPPORT-5.md` avec ce format exact :
> ```markdown
> # Rapport Agent 5 — Performance & lazy loading
> ## Statut : ✅ Terminé / ⚠️ Partiel / ❌ Bloqué
> ## Fichiers modifiés
> - `chemin/composant.tsx` — import dynamique ajouté pour X (taille estimée du bundle épargné)
> ## Fichiers non modifiés (pas de lazy loading nécessaire)
> - `chemin/composant.tsx` — raison
> ## Problèmes rencontrés
> - (aucun) ou description
> ## Handoffs
> - (aucun) ou description
> ## Résumé chiffré
> - X composants analysés
> - X imports dynamiques ajoutés
> - X skeletons de chargement créés
> - Librairies lazy-loadées : liste
> ```

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
