import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { DiagnosticResult } from "@/features/diagnostic/types";

export async function getDiagnosticResult(userId: string): Promise<DiagnosticResult | null> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("diagnostic_results")
    .select("completed_at, score, total, profile_label, profile_detail, subdomains")
    .eq("user_id", userId)
    .maybeSingle();

  if (!data) return null;

  return {
    completedAt: data.completed_at,
    score: data.score,
    total: data.total,
    profileLabel: data.profile_label,
    profileDetail: data.profile_detail,
    subdomains: data.subdomains as DiagnosticResult["subdomains"],
  };
}
