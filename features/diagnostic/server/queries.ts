import { cache } from "react";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { DiagnosticResult, DiagnosticSubdomainResult, DiagnosticSubject } from "@/features/diagnostic/types";

const SUBDOMAIN_HREFS: Record<string, string> = {
  // French
  grammaire: "/francais/grammaire",
  orthographe: "/francais/orthographe",
  conjugaison: "/francais/grammaire?subdomain=conjugaison",
  lexique: "/francais/lexique",
  analyse_langue: "/francais/analyse-de-la-langue",
  comprehension_texte: "/francais/analyse-de-la-langue?subdomain=comprehension_texte",
  didactique_francais: "/francais/didactique-du-francais",
  // Math
  nombres_calcul: "/maths/nombres-et-calcul",
  geometrie: "/maths/geometrie",
  grandeurs_mesures: "/maths/grandeurs-et-mesures",
  organisation_donnees: "/maths/organisation-de-donnees",
  didactique_maths: "/maths/didactique-des-maths",
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
          href: SUBDOMAIN_HREFS[key] ?? `/${key}`,
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

function rowToResult(row: {
  subject?: string;
  completed_at: string;
  score: number;
  total: number;
  profile_label: string;
  profile_detail: string;
  subdomains: unknown;
}): DiagnosticResult {
  return {
    subject: (row.subject ?? "francais") as DiagnosticSubject,
    completedAt: row.completed_at,
    score: row.score,
    total: row.total,
    profileLabel: row.profile_label,
    profileDetail: row.profile_detail,
    subdomains: normalizeSubdomains(row.subdomains),
  };
}

export const getDiagnosticResult = cache(async function getDiagnosticResult(
  userId: string,
  subject: DiagnosticSubject = "francais",
): Promise<DiagnosticResult | null> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("diagnostic_results")
    .select("subject, completed_at, score, total, profile_label, profile_detail, subdomains")
    .eq("user_id", userId)
    .eq("subject", subject)
    .maybeSingle();

  if (!data) return null;

  return rowToResult(data);
});

export async function getAllDiagnosticResults(
  userId: string,
): Promise<DiagnosticResult[]> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("diagnostic_results")
    .select("subject, completed_at, score, total, profile_label, profile_detail, subdomains")
    .eq("user_id", userId);

  if (!data) return [];

  return data.map(rowToResult);
}
