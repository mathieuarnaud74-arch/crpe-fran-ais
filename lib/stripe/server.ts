import Stripe from "stripe";

import { env, isStripeConfigured } from "@/lib/env";

let stripeClient: Stripe | null = null;

export function getStripeServerClient() {
  if (!isStripeConfigured()) {
    throw new Error(
      "Configuration Stripe incomplète. Renseignez STRIPE_SECRET_KEY, STRIPE_WEBHOOK_SECRET et STRIPE_PRICE_PREMIUM_MONTHLY_ID.",
    );
  }

  if (!stripeClient) {
    stripeClient = new Stripe(env.stripeSecretKey, {
      apiVersion: "2025-02-24.acacia",
    });
  }

  return stripeClient;
}

