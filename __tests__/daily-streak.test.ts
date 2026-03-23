import { describe, it, expect } from "vitest";

import {
  computeDailyStreakUpdate,
  isStreakMilestone,
} from "@/lib/daily-streak";

// ─── computeDailyStreakUpdate ──────────────────────────────

describe("computeDailyStreakUpdate", () => {
  const today = "2026-03-23";
  const yesterday = "2026-03-22";
  const twoDaysAgo = "2026-03-21";
  const threeDaysAgo = "2026-03-20";

  it("returns no change when activity was already recorded today", () => {
    const result = computeDailyStreakUpdate(today, 5, 10, 2, null, today);

    expect(result.justIncremented).toBe(false);
    expect(result.justBroken).toBe(false);
    expect(result.daily_streak).toBe(5);
    expect(result.longest_daily_streak).toBe(10);
    expect(result.freezeUsed).toBe(false);
  });

  it("increments streak on consecutive day", () => {
    const result = computeDailyStreakUpdate(yesterday, 5, 10, 2, null, today);

    expect(result.daily_streak).toBe(6);
    expect(result.justIncremented).toBe(true);
    expect(result.justBroken).toBe(false);
    expect(result.freezeUsed).toBe(false);
  });

  it("uses freeze when one day is missed and freeze is available", () => {
    const result = computeDailyStreakUpdate(twoDaysAgo, 5, 10, 2, null, today);

    expect(result.daily_streak).toBe(6);
    expect(result.justIncremented).toBe(true);
    expect(result.freezeUsed).toBe(true);
    expect(result.streak_freeze_remaining).toBe(1);
    expect(result.streak_frozen_on).toBe(yesterday);
    expect(result.justBroken).toBe(false);
  });

  it("does not use freeze if already frozen yesterday", () => {
    const result = computeDailyStreakUpdate(twoDaysAgo, 5, 10, 2, yesterday, today);

    expect(result.daily_streak).toBe(1);
    expect(result.justBroken).toBe(true);
    expect(result.freezeUsed).toBe(false);
  });

  it("resets streak when one day is missed and no freeze remaining", () => {
    const result = computeDailyStreakUpdate(twoDaysAgo, 5, 10, 0, null, today);

    expect(result.daily_streak).toBe(1);
    expect(result.justBroken).toBe(true);
    expect(result.justIncremented).toBe(true);
    expect(result.freezeUsed).toBe(false);
  });

  it("resets streak on gap of 3+ days", () => {
    const result = computeDailyStreakUpdate(threeDaysAgo, 7, 10, 2, null, today);

    expect(result.daily_streak).toBe(1);
    expect(result.justBroken).toBe(true);
  });

  it("sets streak to 1 on first activity (lastActivityDate=null)", () => {
    const result = computeDailyStreakUpdate(null, 0, 0, 2, null, today);

    expect(result.daily_streak).toBe(1);
    expect(result.justBroken).toBe(false);
    expect(result.justIncremented).toBe(true);
  });

  it("updates longest_daily_streak when new streak exceeds it", () => {
    const result = computeDailyStreakUpdate(yesterday, 10, 10, 0, null, today);

    expect(result.daily_streak).toBe(11);
    expect(result.longest_daily_streak).toBe(11);
  });

  it("keeps longest_daily_streak when current streak does not exceed it", () => {
    const result = computeDailyStreakUpdate(yesterday, 3, 20, 0, null, today);

    expect(result.daily_streak).toBe(4);
    expect(result.longest_daily_streak).toBe(20);
  });
});

// ─── isStreakMilestone ──────────────────────────────────────

describe("isStreakMilestone", () => {
  it.each([3, 5, 7, 10, 14, 21, 30, 60, 90, 180, 365])(
    "returns true for milestone %i",
    (streak) => {
      expect(isStreakMilestone(streak)).toBe(true);
    },
  );

  it.each([1, 2, 4, 6, 8, 9, 11, 12, 13, 15, 20, 22, 31])(
    "returns false for non-milestone %i",
    (streak) => {
      expect(isStreakMilestone(streak)).toBe(false);
    },
  );
});
