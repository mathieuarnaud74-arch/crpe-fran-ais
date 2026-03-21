import { NextRequest, NextResponse } from "next/server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { DiagnosticResult } from "@/features/diagnostic/types";

export async function POST(request: NextRequest) {
  try {
    const supabase = await createSupabaseServerClient();

    const {
      data: { user },
      error: authError,
    } = await supabase.auth.getUser();

    if (authError || !user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }

    let body: DiagnosticResult;
    try {
      body = await request.json();
    } catch {
      return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
    }

    if (typeof body.score !== "number" || typeof body.total !== "number") {
      return NextResponse.json({ error: "score and total are required numbers" }, { status: 400 });
    }

    if (!body.profileLabel || !body.subdomains) {
      return NextResponse.json({ error: "profileLabel and subdomains are required" }, { status: 400 });
    }

    const { error } = await supabase.from("diagnostic_results").insert({
      user_id: user.id,
      completed_at: body.completedAt,
      score: body.score,
      total: body.total,
      profile_label: body.profileLabel,
      profile_detail: body.profileDetail,
      subdomains: body.subdomains,
    });

    if (error) {
      // 23505 = unique_violation — already saved, treat as success
      if (error.code === "23505") {
        return NextResponse.json({ ok: true });
      }
      console.error("[diagnostic/complete]", error.message);
      return NextResponse.json({ error: "Internal server error" }, { status: 500 });
    }

    return NextResponse.json({ ok: true });
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[diagnostic/complete]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
