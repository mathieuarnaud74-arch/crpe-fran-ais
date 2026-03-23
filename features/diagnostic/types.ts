export type DiagnosticSubject = "francais" | "maths";

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
  subject: DiagnosticSubject;
  completedAt: string;
  score: number;
  total: number;
  profileLabel: string;
  profileDetail: string;
  subdomains: DiagnosticSubdomainResult[];
};

export type DiagnosticQuestion = {
  id: string;
  subdomain: string;
  subdomainLabel: string;
  href: string;
  competency: string;
  instruction: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
  retryAdvice: string;
};
