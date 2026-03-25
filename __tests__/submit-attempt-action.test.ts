import { describe, it, expect, vi, beforeEach } from "vitest";

// ─── Mocks ───────────────────────────────────────────────────

vi.mock("next/cache", () => ({
  revalidatePath: vi.fn(),
}));

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

vi.mock("@/features/exercises/server/queries", () => ({
  getExerciseById: vi.fn(),
  getAttemptsCountToday: vi.fn(),
}));

vi.mock("@/features/billing/server/queries", () => ({
  isPremiumUser: vi.fn(),
}));

vi.mock("@/features/gamification/server/queries", () => ({
  getUserGamification: vi.fn(),
  updateUserXp: vi.fn(),
}));

vi.mock("@/features/srs/server/queries", () => ({
  recordSrsReview: vi.fn(),
}));

vi.mock("@/lib/freemium", () => ({
  canSubmitAttempt: vi.fn(),
}));

vi.mock("@/lib/env", () => ({
  env: { freeDailyQuestionLimit: 30 },
}));

import { submitAttemptAction } from "@/features/exercises/server/actions";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { getExerciseById, getAttemptsCountToday } from "@/features/exercises/server/queries";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getUserGamification, updateUserXp } from "@/features/gamification/server/queries";
import { canSubmitAttempt } from "@/lib/freemium";
import { revalidatePath } from "next/cache";

const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);
const mockGetExerciseById = vi.mocked(getExerciseById);
const mockGetAttemptsCountToday = vi.mocked(getAttemptsCountToday);
const mockIsPremiumUser = vi.mocked(isPremiumUser);
const mockGetUserGamification = vi.mocked(getUserGamification);
const mockUpdateUserXp = vi.mocked(updateUserXp);
const mockCanSubmitAttempt = vi.mocked(canSubmitAttempt);
const mockRevalidatePath = vi.mocked(revalidatePath);

// ─── Helpers ─────────────────────────────────────────────────

function makeFormData(fields: Record<string, string>): FormData {
  const fd = new FormData();
  for (const [key, value] of Object.entries(fields)) {
    fd.append(key, value);
  }
  return fd;
}

function makeExercise(overrides?: Record<string, unknown>) {
  return {
    id: "ex-1",
    subject: "Francais",
    subdomain: "grammaire",
    exercise_type: "qcm",
    instruction: "Quelle est la nature du mot ?",
    support_text: null,
    choices: [
      { id: "a", label: "Nom" },
      { id: "b", label: "Verbe" },
    ],
    expected_answer: { mode: "single_choice", value: "a" },
    detailed_explanation: "Explication détaillée.",
    is_published: true,
    series_order: 1,
    validation_status: "valide",
    source: null,
    created_at: "2026-01-01",
    updated_at: "2026-01-01",
    ...overrides,
  };
}

function makeDefaultGamification() {
  return {
    user_id: "user-1",
    xp: 100,
    level: 2,
    current_streak: 0,
    longest_streak: 0,
    last_activity_date: null,
    sound_enabled: true,
    reduced_animations: false,
    daily_goal: 10,
    personal_best_sprint_time: null,
    onboarding_completed: false,
    daily_streak: 0,
    longest_daily_streak: 0,
    streak_freeze_remaining: 0,
    streak_frozen_on: null,
  };
}

function setupSupabaseMock(user: { id: string } | null, insertError?: unknown) {
  const chainable = {
    insert: vi.fn().mockResolvedValue({ error: insertError ?? null }),
  };
  const client = {
    from: vi.fn(() => chainable),
    auth: {
      getUser: vi.fn().mockResolvedValue({
        data: { user },
      }),
    },
    _chainable: chainable,
  };
  mockCreateSupabaseServerClient.mockImplementation(async () => client as never);
  return client;
}

const idleState = { status: "idle" as const };

// ─── Tests ───────────────────────────────────────────────────

describe("submitAttemptAction", () => {
  beforeEach(() => {
    vi.resetAllMocks();

    // Default: authenticated user, exercise exists, can submit
    setupSupabaseMock({ id: "user-1" });
    mockGetExerciseById.mockResolvedValue(makeExercise() as never);
    mockGetAttemptsCountToday.mockResolvedValue(0);
    mockIsPremiumUser.mockResolvedValue(false);
    mockCanSubmitAttempt.mockReturnValue(true);
    mockGetUserGamification.mockResolvedValue(makeDefaultGamification());
    mockUpdateUserXp.mockResolvedValue({
      newLevel: 2,
      dailyStreakInfo: { justIncremented: false, newDailyStreak: 0, freezeUsed: false },
    } as never);
  });

  it("returns error when user is not connected", async () => {
    setupSupabaseMock(null);

    const result = await submitAttemptAction(idleState, makeFormData({ exerciseId: "ex-1", answer: "a" }));
    expect(result.status).toBe("error");
    expect(result.message).toContain("connecté");
  });

  it("returns error when exercise is not found", async () => {
    mockGetExerciseById.mockResolvedValue(null);

    const result = await submitAttemptAction(idleState, makeFormData({ exerciseId: "ex-404", answer: "a" }));
    expect(result.status).toBe("error");
    expect(result.message).toContain("introuvable");
  });

  it("returns error when free quota is exhausted", async () => {
    mockCanSubmitAttempt.mockReturnValue(false);

    const result = await submitAttemptAction(idleState, makeFormData({ exerciseId: "ex-1", answer: "a" }));
    expect(result.status).toBe("error");
    expect(result.message).toContain("quota");
  });

  it("returns success with isCorrect=true for correct QCM answer", async () => {
    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-1" }),
    );
    expect(result.status).toBe("success");
    expect(result.isCorrect).toBe(true);
    expect(result.xpEarned).toBeGreaterThan(0);
  });

  it("returns success with isCorrect=false for incorrect QCM answer", async () => {
    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "b", sessionId: "session-1" }),
    );
    expect(result.status).toBe("success");
    expect(result.isCorrect).toBe(false);
  });

  it("returns error when insert attempts fails", async () => {
    setupSupabaseMock({ id: "user-1" }, { message: "DB error" });

    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-1" }),
    );
    expect(result.status).toBe("error");
    expect(result.message).toContain("tentative");
  });

  it("detects level up", async () => {
    mockGetUserGamification.mockResolvedValue({
      ...makeDefaultGamification(),
      xp: 95,
      level: 1,
    });
    mockUpdateUserXp.mockResolvedValue({
      newLevel: 2,
      dailyStreakInfo: { justIncremented: false, newDailyStreak: 0, freezeUsed: false },
    } as never);

    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-1" }),
    );
    expect(result.status).toBe("success");
    expect(result.previousLevel).toBe(1);
    expect(result.newLevel).toBe(2);
  });

  it("returns dailyStreakIncremented when streak is incremented", async () => {
    mockUpdateUserXp.mockResolvedValue({
      newLevel: 2,
      dailyStreakInfo: { justIncremented: true, newDailyStreak: 5, freezeUsed: false },
    } as never);

    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-1" }),
    );
    expect(result.status).toBe("success");
    expect(result.dailyStreakIncremented).toBe(true);
    expect(result.newDailyStreak).toBe(5);
  });

  it("does not call revalidatePath for virtual sessions", async () => {
    await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "random-abc123" }),
    );
    expect(mockRevalidatePath).not.toHaveBeenCalled();
  });

  it("calls revalidatePath for normal sessions", async () => {
    await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-grammaire-1" }),
    );
    expect(mockRevalidatePath).toHaveBeenCalledWith("/tableau-de-bord");
    expect(mockRevalidatePath).toHaveBeenCalledTimes(1);
  });

  it("fails gracefully when gamification module throws", async () => {
    mockGetUserGamification.mockRejectedValue(new Error("Table does not exist"));
    mockUpdateUserXp.mockRejectedValue(new Error("Table does not exist"));

    const result = await submitAttemptAction(
      idleState,
      makeFormData({ exerciseId: "ex-1", answer: "a", sessionId: "session-1" }),
    );
    expect(result.status).toBe("success");
  });
});
