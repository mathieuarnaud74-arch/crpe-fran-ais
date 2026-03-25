// ─── Daily Streak System ──────────────────────────────────

export function getParisToday(): string {
  return new Date().toLocaleDateString("en-CA", { timeZone: "Europe/Paris" });
}

/** Returns the UTC Date corresponding to midnight in Europe/Paris today. */
export function getStartOfDayParis(): Date {
  const parisDate = getParisToday();
  const noonUtc = new Date(`${parisDate}T12:00:00Z`);
  const parisHour =
    parseInt(
      noonUtc.toLocaleString("en-US", { timeZone: "Europe/Paris", hour: "numeric", hour12: false }),
      10,
    ) % 24;
  const startOfDay = new Date(`${parisDate}T00:00:00Z`);
  startOfDay.setUTCHours(-(parisHour - 12));
  return startOfDay;
}

function addDays(dateStr: string, days: number): string {
  const d = new Date(dateStr + "T12:00:00Z");
  d.setUTCDate(d.getUTCDate() + days);
  return d.toISOString().split("T")[0];
}

export type DailyStreakUpdate = {
  daily_streak: number;
  longest_daily_streak: number;
  streak_freeze_remaining: number;
  streak_frozen_on: string | null;
  justIncremented: boolean;
  justBroken: boolean;
  freezeUsed: boolean;
};

export function computeDailyStreakUpdate(
  lastActivityDate: string | null,
  currentDailyStreak: number,
  longestDailyStreak: number,
  freezeRemaining: number,
  frozenOn: string | null,
  today: string,
): DailyStreakUpdate {
  // Already recorded activity today — no change
  if (lastActivityDate === today) {
    return {
      daily_streak: currentDailyStreak,
      longest_daily_streak: longestDailyStreak,
      streak_freeze_remaining: freezeRemaining,
      streak_frozen_on: frozenOn,
      justIncremented: false,
      justBroken: false,
      freezeUsed: false,
    };
  }

  const yesterday = addDays(today, -1);
  const twoDaysAgo = addDays(today, -2);

  // Consecutive day — increment streak
  if (lastActivityDate === yesterday) {
    const newStreak = currentDailyStreak + 1;
    return {
      daily_streak: newStreak,
      longest_daily_streak: Math.max(longestDailyStreak, newStreak),
      streak_freeze_remaining: freezeRemaining,
      streak_frozen_on: frozenOn,
      justIncremented: true,
      justBroken: false,
      freezeUsed: false,
    };
  }

  // Missed one day — try to use freeze
  if (lastActivityDate === twoDaysAgo && freezeRemaining > 0 && frozenOn !== yesterday) {
    const newStreak = currentDailyStreak + 1;
    return {
      daily_streak: newStreak,
      longest_daily_streak: Math.max(longestDailyStreak, newStreak),
      streak_freeze_remaining: freezeRemaining - 1,
      streak_frozen_on: yesterday,
      justIncremented: true,
      justBroken: false,
      freezeUsed: true,
    };
  }

  // Gap too large or no freeze — reset to 1
  const wasBroken = currentDailyStreak > 0 && lastActivityDate !== null;
  return {
    daily_streak: 1,
    longest_daily_streak: Math.max(longestDailyStreak, 1),
    streak_freeze_remaining: freezeRemaining,
    streak_frozen_on: frozenOn,
    justIncremented: true,
    justBroken: wasBroken,
    freezeUsed: false,
  };
}

// ─── Streak Milestone Toasts ──────────────────────────────

export const STREAK_MILESTONES = [3, 5, 7, 10, 14, 21, 30, 60, 90, 180, 365] as const;

export function isStreakMilestone(streak: number): boolean {
  return (STREAK_MILESTONES as readonly number[]).includes(streak);
}
