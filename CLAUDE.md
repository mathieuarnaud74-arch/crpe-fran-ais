# CLAUDE.md — CRPE Prep

## Projet

Plateforme de révision pour le CRPE (Certificat de Recrutement des Professeurs des Écoles).
Matière couverte : **Français**.
Modèle : accès gratuit limité (20 questions/jour) + abonnement premium (Stripe).

---

## Stack

| Couche | Technologie |
|---|---|
| Framework | Next.js 15 (App Router) |
| React | 19 |
| Language | TypeScript 5 strict |
| CSS | Tailwind CSS 3 + tokens custom |
| Base de données | Supabase (Postgres) |
| Auth | Supabase SSR (`@supabase/ssr`) |
| Paiement | Stripe |
| UI primitives | Radix UI (Accordion, Dialog, Label, Select, Separator) |
| Variants | class-variance-authority (CVA) |
| Icônes | lucide-react |
| Notifications | sonner |
| Progress bar | nextjs-toploader |
| Tests | Vitest + Storybook 10 |

---

## Commandes

```bash
npm run dev                          # serveur local
npm run build                        # build production
npm run typecheck                    # tsc --noEmit
npm run lint                         # eslint
npm run storybook                    # Storybook sur :6006
npm run generate:french-module-seed  # génère le seed SQL du module français
```

---

## Structure des routes (App Router)

```
app/
  (marketing)/       # pages publiques : /, /offre, /cgu, /mentions-legales...
  (auth)/            # /connexion, /inscription
  (app)/             # pages protégées : /tableau-de-bord, /francais, /diagnostic...
  admin/
    homepage/
      preview/       # prévisualisation de la page d'accueil (admin)
  api/
    diagnostic/
      complete/      # POST — finalise et persiste un diagnostic
    _stripe/
      checkout/      # POST — crée une session Stripe
      portal/        # POST — portail client Stripe
      webhook/       # POST — événements Stripe (abonnement, paiement one-time)
```

Les layouts injectent `SiteHeader` et `SiteFooter` au niveau approprié.

---

## Structure des features

```
features/
  auth/              # guards, logout-button, auth-form
  billing/           # checkout-button
  dashboard/         # domain-summary-card, session-progress-card, learning-status-badge, collapsible-panel
  diagnostic/        # components/ (UI diagnostic), server/ (logique + persistance en base)
  exercises/         # exercise-player
  homepage/          # renderer, admin-shell, default-homepage
components/
  ui/                # button, badge, card, input, label, select, separator, textarea
  mascot/
    mocca.tsx        # mascotte Mocca — affichée dans les corrections (états : happy, neutral, grumpy)
  site-header.tsx
  site-footer.tsx
  app-shell.tsx
  app-navigation.tsx
```

---

## Design system

### Palette (tailwind.config.ts)

| Token | Valeur | Usage |
|---|---|---|
| `paper` | #F5F1E8 | Fond body principal |
| `secondary` | #EAE4D8 | Fonds alternatifs, footer |
| `card` | #FDF9F3 | Cartes, panneaux |
| `surface` | #FFFDF9 | Surfaces très claires |
| `ink` | #2C2420 | Texte principal |
| `muted` | #6B534A | Texte secondaire |
| `border` | #D8D2C6 | Bordures |
| `accent` | #476257 | Vert — CTA principal |
| `accentDark` | #394E45 | Vert hover |
| `accentSecondary` | #A46849 | Terracotta — badges, highlights |
| `accentSecondaryDark` | #7E4E36 | Terracotta foncé |
| `accentSecondarySoft` | #F1E0D5 | Fond badge terracotta |

### Typographie

- **Sans** : `"Avenir Next"`, `"Segoe UI"` → `font-sans`
- **Serif** : `"Iowan Old Style"`, `"Palatino Linotype"` → `font-serif` (titres, valeurs larges)

### Border-radius tokens

`rounded-inner` (1.1rem) · `rounded-card` (1.25rem) · `rounded-panel` (1.5rem) · `rounded-shell` (1.75rem) · `rounded-pill` (2rem)

### Shadows

`shadow-subtle` · `shadow-panel` · `shadow-elevated`

---

## Composants UI — conventions d'usage

### Button / ButtonLink

```tsx
// Variants : primary | secondary | ghost | destructive
// Sizes    : default | sm | lg | icon
<Button variant="primary">CTA</Button>
<ButtonLink href="/page" variant="secondary" size="sm">Lien</ButtonLink>
```

### Badge

```tsx
// Tones : neutral | accent | accentSecondary | success | warning | error
// Sizes : md | sm
<Badge tone="accentSecondary">Diagnostic</Badge>
```

### Patterns récurrents

```tsx
// Label de section
<p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Titre</p>

// Carte standard
<div className="rounded-[1.85rem] border border-border p-6 shadow-panel bg-card">

// Tag pill
<span className="rounded-full border border-border bg-paper px-3 py-2 text-sm text-ink">

// Largeur max du contenu
<div className="mx-auto max-w-6xl px-6">
```

---

## Base de données (Supabase)

Table principale : `public.exercises`

| Colonne | Type | Notes |
|---|---|---|
| `id` | uuid | Format série : `XXXXXXXX-0000-0000-0000-00000000000N` |
| `subject` | text | `Francais` |
| `subdomain` | text | clé de sous-domaine |
| `topic_key` | text | identifiant de série |
| `exercise_type` | text | `qcm`, `reponse_courte`, `vrai_faux` |
| `choices` | jsonb | `[{id, label}]` pour QCM |
| `expected_answer` | jsonb | `{mode, value/acceptableAnswers}` |
| `access_tier` | text | `free` ou `premium` |
| `is_published` | bool | |

Table secondaire : `public.diagnostic_results` — persiste les résultats du diagnostic par utilisateur.

---

## UI/Design Guidelines

When making UI/design changes, make bold, meaningful improvements — not marginal tweaks. If changing colors or layouts, ensure the difference is visually significant and professional-quality.

---

## Content & Copy

When editing content or copy, use compelling marketing language with real benefits and CTAs — not generic or technical descriptions.

---

## Safety Rules

- Before deleting any files, always list the files you plan to remove and get explicit confirmation. Never delete content/data files without asking first.
- If a tool or approach fails twice with the same error, stop retrying and suggest an alternative approach or ask the user how to proceed.

---

## Workflow Preferences

When asked to audit or review code, apply fixes directly rather than producing lengthy reports. Bias toward action over analysis unless explicitly asked for a report.

---

## Conventions de code

- Pas de `default export` pour les composants partagés — utiliser les named exports.
- Alias d'import : `@/` → racine du projet.
- `cn()` de `@/lib/utils` pour merger les classes Tailwind (clsx + tailwind-merge).
- Pas de commentaires dans le JSX sauf logique non évidente.
- Pas d'inline styles sauf si un token Tailwind n'existe pas pour la valeur exacte.
- Laisser les Server Components async — ne passer en `"use client"` que si nécessaire.

---

## Changelog

À la fin de **chaque session** ayant modifié du code, l'agent doit ajouter une entrée dans `CHANGELOG.md` avec :
- la date (format `YYYY-MM-DD`)
- une ligne par fichier modifié ou créé, avec le motif du changement

Format attendu :

```markdown
## [YYYY-MM-DD] — Description courte de la session

- `chemin/du/fichier.tsx` — ce qui a été fait et pourquoi
- `autre/fichier.ts` — idem
```

Voir `CHANGELOG.md` à la racine pour les entrées existantes.
