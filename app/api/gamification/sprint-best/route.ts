import { NextRequest, NextResponse } from "next/server";
import { updateSprintPersonalBest } from "@/features/gamification/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function POST(request: NextRequest) {
  try {
    const supabase = await createSupabaseServerClient();
    const user = (await supabase.auth.getUser()).data.user;

    if (!user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }

    let body: { timeMs: number };
    try {
      body = await request.json();
    } catch {
      return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
    }

    if (typeof body.timeMs !== "number" || body.timeMs <= 0) {
      return NextResponse.json({ error: "timeMs must be a positive number" }, { status: 400 });
    }

    const isNewRecord = await updateSprintPersonalBest(user.id, body.timeMs);
    return NextResponse.json({ ok: true, isNewRecord });
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[gamification/sprint-best]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
