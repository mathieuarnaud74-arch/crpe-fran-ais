import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { DiagnosticResult, DiagnosticSubdomainResult } from "@/features/diagnostic/types";

const SUBDOMAIN_HREFS: Record<string, string> = {
  grammaire: "/francais/grammaire",
  orthographe: "/francais/orthographe",
  conjugaison: "/francais/grammaire?subdomain=conjugaison",
  lexique: "/francais/lexique",
  analyse_langue: "/francais/analyse-de-la-langue",
  comprehension_texte: "/francais/analyse-de-la-langue?subdomain=comprehension_texte",
  didactique_francais: "/francais/didactique-du-francais",
};

function computeMastery(correct: number, total: number): DiagnosticSubdomainResult["mastery"] {
  const rate = total === 0 ? 0 : correct / total;
  if (rate >= 0.75) return "solide";
  if (rate < 0.4) return "prioritaire";
  return "a_consolider";
}

function computeRecommendation(label: string, mastery: DiagnosticSubdomainResult["mastery"]): string {
  if (mastery === "solide") return `Base rassurante en ${label.toLowerCase()}. Vous pouvez passer vite à des séries plus exigeantes.`;
  if (mastery === "a_consolider") return `Le repère est présent, mais encore instable en ${label.toLowerCase()}. Une ou deux séries ciblées seront rentables.`;
  return "Sous-domaine prioritaire : reprenez les notions fondamentales avant d'augmenter la difficulté.";
}

function normalizeSubdomains(raw: unknown): DiagnosticSubdomainResult[] {
  if (Array.isArray(raw)) return raw as DiagnosticSubdomainResult[];

  if (raw && typeof raw === "object" && !Array.isArray(raw)) {
    return Object.entries(raw as Record<string, { score: number; total: number; label?: string }>).map(
      ([key, value]) => {
        const label = value.label ?? key;
        const correct = value.score ?? 0;
        const total = value.total ?? 0;
        const mastery = computeMastery(correct, total);
        return {
          key,
          label,
          href: SUBDOMAIN_HREFS[key] ?? `/francais/${key}`,
          correct,
          total,
          mastery,
          recommendation: computeRecommendation(label, mastery),
        };
      },
    );
  }

  return [];
}

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
    subdomains: normalizeSubdomains(data.subdomains),
  };
}
