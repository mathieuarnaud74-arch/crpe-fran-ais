import { describe, it, expect, vi, beforeEach } from "vitest";

// ─── Mocks ───────────────────────────────────────────────────

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

vi.mock("@/lib/xp", () => ({
  getLevelForXp: vi.fn((xp: number) => Math.floor(xp / 100) + 1),
}));

vi.mock("@/lib/daily-streak", () => ({
  computeDailyStreakUpdate: vi.fn(),
  getParisToday: vi.fn(() => "2026-03-25"),
}));

import { updateUserXp } from "@/features/gamification/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { computeDailyStreakUpdate } from "@/lib/daily-streak";
import type { UserGamification } from "@/types/domain";

const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);
const mockComputeDailyStreakUpdate = vi.mocked(computeDailyStreakUpdate);

// ─── Helpers ─────────────────────────────────────────────────

function makeGamification(overrides?: Partial<UserGamification>): UserGamification {
  return {
    user_id: "user-1",
    xp: 100,
    level: 2,
    current_streak: 0,
    longest_streak: 3,
    last_activity_date: "2026-03-24",
    sound_enabled: true,
    reduced_animations: false,
    daily_goal: 10,
    personal_best_sprint_time: null,
    onboarding_completed: false,
    daily_streak: 5,
    longest_daily_streak: 10,
    streak_freeze_remaining: 1,
    streak_frozen_on: null,
    ...overrides,
  };
}

function setupSupabaseMock(updateError?: unknown) {
  const updateChain = {
    eq: vi.fn().mockResolvedValue({ error: updateError ?? null }),
  };
  const chainable = {
    update: vi.fn(() => updateChain),
  };
  const client = {
    from: vi.fn(() => chainable),
  };
  mockCreateSupabaseServerClient.mockImplementation(async () => client as never);
  return client;
}

// ─── Tests ───────────────────────────────────────────────────

describe("updateUserXp", () => {
  beforeEach(() => {
    vi.resetAllMocks();

    mockComputeDailyStreakUpdate.mockReturnValue({
      daily_streak: 6,
      longest_daily_streak: 10,
      streak_freeze_remaining: 1,
      streak_frozen_on: null,
      justIncremented: true,
      justBroken: false,
      freezeUsed: false,
    });
  });

  it("calculates new XP and level correctly", async () => {
    setupSupabaseMock();
    const gamification = makeGamification({ xp: 100 });

    const result = await updateUserXp("user-1", 50, 3, gamification);

    expect(result.newXp).toBe(150);
    expect(result.newLevel).toBe(2); // getLevelForXp(150) = floor(150/100) + 1 = 2
  });

  it("returns daily streak info from computeDailyStreakUpdate", async () => {
    setupSupabaseMock();
    const gamification = makeGamification();

    const result = await updateUserXp("user-1", 10, 0, gamification);

    expect(result.dailyStreakInfo).toEqual({
      justIncremented: true,
      newDailyStreak: 6,
      freezeUsed: false,
    });
  });

  it("updates longest_streak when current streak is higher", async () => {
    const client = setupSupabaseMock();
    const gamification = makeGamification({ longest_streak: 3 });

    await updateUserXp("user-1", 10, 5, gamification);

    expect(client.from).toHaveBeenCalledWith("user_gamification");
  });

  it("throws when DB update fails", async () => {
    setupSupabaseMock({ message: "connection refused", code: "ECONNREFUSED" });
    const gamification = makeGamification();

    await expect(
      updateUserXp("user-1", 10, 0, gamification),
    ).rejects.toThrow("XP update failed");
  });

  it("passes gamification data to computeDailyStreakUpdate", async () => {
    setupSupabaseMock();
    const gamification = makeGamification({
      last_activity_date: "2026-03-23",
      daily_streak: 7,
      longest_daily_streak: 12,
      streak_freeze_remaining: 2,
      streak_frozen_on: null,
    });

    await updateUserXp("user-1", 10, 0, gamification);

    expect(mockComputeDailyStreakUpdate).toHaveBeenCalledWith(
      "2026-03-23",
      7,
      12,
      2,
      null,
      "2026-03-25",
    );
  });
});
