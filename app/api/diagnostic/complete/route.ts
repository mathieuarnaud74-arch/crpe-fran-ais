import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";

import { rateLimit } from "@/lib/rate-limit";
import { createSupabaseServerClient } from "@/lib/supabase/server";

const bodySchema = z.object({
  subject: z.enum(["francais", "maths"]).default("francais"),
  score: z.number(),
  total: z.number(),
  profileLabel: z.string(),
  profileDetail: z.string().optional(),
  completedAt: z.string().optional(),
  subdomains: z.record(z.string(), z.object({
    score: z.number(),
    total: z.number(),
    label: z.string().optional(),
  })),
});

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

    const rl = rateLimit(`diagnostic-complete:${user.id}`, { limit: 10, windowSeconds: 60 });
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

    const { error } = await supabase.from("diagnostic_results").insert({
      user_id: user.id,
      subject: body.subject,
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
