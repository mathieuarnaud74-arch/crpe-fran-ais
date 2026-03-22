import { headers } from "next/headers";
import { NextResponse } from "next/server";
import Stripe from "stripe";

import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { env, isStripeConfigured } from "@/lib/env";
import { getStripeServerClient } from "@/lib/stripe/server";

export async function POST(request: Request) {
  if (!isStripeConfigured()) {
    return NextResponse.json({ error: "Stripe non configuré." }, { status: 503 });
  }

  const stripe = getStripeServerClient();
  const signature = (await headers()).get("stripe-signature");

  if (!signature) {
    return NextResponse.json({ error: "Signature Stripe manquante." }, { status: 400 });
  }

  const payload = await request.text();
  let event: Stripe.Event;

  try {
    event = stripe.webhooks.constructEvent(payload, signature, env.stripeWebhookSecret);
  } catch {
    return NextResponse.json({ error: "Signature Stripe invalide." }, { status: 400 });
  }

  const admin = createSupabaseAdminClient();

  const ONE_TIME_DURATIONS: Record<string, number> = {
    [env.stripePricePremiumDailyId]: 1,
    [env.stripePricePremiumWeeklyId]: 7,
  };

  function computePeriodEnd(priceId: string | null | undefined, stripePeriodEnd: number): string {
    const days = priceId ? ONE_TIME_DURATIONS[priceId] : undefined;
    if (days !== undefined) {
      return new Date(Date.now() + days * 24 * 60 * 60 * 1000).toISOString();
    }
    return new Date(stripePeriodEnd * 1000).toISOString();
  }

  async function upsertSubscription(subscription: Stripe.Subscription, overridePriceId?: string) {
    const userId =
      subscription.metadata?.user_id || subscription.items.data[0]?.metadata?.user_id;

    if (!userId) {
      console.error("[stripe-webhook] Missing user_id in subscription metadata", subscription.id);
      return;
    }

    const priceId = overridePriceId ?? subscription.items.data[0]?.price.id ?? null;

    const { error } = await admin.from("subscriptions").upsert(
      {
        user_id: userId,
        stripe_customer_id: String(subscription.customer),
        stripe_subscription_id: subscription.id,
        stripe_price_id: priceId,
        status: subscription.status,
        current_period_end: computePeriodEnd(priceId, subscription.current_period_end),
        cancel_at_period_end: subscription.cancel_at_period_end,
      },
      { onConflict: "user_id" },
    );

    if (error) {
      console.error("[stripe-webhook] upsert failed:", error.message);
      throw error;
    }
  }

  if (event.type === "checkout.session.completed") {
    const session = event.data.object as Stripe.Checkout.Session;
    const userId = session.metadata?.user_id;
    const priceId = session.metadata?.price_id;

    if (session.mode === "payment" && userId && priceId) {
      // Achat one-time : créer manuellement l'enregistrement d'accès
      const days = ONE_TIME_DURATIONS[priceId];
      if (days !== undefined) {
        const periodEnd = new Date(Date.now() + days * 24 * 60 * 60 * 1000).toISOString();
        const { error: upsertError } = await admin.from("subscriptions").upsert(
          {
            user_id: userId,
            stripe_customer_id: String(session.customer ?? ""),
            stripe_subscription_id: String(session.payment_intent ?? session.id),
            stripe_price_id: priceId,
            status: "active",
            current_period_end: periodEnd,
            cancel_at_period_end: true,
          },
          { onConflict: "user_id" },
        );

        if (upsertError) {
          console.error("[stripe-webhook] one-time upsert failed:", upsertError.message);
          return NextResponse.json({ error: upsertError.message }, { status: 500 });
        }
      }
    }

    if (session.mode === "subscription" && session.subscription && userId) {
      try {
        const subscription = await stripe.subscriptions.retrieve(String(session.subscription));
        await upsertSubscription(
          { ...subscription, metadata: { ...subscription.metadata, user_id: userId } },
          priceId ?? undefined,
        );
      } catch (err) {
        const message = err instanceof Error ? err.message : "Database error";
        console.error("[stripe-webhook] subscription upsert failed:", message);
        return NextResponse.json({ error: message }, { status: 500 });
      }
    }
  }

  try {
    if (
      event.type === "customer.subscription.created" ||
      event.type === "customer.subscription.updated" ||
      event.type === "customer.subscription.deleted"
    ) {
      await upsertSubscription(event.data.object as Stripe.Subscription);
    }
  } catch (err) {
    const message = err instanceof Error ? err.message : "Database error";
    console.error("[stripe-webhook] handler failed:", message);
    return NextResponse.json({ error: message }, { status: 500 });
  }

  return NextResponse.json({ received: true });
}
