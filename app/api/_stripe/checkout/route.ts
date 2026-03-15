import { NextResponse } from "next/server";
import Stripe from "stripe";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { env, isStripeConfigured } from "@/lib/env";
import { getStripeServerClient } from "@/lib/stripe/server";

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

  const body = await request.json().catch(() => ({})) as { priceId?: string };
  const priceId = body.priceId ?? env.stripePricePremiumMonthlyId;

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
  const { data: existingSubscription } = await admin
    .from("subscriptions")
    .select("*")
    .eq("user_id", user.id)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  const stripe = getStripeServerClient();
  const customerId = existingSubscription?.stripe_customer_id ?? null;

  const subscriptionData = {
    cancel_at_period_end: isLimitedAccess,
    metadata: {
      user_id: user.id,
    },
  } as unknown as Stripe.Checkout.SessionCreateParams.SubscriptionData;

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
    },
    subscription_data: subscriptionData,
    success_url: `${env.appUrl}/abonnement?checkout=success`,
    cancel_url: `${env.appUrl}/abonnement?checkout=cancelled`,
  });

  return NextResponse.json({ url: session.url });
}
