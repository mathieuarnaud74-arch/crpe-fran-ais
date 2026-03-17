import { NextRequest, NextResponse } from "next/server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { DiagnosticResult } from "@/features/diagnostic/types";

export async function POST(request: NextRequest) {
  const supabase = await createSupabaseServerClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body: DiagnosticResult = await request.json();

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
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ ok: true });
}
