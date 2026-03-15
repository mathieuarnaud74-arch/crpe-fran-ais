# CRPE Français MVP

MVP freemium centré uniquement sur le **Français du CRPE**, construit avec `Next.js App Router`, `TypeScript strict`, `Supabase` et `Stripe`.

## Fonctionnalités incluses

- landing page claire avec offre gratuite et premium
- inscription / connexion par email et mot de passe
- tableau de bord utilisateur
- banque d'exercices Français CRPE
- quota gratuit limité à `20` tentatives corrigées par jour
- accès premium illimité
- correction immédiate avec explication
- historique des tentatives et scores
- checkout Stripe, abonnement mensuel, portail client et webhook
- pages légales minimales

## Stack

- `Next.js` App Router
- `TypeScript` strict
- `Tailwind CSS`
- `Supabase` Auth + PostgreSQL
- `Stripe`

## Variables d’environnement

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

- `NEXT_PUBLIC_DEMO_MODE=auto` : mode démo activé automatiquement si Supabase n’est pas configuré
- `NEXT_PUBLIC_DEMO_MODE=true` : force le mode démo local
- `NEXT_PUBLIC_DEMO_MODE=false` : force l’usage des services réels

Si Stripe n’est pas configuré, l’interface affiche un placeholder explicite sur la page `abonnement`.

## Démo locale immédiate

Pour visualiser le projet sans Supabase ni Stripe :

```powershell
Set-Content .env.local "NEXT_PUBLIC_APP_URL=http://localhost:3000"
Add-Content .env.local "NEXT_PUBLIC_DEMO_MODE=true"
Add-Content .env.local "FREE_DAILY_QUESTION_LIMIT=20"
npm.cmd install
npm.cmd run dev
```

Le mode démo fournit :

- un utilisateur local simulé
- une banque d’exercices intégrée au projet
- un historique d’exemple
- un dashboard d’exemple
- une page abonnement navigable avec état simulé

Les formulaires connexion / inscription redirigent vers l’interface de démonstration sans créer de compte réel.

## Installation

Sous PowerShell Windows, utilisez `npm.cmd` si `npm.ps1` est bloqué par la policy d’exécution.

```bash
npm.cmd install
```

## Lancement

```bash
npm.cmd run dev
```

Application locale :

```text
http://localhost:3000
```

Routes utiles en local :

- `/`
- `/connexion`
- `/inscription`
- `/tableau-de-bord`
- `/exercices`
- `/exercices/demo-grammaire-qcm`
- `/historique`
- `/abonnement`

## Mise en place Supabase

1. Créer un projet Supabase.
2. Activer l’authentification email / mot de passe.
3. Exécuter la migration SQL située dans [supabase/migrations/20260311_init.sql](/c:/Users/mathi/OneDrive/Bureau/CODE%20CRPE/supabase/migrations/20260311_init.sql).
4. Injecter le seed situé dans [supabase/seed.sql](/c:/Users/mathi/OneDrive/Bureau/CODE%20CRPE/supabase/seed.sql).

Le seed fournit :

- 14 exercices
- 2 exercices par sous-domaine
- un mélange d’accès `free` et `premium`
- tous les types d’exercice demandés dans le périmètre V1

## Mise en place Stripe

1. Créer un produit Stripe pour l’abonnement mensuel premium.
2. Renseigner `STRIPE_PRICE_PREMIUM_MONTHLY_ID`.
3. Configurer le webhook Stripe vers :

```text
http://localhost:3000/api/stripe/webhook
```

4. Écouter au minimum :
- `checkout.session.completed`
- `customer.subscription.created`
- `customer.subscription.updated`
- `customer.subscription.deleted`

Important :

- la route checkout crée une session d’abonnement mensuel
- la page abonnement ouvre ensuite le portail client Stripe
- la synchronisation d’état premium repose sur le webhook

## Arborescence principale

```text
app/
components/
features/
lib/
types/
supabase/
```

## Vérifications recommandées

Après installation et configuration :

```bash
npm.cmd run typecheck
npm.cmd run lint
npm.cmd run build
```

## Limites volontaires de la V1

- aucune autre matière que le Français dans l’interface
- pas de back-office d’édition
- pas de pass 7 jours actif
- pas de gamification
- pas de forum

## Déploiement cible

- `Vercel` pour l’application Next.js
- `Supabase` pour Auth et PostgreSQL
- `Stripe` pour les abonnements
