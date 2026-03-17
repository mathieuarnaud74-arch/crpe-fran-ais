# CRPE Français

Plateforme de révision freemium pour le **Français du CRPE**, construite avec `Next.js App Router`, `TypeScript strict`, `Supabase` et `Stripe`.

## Fonctionnalités

- Landing page avec offre gratuite et premium
- Inscription / connexion par email et mot de passe
- Tableau de bord utilisateur avec progression par domaine
- Banque d'exercices Français CRPE (QCM, réponse courte, vrai/faux)
- Quota gratuit limité à `20` tentatives corrigées par jour
- Accès premium illimité
- Correction immédiate avec explication détaillée
- Mascotte Mocca (réactions visuelles et voix sur les corrections)
- Système de diagnostic initial (persisté en base)
- Navigation mobile (drawer latéral)
- Historique des tentatives et scores
- Glossaire pédagogique
- Checkout Stripe, abonnement mensuel, passes journalier/semainier, portail client et webhook
- Admin : prévisualisation de la page d'accueil
- Pages légales

## Stack

- `Next.js 15` App Router
- `React 19`
- `TypeScript` strict
- `Tailwind CSS` avec design tokens custom
- `Supabase` Auth + PostgreSQL
- `Stripe`
- `Radix UI` (Accordion, Dialog, Label, Select, Separator)
- `sonner` (notifications)
- `nextjs-toploader` (barre de progression de navigation)

## Variables d'environnement

Créer un fichier `.env.local` à la racine :

```bash
NEXT_PUBLIC_APP_URL=http://localhost:3000
NEXT_PUBLIC_DEMO_MODE=auto

NEXT_PUBLIC_SUPABASE_URL=https://votre-projet.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=votre-anon-key
SUPABASE_SERVICE_ROLE_KEY=votre-service-role-key

STRIPE_SECRET_KEY=sk_test_...
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY=pk_test_...
STRIPE_WEBHOOK_SECRET=whsec_...
STRIPE_PRICE_PREMIUM_MONTHLY_ID=price_...

FREE_DAILY_QUESTION_LIMIT=20
```

Modes disponibles :

- `NEXT_PUBLIC_DEMO_MODE=auto` : mode démo activé automatiquement si Supabase n'est pas configuré
- `NEXT_PUBLIC_DEMO_MODE=true` : force le mode démo local
- `NEXT_PUBLIC_DEMO_MODE=false` : force l'usage des services réels

Si Stripe n'est pas configuré, l'interface affiche un placeholder explicite sur la page `abonnement`.

## Démo locale immédiate

Pour visualiser le projet sans Supabase ni Stripe :

```bash
echo "NEXT_PUBLIC_APP_URL=http://localhost:3000" > .env.local
echo "NEXT_PUBLIC_DEMO_MODE=true" >> .env.local
echo "FREE_DAILY_QUESTION_LIMIT=20" >> .env.local
npm install
npm run dev
```

## Installation

```bash
npm install
```

Sous PowerShell Windows, utiliser `npm.cmd` si `npm.ps1` est bloqué par la policy d'exécution.

## Lancement

```bash
npm run dev
```

Application locale : `http://localhost:3000`

Routes utiles en local :

- `/`
- `/connexion`
- `/inscription`
- `/tableau-de-bord`
- `/diagnostic`
- `/francais`
- `/francais/grammaire`
- `/ressources/glossaire`
- `/historique`
- `/abonnement`

## Scripts disponibles

```bash
npm run dev                          # serveur local
npm run build                        # build production
npm run typecheck                    # tsc --noEmit
npm run lint                         # eslint
npm run storybook                    # Storybook sur :6006
npm run generate:french-module-seed  # génère le seed SQL du module français
```

## Mise en place Supabase

1. Créer un projet Supabase.
2. Activer l'authentification email / mot de passe.
3. Exécuter les migrations SQL dans `supabase/migrations/` (dans l'ordre chronologique).
4. Injecter les seeds de contenu depuis `supabase/` :
   - `seed_content_grammaire*.sql`
   - `seed_content_conjugaison*.sql`
   - `seed_content_orthographe*.sql`
   - `seed_content_lexique*.sql`
   - `seed_content_comprehension_texte*.sql`
   - `seed_content_analyse_langue*.sql`
   - `seed_content_didactique*.sql`
   - `seed_content_french_module_v1.sql`

## Mise en place Stripe

1. Créer un produit Stripe pour l'abonnement mensuel premium.
2. Renseigner `STRIPE_PRICE_PREMIUM_MONTHLY_ID`.
3. Configurer le webhook Stripe vers :

```text
http://localhost:3000/api/_stripe/webhook
```

4. Écouter au minimum :
   - `checkout.session.completed`
   - `customer.subscription.created`
   - `customer.subscription.updated`
   - `customer.subscription.deleted`

Important :
- La route checkout crée une session (abonnement mensuel ou passe one-time)
- La page abonnement ouvre ensuite le portail client Stripe
- La synchronisation d'état premium repose sur le webhook

## Arborescence principale

```text
app/
  (marketing)/     # pages publiques
  (auth)/          # connexion, inscription
  (app)/           # pages protégées
  admin/           # outils admin
  api/             # routes API (diagnostic, stripe)
components/        # composants partagés (ui/, mascot/, shell...)
features/          # modules par domaine (auth, billing, dashboard, diagnostic, exercises, homepage)
lib/               # utilitaires, constantes, clients Supabase
content/           # séries de questions et diagnostic en TypeScript
types/             # types TypeScript (database, domain)
supabase/          # migrations et seeds SQL
```

## Vérifications recommandées

Après installation et configuration :

```bash
npm run typecheck
npm run lint
npm run build
```

## Déploiement cible

- `Vercel` pour l'application Next.js
- `Supabase` pour Auth et PostgreSQL
- `Stripe` pour les abonnements et passes
