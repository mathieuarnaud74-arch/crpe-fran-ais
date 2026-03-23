import type { RevisionSession } from "@/types/domain";

export type AttemptInput = {
  id: string;
  exercise_id: string;
  is_correct: boolean;
  answered_at: string;
};

export type SessionStats = {
  attempts: number;
  correct: number;
  answeredQuestionIds: Set<string>;
  lastAnsweredAt: string | null;
};

export type SubdomainStats = {
  key: string;
  label: string;
  domain: RevisionSession["subdomain"];
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  attemptedQuestions: number;
  attempts: number;
  correct: number;
  lastAnsweredAt: string | null;
};

export type DomainStats = {
  domain: RevisionSession["subdomain"];
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  attemptedQuestions: number;
  attempts: number;
  correct: number;
  lastAnsweredAt: string | null;
};
