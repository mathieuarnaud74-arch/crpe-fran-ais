import { describe, it, expect, vi, beforeEach } from "vitest";

vi.mock("@/lib/env", () => ({
  env: { freeDailyQuestionLimit: 20 },
}));

import { getDailyRemainingQuota, canSubmitAttempt } from "@/lib/freemium";

// ─── getDailyRemainingQuota ─────────────────────────────────

describe("getDailyRemainingQuota", () => {
  it("returns remaining quota for free user under limit", () => {
    expect(getDailyRemainingQuota(5, false)).toBe(15);
  });

  it("returns 0 when free user reaches limit", () => {
    expect(getDailyRemainingQuota(20, false)).toBe(0);
  });

  it("returns 0 when free user exceeds limit", () => {
    expect(getDailyRemainingQuota(25, false)).toBe(0);
  });

  it("returns -1 sentinel for premium user", () => {
    expect(getDailyRemainingQuota(0, true)).toBe(-1);
  });

  it("returns -1 sentinel for premium user even with high attempts", () => {
    expect(getDailyRemainingQuota(999, true)).toBe(-1);
  });

  it("returns full quota when attempts is 0", () => {
    expect(getDailyRemainingQuota(0, false)).toBe(20);
  });
});

// ─── canSubmitAttempt ───────────────────────────────────────

describe("canSubmitAttempt", () => {
  it("allows free user under limit", () => {
    expect(canSubmitAttempt(19, false)).toBe(true);
  });

  it("blocks free user at limit", () => {
    expect(canSubmitAttempt(20, false)).toBe(false);
  });

  it("blocks free user over limit", () => {
    expect(canSubmitAttempt(25, false)).toBe(false);
  });

  it("always allows premium user", () => {
    expect(canSubmitAttempt(0, true)).toBe(true);
    expect(canSubmitAttempt(100, true)).toBe(true);
  });

  it("allows free user with 0 attempts", () => {
    expect(canSubmitAttempt(0, false)).toBe(true);
  });
});
