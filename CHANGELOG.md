# Changelog

Format : `## [YYYY-MM-DD] — Description courte`
Entrées en ordre chronologique inverse (plus récent en haut).
**Les agents Claude doivent ajouter une entrée à chaque session ayant modifié du code.**

---

## [2026-03-17] — Hook Stop : rappel automatique CHANGELOG

- `.claude/settings.json` — création du fichier de config hooks (projet)
- `.claude/hooks/changelog-check.sh` — script Stop hook : bloque la fin de session si des fichiers ont été modifiés sans entrée dans CHANGELOG.md

---

## [2026-03-17] — Mise à jour de la documentation workflow

- `CLAUDE.md` — ajout des modules manquants (diagnostic, mascot, admin), dépendances (sonner, nextjs-toploader, Radix Accordion/Dialog), table `diagnostic_results`, routes API ; ajout de la section Changelog obligatoire
- `README.md` — mise à jour complète : nouvelles features, seeds multiples, route webhook corrigée, scripts, routes utiles
- `AUDIT-1.0.md` — supprimé (audit 2026-03-16 archivé dans ce fichier)
- `CHANGELOG.md` — création de ce fichier

---

## [2026-03-17] — Intégration Mocca + voix sur les corrections

- `components/mascot/mocca.tsx` — création de la mascotte Mocca (3 états : happy, neutral, grumpy) avec images PNG
- `public/mocca-happy.png`, `public/mocca-neutral.png`, `public/mocca-grumpy.png` — assets mascotte ajoutés
- `features/exercises/components/exercise-player.tsx` — intégration Mocca + feedback vocal (Web Speech API) sur chaque correction

---

## [2026-03-16] — Audit v1.0 — 30+ corrections appliquées

### Technique
- `lib/env.ts` — (C6) `Number(...) || 20` : corrige le bypass NaN sur le quota gratuit
- `lib/supabase/admin.ts`, `types/database.ts` — (C7) client admin typé `createClient<Database>`
- `features/exercises/server/queries.ts` — (C1) `unstable_cache` 1h + tag "exercises" sur `getExercises()`
- `features/exercises/server/queries.ts` — (I8) maps `SUBDOMAIN_INTRO` + `SUBDOMAIN_KEYPOINTS` : metadata spécifiques par sous-domaine
- `features/exercises/server/actions.ts` — (A6) `revalidatePath("/abonnement")` supprimé de `submitAttemptAction`
- `features/auth/server/guards.ts`, `features/billing/server/queries.ts` — (I4) `cache()` React sur `getAuthUser` et `getUserSubscription`
- `features/dashboard/server/queries.ts` — (I6) `.limit(500)` sur la requête `attempts`
- `app/(marketing)/layout.tsx` — (I7) `SiteHeader` monté dans le layout marketing, retiré des 5 pages individuelles

### UI/UX
- `components/app-shell.tsx`, `components/site-footer.tsx` — (U2) branding unifié "CRPE Français"
- `components/app-navigation.tsx` — (C3+U7) nav redirige `/ressources` → `/ressources/glossaire` ; label "Grammaire & Lexique"
- `components/app-shell.tsx` — (U1) `MobileNav` (Sheet Radix) + hamburger dans le header ; sidebar cachée < xl
- `app/(app)/profil/page.tsx` — (U5) UUID Supabase retiré
- `components/site-footer.tsx` — (U4) icônes sociales mortes supprimées
- `app/(marketing)/offre/page.tsx` — (U6) plan gratuit intégré dans la grille `lg:grid-cols-4`
- `app/(app)/tableau-de-bord/page.tsx` — (I1) note développeur supprimée

### Pédagogie
- `features/exercises/components/exercise-player.tsx` — (P2) axes de reprise groupés par sous-domaine avec comptage d'erreurs
- `features/exercises/components/exercise-player.tsx` — (P4) `renderFeedbackBody` affiche `detailed_explanation` sur les bonnes réponses
- `content/french-diagnostic-questions.ts` — (P5) hrefs post-diagnostic enrichis `?subdomain=X` ; accents corrigés
- `lib/dashboard.ts`, `features/dashboard/components/session-progress-card.tsx` — (A4) `MASTERY_THRESHOLD = 85` exporté et affiché

### Contenu
- `app/(app)/ressources/page.tsx` — (C4a) 7 accents manquants corrigés
- `app/(app)/diagnostic/page.tsx` — (C4b) 2 accents manquants corrigés
- `app/(app)/ressources/glossaire/page.tsx` — (A3) glossaire enrichi : 42 → 100 termes, 13 → 18 lettres

### Performance / nettoyage
- `package.json`, `components/marketing/reveal.tsx` — (I9) `framer-motion` désinstallé ; `FadeIn` réécrit IntersectionObserver + CSS
- `package.json`, `features/homepage/components/renderer.tsx` — (A8) `react-wrap-balancer` désinstallé ; `text-balance` Tailwind
- `tailwind.config.ts` — (A2) 3 tokens `backgroundImage` ajoutés ; 5 gradients hardcodés remplacés

### Stripe
- `app/api/_stripe/checkout/route.ts`, `app/api/_stripe/webhook/route.ts` — (C5) webhook one-time : `price_id` dans metadata, `computePeriodEnd` pour daily/weekly, handler `mode:"payment"`
- `app/api/_stripe/checkout/route.ts`, `app/api/_stripe/portal/route.ts` — (I11) `try/catch` ajouté → réponse JSON 502 au lieu de 500 vide
