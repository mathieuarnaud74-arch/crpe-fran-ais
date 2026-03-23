import Stripe from "stripe";

import { env, isStripeConfigured } from "@/lib/env";

export function getStripeServerClient() {
  if (!isStripeConfigured()) {
    throw new Error(
      "Configuration Stripe incomplète. Renseignez STRIPE_SECRET_KEY, STRIPE_WEBHOOK_SECRET et STRIPE_PRICE_PREMIUM_MONTHLY_ID.",
    );
  }

  return new Stripe(env.stripeSecretKey, {
    apiVersion: "2025-02-24.acacia",
  });
}

