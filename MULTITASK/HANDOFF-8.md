# Handoff Agent 8 — Fichiers à mettre à jour (hors de ma zone)

Les fichiers ci-dessous utilisent des valeurs hardcodées qui devraient importer les nouvelles constantes de `lib/pricing.ts`, `lib/crpe-context.ts` et `lib/constants.ts`.

---

## `lib/pricing.ts` — Constantes tarifaires

### PRICING.DAY_PASS_PRICE (`"0,99 €"`)
- `app/(app)/exercices/[id]/page.tsx:101` — remplacer `"accès illimité dès 0,99 €"` par interpolation avec `PRICING.DAY_PASS_PRICE`
- `app/(app)/exercices/[id]/page.tsx:110` — remplacer `"accès 24 h pour 0,99 €"` par interpolation avec `PRICING.DAY_PASS_PRICE`
- `app/(marketing)/offre/page.tsx:12` — remplacer `price: "0,99 €"` par `price: PRICING.DAY_PASS_PRICE`
- `app/(app)/abonnement/page.tsx:24` — remplacer `price: "0,99 €"` par `price: PRICING.DAY_PASS_PRICE`

### PRICING.WEEK_PASS_PRICE (`"2,99 €"`)
- `app/(marketing)/offre/page.tsx:26` — remplacer `price: "2,99 €"` (dans le plan semainier)
- `app/(app)/abonnement/page.tsx:31` — remplacer `price: "2,99 €"` (dans paidPlans)

### PRICING.MONTHLY_PRICE / MONTHLY_PRICE_SHORT
- `app/(marketing)/offre/page.tsx:40` — remplacer `price: "6,99 €"` par `PRICING.MONTHLY_PRICE_SHORT`
- `app/(app)/abonnement/page.tsx:38` — remplacer `price: "6,99 €/mois"` par `PRICING.MONTHLY_PRICE`

### PRICING.FREE_DAILY_LIMIT_LABEL (`"20 questions corrigées par jour"`)
- `app/(app)/exercices/[id]/page.tsx:107` — remplacer `"20 questions corrigées"` par `PRICING.FREE_DAILY_LIMIT_LABEL`
- `app/(marketing)/offre/page.tsx:73` — remplacer `"20 questions corrigées par jour"` dans le texte
- `app/(marketing)/offre/page.tsx:92` — remplacer `"20 questions corrigées par jour"` dans le tableau features

### PRICING.DEFAULT_DAILY_GOAL (`20`)
- `app/(app)/layout.tsx:33` — remplacer `daily_goal: 20` par `daily_goal: PRICING.DEFAULT_DAILY_GOAL`
- `app/(app)/tableau-de-bord/page.tsx:197` — remplacer `daily_goal: 20` par `PRICING.DEFAULT_DAILY_GOAL`

---

## `lib/crpe-context.ts` — Contexte CRPE

### CRPE_SUBDOMAIN_CONTEXT
- `app/(app)/exercices/[id]/page.tsx:20-27` — remplacer la constante locale `CRPE_CONTEXT` par un import de `CRPE_SUBDOMAIN_CONTEXT` depuis `@/lib/crpe-context`

### CRPE_CONTEXT.EXAM_NAME / EXAM_FULL_NAME
- `app/(app)/tableau-de-bord/page.tsx:8` — utiliser `CRPE_CONTEXT.EXAM_NAME` dans la description metadata
- `features/onboarding/components/onboarding-tour.tsx:32,66,81` — utiliser `CRPE_CONTEXT.PLATFORM_NAME` / `CRPE_CONTEXT.EXAM_NAME` dans les textes d'onboarding

---

## `lib/constants.ts` — Constantes enrichies

### ACCESS_TIER_LABELS
- `app/(app)/exercices/[id]/page.tsx:77` — remplacer `session.access_tier === "premium" ? "Premium" : "Gratuit"` par `ACCESS_TIER_LABELS[session.access_tier]`

### PROGRESS_STATUS_LABELS
- `app/(app)/francais/[domain]/page.tsx` — si des labels de ProgressStatus sont hardcodés, les remplacer

### EXERCISE_TYPES
- Utile pour toute boucle ou validation sur les types d'exercices
