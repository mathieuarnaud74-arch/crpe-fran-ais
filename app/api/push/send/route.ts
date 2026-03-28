import { NextResponse } from "next/server";
import webpush from "web-push";
import { z } from "zod";

import { rateLimit } from "@/lib/rate-limit";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { env, isWebPushConfigured } from "@/lib/env";
import { requireAdmin } from "@/features/auth/server/guards";
import {
  getSubscriptions,
  deleteSubscriptionByEndpoint,
} from "@/lib/push-db";

const bodySchema = z.object({
  title: z.string().min(1).max(100),
  body: z.string().min(1).max(300),
  url: z.string().optional().default("/tableau-de-bord"),
  tag: z.string().optional().default("crpe-notification"),
  userId: z.string().uuid().optional(),
});

export async function POST(request: Request) {
  if (!isWebPushConfigured()) {
    return NextResponse.json(
      { error: "Push notifications non configurées." },
      { status: 503 },
    );
  }

  try {
    await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Accès refusé." }, { status: 403 });
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

  const rl = rateLimit(`push-send:${user.id}`, {
    limit: 20,
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

  const { title, body, url, tag, userId } = result.data;

  webpush.setVapidDetails(
    env.vapidSubject,
    env.vapidPublicKey,
    env.vapidPrivateKey,
  );

  const { data: subscriptions, error: dbError } =
    await getSubscriptions(userId);

  if (dbError) {
    console.error("[push/send] fetch subscriptions failed:", dbError.message);
    return NextResponse.json({ error: "Erreur interne." }, { status: 500 });
  }

  if (subscriptions.length === 0) {
    return NextResponse.json({ sent: 0, failed: 0 });
  }

  const payload = JSON.stringify({ title, body, url, tag });
  let sent = 0;
  let failed = 0;

  await Promise.allSettled(
    subscriptions.map(async (sub) => {
      try {
        await webpush.sendNotification(
          {
            endpoint: sub.endpoint,
            keys: { p256dh: sub.p256dh, auth: sub.auth },
          },
          payload,
        );
        sent++;
      } catch (err) {
        failed++;
        if (
          err instanceof webpush.WebPushError &&
          (err.statusCode === 410 || err.statusCode === 404)
        ) {
          await deleteSubscriptionByEndpoint(sub.endpoint);
        }
      }
    }),
  );

  return NextResponse.json({ sent, failed });
}
