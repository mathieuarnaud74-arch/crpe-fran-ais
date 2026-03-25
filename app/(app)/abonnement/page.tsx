import type { Metadata } from "next";

import { Badge } from "@/components/ui/badge";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";

export const metadata: Metadata = {
  title: "Abonnement",
  description: "Gérez votre abonnement CRPE Français.",
};
import { CheckoutButton } from "@/features/billing/components/checkout-button";
import {
  getUserSubscription,
  isPremiumUser,
} from "@/features/billing/server/queries";
import { env, isStripeConfigured } from "@/lib/env";
import { formatDate } from "@/lib/utils";

function getPlanLabel(stripePriceId: string | null | undefined): string {
  if (!stripePriceId) return "Plan inconnu";
  if (stripePriceId === env.stripePricePremiumDailyId) return "Accès journalier";
  if (stripePriceId === env.stripePricePremiumWeeklyId) return "Accès semainier";
  if (stripePriceId === env.stripePricePremiumMonthlyId) return "Abonnement mensuel";
  return "Accès premium";
}

const paidPlans = [
  {
    key: "daily" as const,
    label: "Journalier",
    price: "0,99 €",
    detail: "24 heures · non renouvelé",
    getPriceId: () => env.stripePricePremiumDailyId,
  },
  {
    key: "weekly" as const,
    label: "Semainier",
    price: "2,99 €",
    detail: "7 jours · non renouvelé",
    getPriceId: () => env.stripePricePremiumWeeklyId,
  },
  {
    key: "monthly" as const,
    label: "Mensuel",
    price: "4,99 €/mois",
    detail: "Récurrent · résiliable",
    getPriceId: () => env.stripePricePremiumMonthlyId,
  },
];

export default async function SubscriptionPage() {
  const user = await requireUser();
  const [premium, subscription] = await Promise.all([
    isPremiumUser(user.id),
    getUserSubscription(user.id),
  ]);
  const stripeReady = isStripeConfigured();

  const planLabel = getPlanLabel(subscription?.stripe_price_id);

  return (
    <div className="space-y-6">
      <div>
        <Badge tone={premium ? "accent" : "neutral"}>
          {premium ? `Premium actif — ${planLabel}` : "Accès gratuit"}
        </Badge>
        <h1 className="mt-3 font-serif text-3xl font-semibold text-ink sm:text-4xl">Abonnement</h1>
        <p className="mt-3 max-w-3xl text-sm leading-7 text-ink/72">
          {premium
            ? "Gérez votre accès, consultez la date de fin ou résiliez depuis le portail Stripe."
            : "Choisissez la durée d'accès qui correspond à votre rythme de révision."}
        </p>
      </div>

      {premium ? (
        /* Active subscription */
        <div className="grid gap-6 lg:grid-cols-[1.1fr,0.9fr]">
          <Panel>
            <h2 className="font-serif text-2xl font-semibold text-ink">{planLabel}</h2>
            <ul className="mt-5 space-y-3 text-sm leading-7 text-ink/72">
              <li>Accès illimité à tous les exercices de Français</li>
              <li>Historique complet et statistiques par sous-domaine</li>
              <li>Portail client Stripe pour gérer ou résilier</li>
            </ul>
            <div className="mt-6">
              <CheckoutButton
                endpoint="/api/stripe/portal"
                label="Ouvrir le portail client"
                disabled={!stripeReady}
              />
            </div>
          </Panel>

          <Panel>
            <h2 className="font-serif text-2xl font-semibold text-ink">État actuel</h2>
            <div className="mt-5 space-y-3 text-sm text-ink/72">
              <p>
                Statut :{" "}
                <span className="font-semibold text-ink">{subscription?.status ?? "inactive"}</span>
              </p>
              <p>
                Renouvellement automatique :{" "}
                <span className="font-semibold text-ink">
                  {subscription?.cancel_at_period_end ? "Non" : "Oui"}
                </span>
              </p>
              <p>
                Fin d&apos;accès :{" "}
                <span className="font-semibold text-ink">
                  {subscription?.current_period_end
                    ? formatDate(subscription.current_period_end)
                    : "Non disponible"}
                </span>
              </p>
            </div>
          </Panel>
        </div>
      ) : (
        /* Plan selection */
        <div className="grid gap-4 lg:grid-cols-3">
          {paidPlans.map((plan) => (
            <Panel key={plan.key} className={plan.key === "monthly" ? "border-accentSecondary/25" : ""}>
              <p className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">
                {plan.label}
              </p>
              <p className="mt-2 font-serif text-3xl font-semibold text-ink">{plan.price}</p>
              <p className="mt-1 text-xs text-muted">{plan.detail}</p>
              <div className="mt-6">
                <CheckoutButton
                  endpoint="/api/stripe/checkout"
                  priceId={plan.getPriceId()}
                  label={plan.key === "monthly" ? "S'abonner" : `Accéder ${plan.label.toLowerCase()}`}
                  disabled={!stripeReady}
                />
              </div>
              {!stripeReady && (
                <p className="mt-3 text-sm text-warning">
                  Paiement non disponible pour l&apos;instant.
                </p>
              )}
            </Panel>
          ))}
        </div>
      )}

      <p className="text-xs text-muted">
        Journalier et semainier : accès à durée fixe, sans renouvellement automatique.
        Mensuel : résiliation possible à tout moment depuis le portail Stripe.
      </p>
    </div>
  );
}
