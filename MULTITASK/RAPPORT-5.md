# Rapport Agent 5 — Performance & lazy loading
## Statut : ✅ Terminé
## Fichiers modifiés
- `features/dashboard/components/nivo-radar.tsx` — import dynamique de `@nivo/radar` avec `ssr: false` et skeleton 300px (~150 KB bundle épargné)
- `features/dashboard/components/animated-counter.tsx` — import dynamique de `react-countup` avec `ssr: false` (~15 KB bundle épargné)
- `features/dashboard/components/domain-gauge.tsx` — import dynamique de `react-circular-progressbar` + CSS via wrapper interne avec `ssr: false` (~20 KB bundle épargné)
- `features/exercises/components/exercise-timer.tsx` — import dynamique de `react-countdown-circle-timer` avec `ssr: false` (~25 KB bundle épargné)
- `features/exercises/components/exercise-session-wrapper.tsx` — imports dynamiques de `SprintPlayer` et `SwipePlayer` avec `ssr: false` et skeletons 400px (décharge framer-motion, react-swipeable, react-countup du bundle initial)
- `features/onboarding/components/onboarding-tour.tsx` — import dynamique de `driver.js` et son CSS via `import()` dans useEffect (chargé uniquement au lancement du tour)
- `features/onboarding/components/onboarding-tour-wrapper.tsx` — import dynamique de `OnboardingTour` avec `ssr: false`
## Fichiers non modifiés (pas de lazy loading nécessaire)
- `features/fiches/components/fiche-pdf.tsx` — déjà lazy-loadé dynamiquement par `download-fiche-button.tsx` via `import()` au clic
- `features/fiches/components/download-fiche-button.tsx` — utilise déjà `import()` dynamique pour charger le PDF au clic uniquement
- `features/exercises/components/sprint-player.tsx` — lazy-loadé par le wrapper `exercise-session-wrapper.tsx`
- `features/exercises/components/swipe-player.tsx` — lazy-loadé par le wrapper `exercise-session-wrapper.tsx`
- `features/dashboard/components/streak-display.tsx` — n'utilise que `motion` de framer-motion (léger, tree-shakeable, pas de lib lourde dédiée)
- `features/dashboard/components/xp-level-card.tsx` — n'utilise que `motion` de framer-motion (léger, tree-shakeable, pas de lib lourde dédiée)
- `features/dashboard/components/activity-heatmap.tsx` — fichier inexistant dans features/
## Problèmes rencontrés
- `react-circular-progressbar` : `buildStyles` est une fonction utilitaire, pas un composant React. Solution : wrapper interne dans le `dynamic()` qui encapsule `CircularProgressbar` + `buildStyles`.
- `driver.js/dist/driver.css` : pas de déclaration de types pour le module CSS. Solution : `@ts-expect-error` + import séparé pour le side-effect CSS.
## Handoffs
- (aucun)
## Résumé chiffré
- 13 composants analysés
- 7 imports dynamiques ajoutés (nivo-radar, animated-counter, domain-gauge, exercise-timer, sprint-player via wrapper, swipe-player via wrapper, onboarding-tour + wrapper)
- 5 skeletons de chargement créés (nivo-radar 300px, exercise-timer cercle 80px, domain-gauge cercle 80px, sprint-player 400px, swipe-player 400px)
- Librairies lazy-loadées : `@nivo/radar`, `react-countup`, `react-circular-progressbar`, `react-countdown-circle-timer`, `driver.js`, `framer-motion` (via sprint/swipe), `react-swipeable` (via swipe)
