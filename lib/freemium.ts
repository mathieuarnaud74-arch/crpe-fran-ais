import { env } from "@/lib/env";

export function getDailyRemainingQuota(attemptsToday: number, isPremium: boolean) {
  if (isPremium) {
    return Infinity;
  }

  return Math.max(env.freeDailyQuestionLimit - attemptsToday, 0);
}

export function canSubmitAttempt(attemptsToday: number, isPremium: boolean) {
  return isPremium || attemptsToday < env.freeDailyQuestionLimit;
}

