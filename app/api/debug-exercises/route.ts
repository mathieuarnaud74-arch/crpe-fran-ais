import { NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { env } from "@/lib/env";

export const dynamic = "force-dynamic";

export async function GET() {
  const results: Record<string, unknown> = {};

  try {
    // 1. Env vars
    results.env = {
      nodeVersion: process.version,
      supabaseUrl: env.supabaseUrl ? env.supabaseUrl.substring(0, 35) + "..." : "MISSING",
      anonKeyLen: env.supabaseAnonKey?.length ?? 0,
      serviceKeyLen: env.supabaseServiceRoleKey?.length ?? 0,
    };

    // 2. Admin client (bypasses RLS) — tests DB connectivity
    const admin = createClient(env.supabaseUrl, env.supabaseServiceRoleKey);
    const { count: totalExercises, error: adminErr } = await admin
      .from("exercises")
      .select("*", { count: "exact", head: true })
      .eq("is_published", true);
    results.adminQuery = {
      totalPublishedExercises: totalExercises,
      error: adminErr?.message ?? null,
    };

    // 3. SSR client (uses cookies — will be anon without login)
    const ssr = await createSupabaseServerClient();
    const { data: { user } } = await ssr.auth.getUser();
    results.ssrAuth = user
      ? { status: "authenticated", email: user.email }
      : { status: "anonymous" };

    // 4. SSR exercises query (tests RLS)
    const { data: ssrExercises, error: ssrErr } = await ssr
      .from("exercises")
      .select("id", { count: "exact" })
      .eq("is_published", true)
      .limit(1);
    results.ssrExercises = {
      count: ssrExercises?.length ?? 0,
      error: ssrErr?.message ?? null,
    };

    // 5. Simulate getRandomExercises flow
    const { data: randomData, error: randomErr } = await admin
      .from("exercises")
      .select("id, exercise_type, expected_answer, choices")
      .eq("is_published", true)
      .eq("subject", "Francais")
      .limit(3);
    results.randomExercisesSample = {
      count: randomData?.length ?? 0,
      error: randomErr?.message ?? null,
      firstHasExpectedAnswer: !!randomData?.[0]?.expected_answer,
      firstHasChoices: randomData?.[0]?.choices !== null,
    };

    // 6. Test normalize on a real exercise
    if (randomData?.[0]) {
      try {
        const { normalizeExpectedAnswer, normalizeChoices } = await import(
          "@/features/exercises/shared/normalize"
        );
        const ex = randomData[0];
        normalizeExpectedAnswer(ex.expected_answer, ex.exercise_type);
        normalizeChoices(ex.choices, ex.exercise_type);
        results.normalize = "OK";
      } catch (normErr) {
        results.normalize = {
          error: normErr instanceof Error ? normErr.message : String(normErr),
        };
      }
    }

    // 7. Check all tables used in exercise flow
    const tables = ["user_gamification", "attempts", "subscriptions", "srs_cards"];
    const tableResults: Record<string, string> = {};
    for (const table of tables) {
      const { error: tErr } = await admin.from(table).select("*", { count: "exact", head: true });
      tableResults[table] = tErr ? "ERROR: " + tErr.message : "OK";
    }
    results.tables = tableResults;

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
