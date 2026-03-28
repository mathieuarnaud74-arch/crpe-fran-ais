import { NextResponse } from "next/server";
import { z } from "zod";

import { rateLimit } from "@/lib/rate-limit";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { isWebPushConfigured } from "@/lib/env";
import { upsertSubscription, deleteSubscription } from "@/lib/push-db";

const subscriptionSchema = z.object({
  endpoint: z.string().url(),
  keys: z.object({
    p256dh: z.string().min(1),
    auth: z.string().min(1),
  }),
});

const bodySchema = z.object({
  subscription: subscriptionSchema,
});

export async function POST(request: Request) {
  if (!isWebPushConfigured()) {
    return NextResponse.json(
      { error: "Push notifications non configurées." },
      { status: 503 },
    );
  }

  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json(
      { error: "Utilisateur non authentifié." },
      { status: 401 },
    );
  }

  const rl = rateLimit(`push-subscribe:${user.id}`, {
    limit: 10,
    windowSeconds: 60,
  });
  if (!rl.success) {
    return NextResponse.json({ error: "Trop de requêtes." }, { status: 429 });
  }

  const rawBody = await request.json().catch(() => ({}));
  const result = bodySchema.safeParse(rawBody);
  if (!result.success) {
    return NextResponse.json(
      { error: "Données invalides.", details: result.error.issues },
      { status: 400 },
    );
  }

  const { subscription } = result.data;
  const { error } = await upsertSubscription({
    userId: user.id,
    endpoint: subscription.endpoint,
    p256dh: subscription.keys.p256dh,
    auth: subscription.keys.auth,
  });

  if (error) {
    console.error("[push/subscribe] upsert failed:", error.message);
    return NextResponse.json({ error: "Erreur interne." }, { status: 500 });
  }

  return NextResponse.json({ status: "subscribed" });
}

export async function DELETE(request: Request) {
  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json(
      { error: "Utilisateur non authentifié." },
      { status: 401 },
    );
  }

  const rawBody = await request.json().catch(() => ({}));
  const endpoint = rawBody?.endpoint;

  if (!endpoint || typeof endpoint !== "string") {
    return NextResponse.json({ error: "Endpoint requis." }, { status: 400 });
  }

  await deleteSubscription(user.id, endpoint);
  return NextResponse.json({ status: "unsubscribed" });
}
