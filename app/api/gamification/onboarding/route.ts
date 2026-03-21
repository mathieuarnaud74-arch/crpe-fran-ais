import { NextResponse } from "next/server";
import { completeOnboarding } from "@/features/gamification/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function POST() {
  try {
    const supabase = await createSupabaseServerClient();
    const user = (await supabase.auth.getUser()).data.user;

    if (!user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }

    await completeOnboarding(user.id);
    return NextResponse.json({ ok: true });
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[gamification/onboarding]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
