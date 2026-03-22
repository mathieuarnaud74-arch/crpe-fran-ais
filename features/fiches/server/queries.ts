import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function getCompletedFicheSlugs(userId: string): Promise<Set<string>> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("fiche_completions")
    .select("fiche_slug")
    .eq("user_id", userId);

  return new Set((data ?? []).map((row) => row.fiche_slug));
}
