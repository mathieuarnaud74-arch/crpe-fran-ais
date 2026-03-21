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

    const { timeMs } = await request.json();
    if (typeof timeMs !== "number" || timeMs <= 0) {
      return NextResponse.json({ error: "Invalid time" }, { status: 400 });
    }

    const isNewRecord = await updateSprintPersonalBest(user.id, timeMs);
    return NextResponse.json({ ok: true, isNewRecord });
  } catch {
    return NextResponse.json({ error: "Failed" }, { status: 500 });
  }
}
