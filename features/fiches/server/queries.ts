import { getStartOfDayParis } from "@/lib/daily-streak";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function getCompletedFicheSlugs(userId: string): Promise<Set<string>> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("fiche_completions")
    .select("fiche_slug")
    .eq("user_id", userId);

  return new Set((data ?? []).map((row) => row.fiche_slug));
}

export async function getFicheReadsCountToday(userId: string): Promise<number> {
  const supabase = await createSupabaseServerClient();
  const startOfDay = getStartOfDayParis();

  const { count } = await supabase
    .from("fiche_completions")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .gte("completed_at", startOfDay.toISOString());

  return count ?? 0;
}
