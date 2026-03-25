import { cache } from "react";

import { getStartOfDayParis } from "@/lib/daily-streak";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export const getCompletedFicheSlugs = cache(async function getCompletedFicheSlugs(userId: string): Promise<Set<string>> {
  const supabase = await createSupabaseServerClient();

  const { data, error } = await supabase
    .from("fiche_completions")
    .select("fiche_slug")
    .eq("user_id", userId);

  if (error) {
    console.error("[fiches] getCompletedFicheSlugs query failed:", error.message);
    return new Set();
  }

  return new Set((data ?? []).map((row) => row.fiche_slug));
});

export const getFicheReadsCountToday = cache(async function getFicheReadsCountToday(userId: string): Promise<number> {
  const supabase = await createSupabaseServerClient();
  const startOfDay = getStartOfDayParis();

  const { count, error } = await supabase
    .from("fiche_completions")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .gte("completed_at", startOfDay.toISOString());

  if (error) {
    console.error("[fiches] getFicheReadsCountToday query failed:", error.message);
    return 0;
  }

  return count ?? 0;
});
