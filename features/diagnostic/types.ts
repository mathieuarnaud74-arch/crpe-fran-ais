export type DiagnosticSubdomainResult = {
  key: string;
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
