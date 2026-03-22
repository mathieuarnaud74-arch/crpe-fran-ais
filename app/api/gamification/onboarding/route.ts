import { NextResponse } from "next/server";

import { rateLimit } from "@/lib/rate-limit";
import { completeOnboarding } from "@/features/gamification/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function POST() {
  try {
    const supabase = await createSupabaseServerClient();
    const user = (await supabase.auth.getUser()).data.user;

    if (!user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }

    const rl = rateLimit(`onboarding:${user.id}`, { limit: 5, windowSeconds: 60 });
    if (!rl.success) {
      return NextResponse.json(
        { error: "Trop de requêtes. Réessaie dans quelques instants." },
        { status: 429, headers: { "Retry-After": String(Math.ceil((rl.resetAt - Date.now()) / 1000)) } },
      );
    }

    await completeOnboarding(user.id);
    return NextResponse.json({ ok: true });
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[gamification/onboarding]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
