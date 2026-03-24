# BeforeDeployment.md — Checklist de mise en production CRPE

> Plan d'action structuré en trois niveaux de priorité.
> **P1 = bloquant** — le site ne peut pas sortir sans ça.
> **P2 = avant le premier abonné payant** — peut sortir en accès gratuit, mais pas en Stripe live.
> **P3 = dans les 30 jours post-lancement** — dette acceptable à court terme.

---

## P1 — Bloquant avant tout lancement public

### 1.1 Stripe : connexion réelle

- [ ] Créer un compte Stripe (ou activer le compte existant en mode live)
- [ ] Créer les 3 produits Stripe (Daily 0,99€ / Weekly 2,99€ / Monthly 6,99€)
- [ ] Récupérer les vrais Price IDs et les injecter dans les variables d'environnement Vercel :
  - `STRIPE_SECRET_KEY` (live)
  - `NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY` (live)
  - `STRIPE_WEBHOOK_SECRET` (live)
  - `STRIPE_PRICE_PREMIUM_DAILY_ID`
  - `STRIPE_PRICE_PREMIUM_WEEKLY_ID`
  - `STRIPE_PRICE_PREMIUM_MONTHLY_ID`
- [ ] Enregistrer l'endpoint webhook Stripe sur l'URL de production (`/api/stripe/webhook`)
  - Événements à écouter : `checkout.session.completed`, `customer.subscription.created`, `customer.subscription.updated`, `customer.subscription.deleted`
- [ ] Tester le flow complet en mode live avec une vraie carte :
  1. Checkout → paiement → webhook reçu → `subscriptions` mis à jour → accès premium actif
  2. Annulation via portail → webhook → accès révoqué

**Fichiers concernés :** `lib/env.ts`, `app/api/stripe/webhook/route.ts`, `app/api/stripe/checkout/route.ts`

---

### 1.2 Variables d'environnement de production

- [ ] Vérifier qu'aucune variable ne contient encore un placeholder (`sk_test_placeholder`, `whsec_placeholder`, etc.)
- [ ] Variables Supabase : `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`, `SUPABASE_SERVICE_ROLE_KEY`
- [ ] Vérifier que `isStripeConfigured()` retourne `true` en production

---

### 1.3 Brute-force sur les routes d'authentification

**Problème :** `lib/rate-limit.ts` ne couvre pas `/connexion` ni `/inscription`. Un attaquant peut tenter des milliers de mots de passe sans limitation.

- [ ] Ajouter un rate-limit sur `POST /api/auth/*` ou dans la server action d'inscription/connexion
  - Limite suggérée : 10 tentatives / 15 minutes par IP
- [ ] Alternative rapide : activer la protection Supabase Auth (captcha ou rate-limit intégré dans le dashboard Supabase)

**Fichiers concernés :** `features/auth/server/actions.ts`, `lib/rate-limit.ts`

---

### 1.4 Pages légales : contenu exact et à jour

Les pages existent (`/cgu`, `/mentions-legales`, `/politique-confidentialite`) — vérifier leur contenu :

- [ ] **Mentions légales** : SIRET ou numéro d'entreprise si applicable, adresse réelle, contact email valide
- [ ] **CGU** : correspond exactement à l'offre actuelle (tarifs, quotas, conditions d'annulation)
- [ ] **Politique de confidentialité** : liste exacte des données collectées, durée de conservation, droits d'accès/suppression/export, base légale de chaque traitement
- [ ] Vérifier que la page `/politique-confidentialite` est liée depuis le footer et depuis le formulaire d'inscription (consentement explicite)

---

### 1.5 Test de suppression de compte complet

**Problème connu :** `deleteAccountAction()` supprime l'utilisateur Supabase, mais ne cancel pas l'abonnement Stripe actif. L'utilisateur peut donc disparaître de la base tout en continuant à être débité.

- [ ] Dans `deleteAccountAction()`, avant la suppression Supabase :
  1. Récupérer `stripe_subscription_id` depuis la table `subscriptions`
  2. Appeler `stripe.subscriptions.cancel(subscriptionId)` si actif
- [ ] Tester le cas : utilisateur avec abonnement actif → supprime son compte → abonnement Stripe résilié

**Fichier concerné :** `features/auth/server/actions.ts`

---

### 1.6 Accès premium : vérification du cas "abonnement expiré"

- [ ] Vérifier que `isPremiumUser()` retourne bien `false` quand `current_period_end` est dans le passé (déjà implémenté, mais à tester en conditions réelles)
- [ ] Vérifier que le retrait d'accès est immédiat après expiration (pas de cache stale côté serveur)

---

### 1.7 `npm run build` propre

- [ ] Lancer `npm run build` — zéro erreur TypeScript, zéro erreur de build
- [ ] Lancer `npm run typecheck` — zéro erreur
- [ ] Lancer les tests unitaires : `npx vitest run -c __tests__/vitest.unit.config.ts` — 201/201 tests verts

---

## P2 — Avant le premier abonné payant

### 2.1 Log des événements Stripe (billing_events)

**Problème :** si un webhook Stripe échoue ou est retraité, il n'y a aucune trace. En cas de désync, le débogage est aveugle.

- [ ] Créer une migration SQL : table `billing_events`
  ```sql
  CREATE TABLE billing_events (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    stripe_event_id text UNIQUE,
    event_type text NOT NULL,
    payload jsonb NOT NULL,
    processed_at timestamptz DEFAULT now(),
    error text
  );
  ```
- [ ] Dans `app/api/stripe/webhook/route.ts`, insérer chaque événement reçu avant traitement (idempotency sur `stripe_event_id`)
- [ ] Ajouter une RLS : `SELECT` admin seulement

---

### 2.2 Back-office minimal opérationnel

L'admin actuel ne permet que d'éditer la homepage. Le minimum pour ne pas bricoler en base lors du premier ticket support :

- [ ] Page `/admin/users` :
  - Recherche par email
  - Affichage du statut d'abonnement (`status`, `current_period_end`)
  - Bouton "Prolonger l'accès" (update manuel de `current_period_end`)
- [ ] Page `/admin/subscriptions` :
  - Liste des abonnements actifs avec date d'expiration
  - Lien vers le dashboard Stripe pour chaque `stripe_customer_id`

**Fichiers existants à étendre :** `app/admin/layout.tsx`, `features/auth/server/guards.ts` (requireAdmin déjà en place)

---

### 2.3 Gestion de l'échec de paiement (past_due)

**Problème :** si une carte expire ou un paiement Stripe échoue, l'abonnement passe en `past_due`. Ce statut n'est pas géré : l'utilisateur conserve l'accès.

- [ ] Dans `isPremiumUser()` (`features/billing/server/queries.ts`), ajouter `past_due` comme statut non-premium (ou premium avec grace period de 3 jours)
- [ ] Créer un email (via Stripe ou manuellement) qui notifie l'utilisateur en cas d'échec
- [ ] Tester le scenario : abonnement → carte refusée → `past_due` → accès coupé

---

### 2.4 Portail client Stripe accessible et fonctionnel

- [ ] Activer et configurer le Customer Portal dans le dashboard Stripe (logo, politique d'annulation, facturation)
- [ ] Tester `/api/stripe/portal` → redirection vers le portail → annulation → webhook → accès révoqué
- [ ] Vérifier que la page `/abonnement` affiche correctement le statut et le lien vers le portail

---

### 2.5 Error boundary racine

**Problème :** il n'y a pas de `app/error.tsx` global. Une erreur dans le layout racine ou les pages marketing affiche une page blanche.

- [ ] Créer `app/error.tsx` (client component) avec message d'erreur et lien retour accueil

---

### 2.6 Protection contre les accès directs aux exercices premium

- [ ] Vérifier que la RLS Supabase sur `exercises` bloque bien les requêtes directes à l'API Supabase pour les exercices premium sans auth
- [ ] Vérifier que `getExerciseById()` côté serveur vérifie l'abonnement avant de retourner un exercice premium (et pas seulement `submitAttemptAction`)

---

## P3 — Dans les 30 jours post-lancement

### 3.1 Centraliser l'autorisation

Remplacer les vérifications `isPremiumUser()` dispersées par une couche centrale :

```typescript
// lib/access.ts
export async function canAccess(userId: string, feature: 'premium_exercise' | 'premium_fiche' | 'admin'): Promise<boolean>
```

Appelée depuis les server actions et les server components. Facilite l'ajout futur de features (promos, codes d'accès, périodes d'essai).

**Fichiers concernés :** `features/exercises/server/actions.ts`, `features/fiches/server/actions.ts`, `features/fiches/server/queries.ts`

---

### 3.2 Soft delete et conformité RGPD

- [ ] Ajouter `deleted_at timestamptz` sur `profiles`
- [ ] Modifier `deleteAccountAction()` : soft delete d'abord → purge réelle différée à 30 jours
- [ ] Créer un endpoint `GET /api/gdpr/export` qui retourne toutes les données de l'utilisateur (attempts, progression, profil) en JSON

---

### 3.3 Historique des factures

Stripe génère les factures automatiquement pour les abonnements. Pour les paiements one-time, il faut vérifier :

- [ ] Que Stripe est configuré pour envoyer les reçus par email automatiquement
- [ ] Que la page `/abonnement` affiche un lien vers l'historique de facturation (portail Stripe)

---

### 3.4 Surveillance et alertes de base

- [ ] Intégrer Sentry (ou Vercel Analytics + alertes) pour les erreurs 500 en production
- [ ] Créer une alerte Stripe pour les webhooks échoués (disponible dans le dashboard Stripe)
- [ ] Configurer une alerte sur le taux d'échec de paiement (> 5% → à investiguer)

---

### 3.5 Audit log admin

- [ ] Créer une table `admin_audit_logs` (qui, quoi, quand, sur quel compte)
- [ ] Logger les actions sensibles : prolongation d'accès manuelle, suppression de compte depuis l'admin, modification de rôle

---

## Récapitulatif par priorité

| # | Tâche | Priorité | Effort |
|---|-------|----------|--------|
| 1.1 | Connexion Stripe live + webhook | **P1** | Moyen |
| 1.2 | Variables d'env production | **P1** | Faible |
| 1.3 | Rate-limit sur auth routes | **P1** | Faible |
| 1.4 | Pages légales à jour | **P1** | Faible |
| 1.5 | Cancel Stripe à la suppression de compte | **P1** | Faible |
| 1.6 | Vérifier expiration premium | **P1** | Faible |
| 1.7 | Build propre (0 erreur) | **P1** | Variable |
| 2.1 | Table billing_events | **P2** | Moyen |
| 2.2 | Back-office minimal (users + subscriptions) | **P2** | Moyen |
| 2.3 | Gestion past_due | **P2** | Faible |
| 2.4 | Portail client Stripe | **P2** | Faible |
| 2.5 | Error boundary racine | **P2** | Faible |
| 2.6 | Protection RLS exercices premium | **P2** | Faible |
| 3.1 | Centraliser l'autorisation (canAccess) | P3 | Moyen |
| 3.2 | Soft delete + export RGPD | P3 | Élevé |
| 3.3 | Historique factures | P3 | Faible |
| 3.4 | Sentry / alertes | P3 | Faible |
| 3.5 | Audit log admin | P3 | Moyen |

---

## Ce qui est déjà béton

- Auth SSR via Supabase avec middleware correct
- RLS activées sur toutes les tables (exercices, tentatives, abonnements)
- Vérifications premium côté serveur uniquement (jamais front-only)
- Webhook Stripe signé et validé avant traitement
- Upsert idempotent sur `user_id` pour les événements Stripe
- Rate-limit sur checkout et diagnostic
- Error boundaries sur tous les segments `(app)/`
- Pages légales existantes (CGU, mentions légales, politique de confidentialité)
- Suppression de compte fonctionnelle avec cascade en base
