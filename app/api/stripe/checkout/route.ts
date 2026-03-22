import { NextResponse } from "next/server";
import Stripe from "stripe";
import { z } from "zod";

import { rateLimit } from "@/lib/rate-limit";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { env, isStripeConfigured } from "@/lib/env";
import { getStripeServerClient } from "@/lib/stripe/server";

const bodySchema = z.object({
  priceId: z.string().optional(),
});

export async function POST(request: Request) {
  if (!isStripeConfigured()) {
    return NextResponse.json(
      {
        error:
          "Configuration Stripe manquante. Renseignez les variables Stripe avant d'activer le checkout.",
      },
      { status: 503 },
    );
  }

  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user || !user.email) {
    return NextResponse.json({ error: "Utilisateur non authentifié." }, { status: 401 });
  }

  const rl = rateLimit(`stripe-checkout:${user.id}`, { limit: 5, windowSeconds: 60 });
  if (!rl.success) {
    return NextResponse.json(
      { error: "Trop de requêtes. Réessaie dans quelques instants." },
      { status: 429, headers: { "Retry-After": String(Math.ceil((rl.resetAt - Date.now()) / 1000)) } },
    );
  }

  const rawBody = await request.json().catch(() => ({}));
  const result = bodySchema.safeParse(rawBody);
  if (!result.success) {
    return NextResponse.json(
      { error: "Données invalides", details: result.error.issues },
      { status: 400 },
    );
  }

  const priceId = result.data.priceId ?? env.stripePricePremiumMonthlyId;

  const validPrices = new Set([
    env.stripePricePremiumDailyId,
    env.stripePricePremiumWeeklyId,
    env.stripePricePremiumMonthlyId,
  ]);

  if (!validPrices.has(priceId)) {
    return NextResponse.json({ error: "Prix non reconnu." }, { status: 400 });
  }

  const isLimitedAccess =
    priceId === env.stripePricePremiumDailyId ||
    priceId === env.stripePricePremiumWeeklyId;

  const admin = createSupabaseAdminClient();
  const { data: existingSubscription, error: dbError } = await admin
    .from("subscriptions")
    .select("*")
    .eq("user_id", user.id)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  if (dbError) {
    console.error("[checkout] subscription lookup failed:", dbError.message);
    return NextResponse.json({ error: "Erreur interne." }, { status: 500 });
  }

  const stripe = getStripeServerClient();
  const customerId = existingSubscription?.stripe_customer_id ?? null;

  const subscriptionData = {
    cancel_at_period_end: isLimitedAccess,
    metadata: {
      user_id: user.id,
    },
  } as unknown as Stripe.Checkout.SessionCreateParams.SubscriptionData;

  try {
    const session = await stripe.checkout.sessions.create({
      mode: "subscription",
      customer: customerId ?? undefined,
      customer_email: customerId ? undefined : user.email,
      line_items: [
        {
          price: priceId,
          quantity: 1,
        },
      ],
      metadata: {
        user_id: user.id,
        price_id: priceId,
      },
      subscription_data: subscriptionData,
      success_url: `${env.appUrl}/abonnement?checkout=success`,
      cancel_url: `${env.appUrl}/abonnement?checkout=cancelled`,
    });

    return NextResponse.json({ url: session.url });
  } catch (err) {
    const message = err instanceof Error ? err.message : "Erreur Stripe inattendue.";
    return NextResponse.json({ error: message }, { status: 502 });
  }
}
