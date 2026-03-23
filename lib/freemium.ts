import { env } from "@/lib/env";

export function getDailyRemainingQuota(attemptsToday: number, isPremium: boolean) {
  if (isPremium) {
    return -1;
  }

  return Math.max(env.freeDailyQuestionLimit - attemptsToday, 0);
}

export function canSubmitAttempt(attemptsToday: number, isPremium: boolean) {
  return isPremium || attemptsToday < env.freeDailyQuestionLimit;
}

// ─── Fiches quotas ──────────────────────────────────────────

export function getDailyRemainingFicheQuota(ficheReadsToday: number, isPremium: boolean) {
  if (isPremium) {
    return -1;
  }

  return Math.max(env.freeDailyFicheLimit - ficheReadsToday, 0);
}

export function canReadFiche(ficheReadsToday: number, isPremium: boolean) {
  return isPremium || ficheReadsToday < env.freeDailyFicheLimit;
}

