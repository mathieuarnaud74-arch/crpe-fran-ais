import { NextResponse } from "next/server";

import { createSupabaseServerClient } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

export async function GET() {
  const results: Record<string, unknown> = {};

  try {
    // 1. Check Supabase client creation
    const supabase = await createSupabaseServerClient();
    results.supabaseClient = "OK";

    // 2. Check auth
    const {
      data: { user },
      error: authError,
    } = await supabase.auth.getUser();
    results.auth = user
      ? { status: "authenticated", email: user.email }
      : { status: "anonymous", error: authError?.message };

    // 3. Check exercises query (as current user role)
    const { data: exercises, error: exError } = await supabase
      .from("exercises")
      .select("id, subject, subdomain, exercise_type", { count: "exact" })
      .eq("is_published", true)
      .limit(3);
    results.exercises = {
      count: exercises?.length ?? 0,
      error: exError?.message ?? null,
    };

    // 4. Check user_gamification (if authenticated)
    if (user) {
      const { data: gam, error: gamErr } = await supabase
        .from("user_gamification")
        .select("*")
        .eq("user_id", user.id)
        .maybeSingle();
      results.gamification = {
        exists: !!gam,
        error: gamErr?.message ?? null,
      };

      // 5. Check attempts count
      const { count, error: attErr } = await supabase
        .from("attempts")
        .select("*", { count: "exact", head: true })
        .eq("user_id", user.id);
      results.attempts = { count, error: attErr?.message ?? null };

      // 6. Check subscriptions
      const { data: sub, error: subErr } = await supabase
        .from("subscriptions")
        .select("*")
        .eq("user_id", user.id)
        .maybeSingle();
      results.subscription = {
        exists: !!sub,
        status: sub?.status ?? null,
        error: subErr?.message ?? null,
      };
    }

    // 7. Node/env info
    results.env = {
      nodeVersion: process.version,
      nextPublicSupabaseUrl: process.env.NEXT_PUBLIC_SUPABASE_URL
        ? "set (" + process.env.NEXT_PUBLIC_SUPABASE_URL.substring(0, 30) + "...)"
        : "MISSING",
      nextPublicSupabaseAnonKey: process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
        ? "set (length: " + process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY.length + ")"
        : "MISSING",
      supabaseServiceRoleKey: process.env.SUPABASE_SERVICE_ROLE_KEY
        ? "set (length: " + process.env.SUPABASE_SERVICE_ROLE_KEY.length + ")"
        : "MISSING",
    };
  } catch (err) {
    results.fatalError =
      err instanceof Error
        ? { message: err.message, stack: err.stack?.split("\n").slice(0, 5) }
        : String(err);
  }

  return NextResponse.json(results, {
    headers: { "Cache-Control": "no-store" },
  });
}
