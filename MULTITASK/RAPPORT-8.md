# Rapport Agent 8 — Constants, types & nettoyage

## Statut : ✅ Terminé

## Fichiers créés
- `lib/pricing.ts` — constantes tarifaires (prix day/week/month, limites gratuites, labels plans)
- `lib/crpe-context.ts` — chaînes CRPE réutilisables (nom examen, matière, public, contextes par sous-domaine)

## Fichiers modifiés
- `lib/constants.ts` — 3 constantes ajoutées : `EXERCISE_TYPES` (liste ordonnée), `PROGRESS_STATUS_LABELS` (labels des statuts de progression), `ACCESS_TIER_LABELS` (labels free/premium) + import `ProgressStatus`
- `types/domain.ts` — 2 types ajoutés : `AnswerMode` (union des modes de réponse), `BadgeCategory` (catégories de badges) + JSDoc sur tous les types principaux + `EarnedBadge.category` utilise désormais `BadgeCategory`

## Problèmes rencontrés
- 2 erreurs TypeScript pré-existantes (non liées à mes changements) : `domain-gauge.tsx` (overload mismatch) et `onboarding-tour.tsx` (module CSS driver.js introuvable)
- Pas de fichier `app/(app)/exercices/[id]/page.tsx` trouvé via glob pattern `app/(app)/exercices/[id]/page.tsx` mais trouvé via `app/(app)/exercices/**/page.tsx` (problème de crochets dans le pattern)

## Handoffs (HANDOFF-8.md)
- 15+ emplacements listés dans `MULTITASK/HANDOFF-8.md` qui doivent importer les nouvelles constantes
- Fichiers principaux concernés : `exercices/[id]/page.tsx`, `offre/page.tsx`, `abonnement/page.tsx`, `layout.tsx`, `tableau-de-bord/page.tsx`, `onboarding-tour.tsx`

## Résumé chiffré
- 13 constantes créées dans `lib/pricing.ts` (PRICING object)
- 6 constantes créées dans `lib/crpe-context.ts` (CRPE_CONTEXT + CRPE_SUBDOMAIN_CONTEXT)
- 3 constantes ajoutées dans `lib/constants.ts`
- 2 types ajoutés dans `types/domain.ts` (AnswerMode, BadgeCategory)
- 8 types enrichis avec JSDoc dans `types/domain.ts`
- ~15 fichiers à brancher (listés dans HANDOFF-8.md)
