import { describe, it, expect } from "vitest";
import {
  XP_PER_CORRECT,
  XP_PER_INCORRECT,
  LEVEL_THRESHOLDS,
  getLevelForXp,
  getXpForNextLevel,
  calculateStreakMultiplier,
  calculateSpeedBonus,
  calculateXpEarned,
} from "@/lib/xp";

// ─── getLevelForXp ──────────────────────────────────────────

describe("getLevelForXp", () => {
  it("returns level 1 for 0 XP", () => {
    expect(getLevelForXp(0)).toBe(1);
  });

  it("returns level 1 for 99 XP", () => {
    expect(getLevelForXp(99)).toBe(1);
  });

  it("returns level 2 at exactly 100 XP", () => {
    expect(getLevelForXp(100)).toBe(2);
  });

  it("returns level 3 at 300 XP", () => {
    expect(getLevelForXp(300)).toBe(3);
  });

  it("returns level 20 at 36000 XP", () => {
    expect(getLevelForXp(36000)).toBe(20);
  });

  it("returns level 20 for XP above max threshold", () => {
    expect(getLevelForXp(100000)).toBe(20);
  });

  it("returns level 1 for negative XP", () => {
    expect(getLevelForXp(-10)).toBe(1);
  });
});

// ─── getXpForNextLevel ──────────────────────────────────────

describe("getXpForNextLevel", () => {
  it("computes progress at 0 XP", () => {
    const result = getXpForNextLevel(0);
    expect(result.currentLevel).toBe(1);
    expect(result.xpInCurrentLevel).toBe(0);
    expect(result.xpNeededForNext).toBe(100);
    expect(result.progress).toBe(0);
  });

  it("computes progress at 50 XP (halfway through level 1)", () => {
    const result = getXpForNextLevel(50);
    expect(result.currentLevel).toBe(1);
    expect(result.xpInCurrentLevel).toBe(50);
    expect(result.progress).toBeCloseTo(0.5);
  });

  it("computes progress at level boundary", () => {
    const result = getXpForNextLevel(100);
    expect(result.currentLevel).toBe(2);
    expect(result.xpInCurrentLevel).toBe(0);
    expect(result.progress).toBe(0);
  });

  it("caps progress at 1 for max level", () => {
    const result = getXpForNextLevel(50000);
    expect(result.currentLevel).toBe(20);
    expect(result.progress).toBeLessThanOrEqual(1);
  });
});

// ─── calculateStreakMultiplier ───────────────────────────────

describe("calculateStreakMultiplier", () => {
  it("returns 1x for streak < 5", () => {
    expect(calculateStreakMultiplier(0)).toBe(1);
    expect(calculateStreakMultiplier(4)).toBe(1);
  });

  it("returns 1.5x for streak 5-9", () => {
    expect(calculateStreakMultiplier(5)).toBe(1.5);
    expect(calculateStreakMultiplier(9)).toBe(1.5);
  });

  it("returns 2x for streak >= 10", () => {
    expect(calculateStreakMultiplier(10)).toBe(2);
    expect(calculateStreakMultiplier(100)).toBe(2);
  });
});

// ─── calculateSpeedBonus ────────────────────────────────────

describe("calculateSpeedBonus", () => {
  it("returns 0 when no time provided", () => {
    expect(calculateSpeedBonus(null, 60000)).toBe(0);
  });

  it("returns 0 when time equals max", () => {
    expect(calculateSpeedBonus(60000, 60000)).toBe(0);
  });

  it("returns 0 when time exceeds max", () => {
    expect(calculateSpeedBonus(70000, 60000)).toBe(0);
  });

  it("returns up to 5 for very fast answers", () => {
    expect(calculateSpeedBonus(1000, 60000)).toBeLessThanOrEqual(5);
    expect(calculateSpeedBonus(1000, 60000)).toBeGreaterThan(0);
  });

  it("returns 0 for negative time", () => {
    expect(calculateSpeedBonus(-100, 60000)).toBe(0);
  });
});

// ─── calculateXpEarned ─────────────────────────────────────

describe("calculateXpEarned", () => {
  it("gives base XP for correct answer with no streak", () => {
    expect(calculateXpEarned(true, 0, null)).toBe(XP_PER_CORRECT);
  });

  it("gives participation XP for incorrect answer", () => {
    expect(calculateXpEarned(false, 0, null)).toBe(XP_PER_INCORRECT);
  });

  it("applies streak multiplier for correct answers", () => {
    const withStreak5 = calculateXpEarned(true, 5, null);
    expect(withStreak5).toBe(Math.round(XP_PER_CORRECT * 1.5));
  });

  it("does NOT apply streak multiplier for incorrect answers", () => {
    const withStreak10 = calculateXpEarned(false, 10, null);
    expect(withStreak10).toBe(XP_PER_INCORRECT);
  });

  it("applies mode multiplier (sprint = 2x)", () => {
    const sprint = calculateXpEarned(true, 0, null, "sprint");
    expect(sprint).toBe(Math.round(XP_PER_CORRECT * 2));
  });

  it("applies mode multiplier (timed = 1.5x)", () => {
    const timed = calculateXpEarned(true, 0, null, "timed");
    expect(timed).toBe(Math.round(XP_PER_CORRECT * 1.5));
  });

  it("applies mode multiplier (swipe = 1.2x)", () => {
    const swipe = calculateXpEarned(true, 0, null, "swipe");
    expect(swipe).toBe(Math.round(XP_PER_CORRECT * 1.2));
  });

  it("combines streak + speed + mode", () => {
    const xp = calculateXpEarned(true, 10, 5000, "sprint", 60000);
    const expectedBase = XP_PER_CORRECT * 2; // streak 10 = 2x
    const speedBonus = calculateSpeedBonus(5000, 60000);
    const expected = Math.round((expectedBase + speedBonus) * 2); // sprint = 2x
    expect(xp).toBe(expected);
  });
});
