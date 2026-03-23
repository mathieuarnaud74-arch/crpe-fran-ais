import type { ProgressStatus } from "@/types/domain";

export const MASTERY_THRESHOLD = 85;

export const STATUS_ORDER: Record<ProgressStatus, number> = {
  non_commencee: -1,
  prioritaire: 0,
  fragile: 1,
  en_cours: 2,
  acquis: 3,
};

export function getCorrectRate(attempts: number, correct: number) {
  return attempts === 0 ? null : Math.round((correct / attempts) * 100);
}

export function getLatestTimestamp(current: string | null, next: string) {
  if (!current) {
    return next;
  }

  return new Date(next).getTime() > new Date(current).getTime() ? next : current;
}
