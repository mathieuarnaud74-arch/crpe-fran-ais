import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";

import { rateLimit } from "@/lib/rate-limit";
import { updateSprintPersonalBest } from "@/features/gamification/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";

const bodySchema = z.object({
  timeMs: z.number().positive().max(300000),
});

export async function POST(request: NextRequest) {
  try {
    const supabase = await createSupabaseServerClient();
    const user = (await supabase.auth.getUser()).data.user;

    if (!user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }

    const rl = rateLimit(`sprint-best:${user.id}`, { limit: 30, windowSeconds: 60 });
    if (!rl.success) {
      return NextResponse.json(
        { error: "Trop de requêtes. Réessaie dans quelques instants." },
        { status: 429, headers: { "Retry-After": String(Math.ceil((rl.resetAt - Date.now()) / 1000)) } },
      );
    }

    let rawBody: unknown;
    try {
      rawBody = await request.json();
    } catch {
      return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
    }

    const result = bodySchema.safeParse(rawBody);
    if (!result.success) {
      return NextResponse.json(
        { error: "Données invalides", details: result.error.issues },
        { status: 400 },
      );
    }

    const body = result.data;

    const isNewRecord = await updateSprintPersonalBest(user.id, body.timeMs);
    return NextResponse.json({ ok: true, isNewRecord });
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[gamification/sprint-best]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
