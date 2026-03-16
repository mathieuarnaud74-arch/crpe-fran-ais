import type { FrenchDiagnosticSubdomainKey } from "@/content/french-diagnostic-questions";

const STORAGE_KEY = "crpe-diagnostic-result";

export type DiagnosticSubdomainResult = {
  key: FrenchDiagnosticSubdomainKey;
  label: string;
  href: string;
  correct: number;
  total: number;
  mastery: "solide" | "a_consolider" | "prioritaire";
  recommendation: string;
};

export type DiagnosticResult = {
  completedAt: string;
  score: number;
  total: number;
  profileLabel: string;
  profileDetail: string;
  subdomains: DiagnosticSubdomainResult[];
};

export function saveDiagnosticResult(result: DiagnosticResult) {
  try {
    const existing = loadDiagnosticHistory();
    existing.unshift(result);
    // Keep only the last 5 diagnostics
    const trimmed = existing.slice(0, 5);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(trimmed));
  } catch {
    // localStorage unavailable (SSR, private browsing…)
  }
}

export function loadDiagnosticHistory(): DiagnosticResult[] {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
}

export function getLatestDiagnostic(): DiagnosticResult | null {
  const history = loadDiagnosticHistory();
  return history[0] ?? null;
}

export function hasDiagnosticResult(): boolean {
  return getLatestDiagnostic() !== null;
}
