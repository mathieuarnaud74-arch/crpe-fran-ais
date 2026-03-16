# AUDIT TECHNIQUE, UI/UX ET PÉDAGOGIQUE — v1.0
**Date :** 2026-03-16
**Périmètre :** CRPE Français — Next.js 15 / React 19 / Supabase / Stripe
**Statut global :** Corrections en cours (mise à jour 1.0)

---

## LÉGENDE

| Symbole | Signification |
|---|---|
| 🔴 CRITIQUE | Bloquant — impact sécurité, données, conversion ou crédibilité |
| 🟠 IMPORTANT | À traiter avant lancement public sérieux |
| 🟡 AMÉLIORATION | Qualité, cohérence, dette technique |
| ✅ CORRIGÉ | Correction appliquée et vérifiée |
| ⏳ EN COURS | Correction en cours d'application |

---

## TABLEAU PRINCIPAL — CORRECTIONS PRIORITAIRES

| ID | Gravité | Catégorie | Problème | Fichier(s) concerné(s) | Effort | Statut |
|---|---|---|---|---|---|---|
| C6 | 🔴 | Technique | `FREE_DAILY_QUESTION_LIMIT` retourne `NaN` si variable vide → accès gratuit illimité | `lib/env.ts:27` | 2 min | ✅ |
| C4a | 🔴 | Contenu | Accents manquants page Ressources : "Reperes", "syntheses", "reviser", "Francais", "definitions" | `app/(app)/ressources/page.tsx:17-18` | 5 min | ✅ |
| C4b | 🔴 | Contenu | Accents manquants diagnostic : "% de reussite", "questions tirees" | `app/(app)/diagnostic/page.tsx:228,230` | 2 min | ✅ |
| I1 | 🔴 | UI/UX | Note développeur visible en production : "Vue courte : le détail complet est déplacé vers la page dédiée." | `app/(app)/tableau-de-bord/page.tsx:63` | 2 min | ✅ |
| U2 | 🔴 | Branding | Deux noms de marque différents : "CRPE Français" (marketing) vs "Prépa CRPE" (app) | `components/site-header.tsx`, `components/app-shell.tsx` | 15 min | ✅ |
| U4 | 🟠 | UI/UX | Liens sociaux morts (`href="#"`) dans le footer — signal d'amateurisme | `components/site-footer.tsx` | 5 min | ✅ |
| U5 | 🟠 | UI/UX | UUID Supabase brut exposé sur la page profil | `app/(app)/profil/page.tsx` | 2 min | ✅ |
| P1 | 🔴 | Pédagogie | Estimation temps "Plan du jour" : `plan.length * 12` hardcodé au lieu de `session.estimatedMinutes` | `app/(app)/revisions-ciblees/page.tsx:195` | 5 min | ✅ |
| C3 | 🔴 | Contenu | Page Ressources entièrement vide (7 sections "Fiche en cours de reconstruction") accessible aux utilisateurs payants | `app/(app)/ressources/page.tsx` + navigation | 15 min (masquage) | ✅ |
| I11 | 🟠 | Technique | Pas de `try/catch` sur les routes Stripe checkout/portal → 500 sans corps JSON | `app/api/_stripe/checkout/route.ts`, `portal/route.ts` | 30 min | ✅ |
| C7 | 🔴 | Technique | Clients Supabase typés `any` — `types/database.ts` inutilisé, zéro vérification TypeScript sur les requêtes DB | `lib/supabase/server.ts`, `lib/supabase/admin.ts` | 1h | ✅ |
| A9 | 🟡 | Technique | Fichier zombie : `features/exercises/server/evaluation.ts` ne fait que re-exporter `shared/evaluation.ts` | `features/exercises/server/evaluation.ts` | 5 min | ✅ |
| U7 | 🟡 | UI/UX | Label nav sidebar trop long : "Grammaire · Conjugaison · Lexique" → tronqué sur certains écrans | `components/app-navigation.tsx` | 5 min | ✅ |
| A1 | 🟡 | Technique | `.filter(Boolean).join(" ")` au lieu de `cn()` dans plusieurs composants locaux (incohérence convention) | `tableau-de-bord/page.tsx`, `progression/page.tsx`, `glossaire/page.tsx` | 20 min | ✅ |
| C1 | 🔴 | Performance | `getExercises()` charge tout le catalogue à chaque requête, sans cache — scalabilité critique | `features/exercises/server/queries.ts` | 2h | ✅ |
| U1 | 🔴 | UI/UX | Navigation mobile absente dans l'app shell (sidebar invisible < 1280px, aucun fallback) | `components/app-shell.tsx` | 3-4h | ✅ |

---

## TABLEAU SECONDAIRE — CORRECTIONS STRUCTURELLES (Phase 2+)

| ID | Gravité | Catégorie | Problème | Fichier(s) concerné(s) | Effort | Statut |
|---|---|---|---|---|---|---|
| C2 | 🔴 | Technique | IDs de sessions générés dynamiquement — fragiles, cassent l'historique si exercices réorganisés | `features/exercises/server/queries.ts:141-184` | Jours | ⏳ |
| C5 | 🔴 | Paiement | Webhook Stripe incomplet pour les achats one-time (journalier/semainier) | `app/api/_stripe/webhook/route.ts` | 2h | ✅ |
| I2 | 🟠 | Pédagogie | Diagnostic non persisté en base — localStorage uniquement, perdu cross-device | `app/(app)/diagnostic/page.tsx`, `lib/diagnostic-storage.ts` | Jours | ⏳ |
| I4 | 🟠 | Performance | `requireUser()` + `isPremiumUser()` séquentiels sur chaque page protégée — à paralléliser | Pages `(app)/` | 30 min | ✅ |
| I6 | 🟠 | Performance | Requête `attempts` sans LIMIT dans le dashboard — charge croissante sans limite | `features/dashboard/server/queries.ts:15-19` | 5 min | ✅ |
| I7 | 🟠 | Technique | Page `/offre` importe `SiteHeader` manuellement (risque double header si layout modifié) | `app/(marketing)/offre/page.tsx` | 15 min | ✅ |
| I8 | 🟠 | Pédagogie | Sessions auto-générées avec metadata 100% générique (même objectif, intro, completionSummary pour toutes) | `features/exercises/server/queries.ts:151-181` | Moyen | ✅ |
| I9 | 🟡 | Performance | `motion` (Framer Motion v12, ~47KB) utilisé uniquement pour `FadeIn` — remplaçable par CSS Tailwind | `package.json`, `components/marketing/reveal.tsx` | 1h | ✅ |
| U3 | 🟠 | Conversion | Page `/abonnement` (in-app) moins convaincante que `/offre` (marketing) — même chemin d'upgrade | `app/(app)/abonnement/page.tsx` | 2h | ⏳ |
| U6 | 🟡 | UI/UX | Plan gratuit hors de la grille de comparaison sur `/offre` — peu lisible vs plans payants | `app/(marketing)/offre/page.tsx:86-102` | 1h | ✅ |
| A2 | 🟡 | Design | Gradients inline non-tokénisés (`bg-[linear-gradient(...)]` hardcodés) | `progression/page.tsx:45`, `revisions-ciblees/page.tsx:163` | 20 min | ✅ |
| A3 | 🟡 | Contenu | Glossaire incomplet — lettres B, E, J, K, O, Q, R, T, U, W, X, Y, Z absentes | `app/(app)/ressources/glossaire/page.tsx` | Jours (contenu) | ✅ |
| A4 | 🟡 | Pédagogie | Seuil de maîtrise (85%) invisible aux utilisateurs | `lib/dashboard.ts:92`, pages progression | 30 min | ✅ |
| A5 | 🟡 | Pédagogie | Aucune gradation de difficulté dans l'ordre des exercices au sein d'une série | `features/exercises/server/queries.ts:196` | Moyen | ⏳ |
| A6 | 🟡 | Performance | `revalidatePath("/abonnement")` appelé inutilement après chaque réponse d'exercice | `features/exercises/server/actions.ts:88-93` | 2 min | ✅ |
| A8 | 🟡 | Performance | `react-wrap-balancer` remplaçable par CSS natif `text-wrap: balance` | `package.json` | 30 min | ✅ |
| P2 | 🟠 | Pédagogie | "Axes de reprise" = liste d'instructions brutes, pas d'axes pédagogiques réels | `features/exercises/components/exercise-player.tsx:54-57` | 30 min | ✅ |
| P3 | 🟠 | Pédagogie | Statut "maîtrisée" figé sans décroissance temporelle — acquis jamais remis en question | `lib/dashboard.ts:137-155` | Jours | ⏳ |
| P4 | 🟠 | Pédagogie | Feedback sur réponse correcte = `null` — aucun ancrage pédagogique après une bonne réponse | `features/exercises/components/exercise-player.tsx:143-145` | 1h | ✅ |
| P5 | 🟠 | Pédagogie | Post-diagnostic : `conjugaison` et `lexique` redirigent vers `/francais/grammaire` sans explication | `content/french-diagnostic-questions.ts` | 15 min | ✅ |
| P6 | 🟡 | Pédagogie | Glossaire orphelin — aucun lien depuis les exercices ni les corrections | Multiple | 2h | ⏳ |
| P7 | 🟡 | Pédagogie | Fiabilité diagnostique faible (1-2 questions/sous-domaine, marge d'erreur > 50%) | `content/french-diagnostic-questions.ts` | Moyen | ⏳ |

---

## SYNTHÈSE PAR AXE

| Axe | Nb critiques | Nb importants | Nb améliorations | État global |
|---|---|---|---|---|
| Technique | 4 | 5 | 5 | ⚠️ Zones fragiles ciblées |
| UI / UX | 3 | 4 | 5 | ⚠️ Mobile bloquant, finitions |
| Pédagogie | 2 | 5 | 3 | ⚠️ Base solide, approfondissement requis |
| Contenu | 2 | 1 | 2 | 🔴 Ressources vides urgentes |

---

## HISTORIQUE DES CORRECTIONS

| Date | ID | Description | Résultat |
|---|---|---|---|
| 2026-03-16 | A3 | Glossaire : 42 → 100 termes, 13 → 18 lettres ; lettres B, E, O, R, T ajoutées ; 58 nouveaux termes | `app/(app)/ressources/glossaire/page.tsx` |
| 2026-03-16 | I9 | `motion` désinstallé ; `FadeIn` réécrit avec IntersectionObserver + CSS transitions natifs | `components/marketing/reveal.tsx`, `package.json` |
| 2026-03-16 | I8 | `SUBDOMAIN_INTRO` + `SUBDOMAIN_KEYPOINTS` maps : intro/objectif/keyPoints spécifiques par sous-domaine | `features/exercises/server/queries.ts` |
| 2026-03-16 | C6 | `Number(...) \|\| 20` — corrige le bypass NaN sur le quota gratuit | `lib/env.ts` |
| 2026-03-16 | C4a | 7 accents manquants corrigés sur la page Ressources | `app/(app)/ressources/page.tsx` |
| 2026-03-16 | C4b | 2 accents manquants corrigés sur la page Diagnostic | `app/(app)/diagnostic/page.tsx` |
| 2026-03-16 | I1 | Note développeur supprimée du tableau de bord | `app/(app)/tableau-de-bord/page.tsx` |
| 2026-03-16 | U2 | Branding unifié "CRPE Français" + sous-titre cohérent | `components/app-shell.tsx`, `site-footer.tsx` |
| 2026-03-16 | U4 | Icônes sociales mortes supprimées du footer | `components/site-footer.tsx` |
| 2026-03-16 | U5 | UUID Supabase retiré de la page profil | `app/(app)/profil/page.tsx` |
| 2026-03-16 | P1 | Estimation temps calculée depuis `estimatedMinutes` réels | `app/(app)/revisions-ciblees/page.tsx` |
| 2026-03-16 | C3+U7 | Nav redirige `/ressources` → `/ressources/glossaire` ; label "Grammaire & Lexique" raccourci | `components/app-navigation.tsx` |
| 2026-03-16 | I11 | `try/catch` ajouté sur les routes Stripe checkout et portal → 502 JSON au lieu de 500 vide | `app/api/_stripe/checkout/route.ts`, `portal/route.ts` |
| 2026-03-16 | C7 | Client admin typé `createClient<Database>` + `Relationships:[]` sur toutes les tables. Note : `createServerClient<Database>` incompatible avec `@supabase/ssr@0.5.2` vs `supabase-js@2.49` | `lib/supabase/admin.ts`, `types/database.ts` |
| 2026-03-16 | A9 | Fichier zombie `evaluation.ts` supprimé | `features/exercises/server/evaluation.ts` |
| 2026-03-16 | A1 | `.filter(Boolean).join(" ")` → `cn()` dans 4 composants locaux | `tableau-de-bord`, `progression`, `revisions-ciblees`, `glossaire` |
| 2026-03-16 | C1 | `unstable_cache` (1h + tag "exercises") sur `getExercises()` — arrête la requête catalogue à chaque hit | `features/exercises/server/queries.ts` |
| 2026-03-16 | U1 | `MobileNav` (Sheet Radix left-side) + bouton hamburger dans le header ; sidebar cachée < xl | `components/mobile-nav.tsx`, `app-shell.tsx` |
| 2026-03-16 | A6 | `revalidatePath("/abonnement")` supprimé de `submitAttemptAction` | `features/exercises/server/actions.ts` |
| 2026-03-16 | I6 | `.limit(500)` ajouté sur la requête `attempts` du dashboard | `features/dashboard/server/queries.ts` |
| 2026-03-16 | I7 | `SiteHeader` monté dans le layout marketing ; retiré des 5 pages individuelles | `app/(marketing)/layout.tsx`, pages marketing |
| 2026-03-16 | P5 | Hrefs post-diagnostic enrichis avec `?subdomain=X` ; accents corrigés sur labels | `content/french-diagnostic-questions.ts` |
| 2026-03-16 | I4 | `getAuthUser` encapsulé avec React `cache()` ; `getUserSubscription` idem — déduplique les appels layout+page | `features/auth/server/guards.ts`, `features/billing/server/queries.ts` |
| 2026-03-16 | A8 | `react-wrap-balancer` désinstallé ; `text-balance` Tailwind sur les 6 titres concernés | `features/homepage/components/renderer.tsx` |
| 2026-03-16 | A2 | 3 tokens `backgroundImage` ajoutés au config Tailwind ; 5 gradients hardcodés remplacés | `tailwind.config.ts`, pages `(app)/` |
| 2026-03-16 | P2 | "Axes de reprise" groupés par sous-domaine avec comptage d'erreurs | `features/exercises/components/exercise-player.tsx` |
| 2026-03-16 | P4 | `renderFeedbackBody` affiche `detailed_explanation` sur les bonnes réponses | `features/exercises/components/exercise-player.tsx` |
| 2026-03-16 | A4 | `MASTERY_THRESHOLD = 85` exporté ; affiché dans SessionProgressCard (séries "à revoir") et progression | `lib/dashboard.ts`, `session-progress-card.tsx`, `progression/page.tsx` |
| 2026-03-16 | U6 | Plan gratuit intégré dans la grille `lg:grid-cols-4` avec les plans payants | `app/(marketing)/offre/page.tsx` |
| 2026-03-16 | C5 | Webhook : `price_id` dans métadonnées checkout ; `computePeriodEnd` force 1j/7j pour daily/weekly ; handler `mode:"payment"` ajouté | `app/api/_stripe/checkout/route.ts`, `webhook/route.ts` |
