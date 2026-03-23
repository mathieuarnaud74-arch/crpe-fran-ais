import { describe, it, expect, vi, beforeEach } from "vitest";

vi.mock("@/lib/env", () => ({
  env: { freeDailyQuestionLimit: 30, freeDailyFicheLimit: 5 },
}));

import { getDailyRemainingQuota, canSubmitAttempt, getDailyRemainingFicheQuota, canReadFiche } from "@/lib/freemium";

// ─── getDailyRemainingQuota ─────────────────────────────────

describe("getDailyRemainingQuota", () => {
  it("returns remaining quota for free user under limit", () => {
    expect(getDailyRemainingQuota(5, false)).toBe(25);
  });

  it("returns 0 when free user reaches limit", () => {
    expect(getDailyRemainingQuota(30, false)).toBe(0);
  });

  it("returns 0 when free user exceeds limit", () => {
    expect(getDailyRemainingQuota(35, false)).toBe(0);
  });

  it("returns -1 sentinel for premium user", () => {
    expect(getDailyRemainingQuota(0, true)).toBe(-1);
  });

  it("returns -1 sentinel for premium user even with high attempts", () => {
    expect(getDailyRemainingQuota(999, true)).toBe(-1);
  });

  it("returns full quota when attempts is 0", () => {
    expect(getDailyRemainingQuota(0, false)).toBe(30);
  });
});

// ─── canSubmitAttempt ───────────────────────────────────────

describe("canSubmitAttempt", () => {
  it("allows free user under limit", () => {
    expect(canSubmitAttempt(29, false)).toBe(true);
  });

  it("blocks free user at limit", () => {
    expect(canSubmitAttempt(30, false)).toBe(false);
  });

  it("blocks free user over limit", () => {
    expect(canSubmitAttempt(35, false)).toBe(false);
  });

  it("always allows premium user", () => {
    expect(canSubmitAttempt(0, true)).toBe(true);
    expect(canSubmitAttempt(100, true)).toBe(true);
  });

  it("allows free user with 0 attempts", () => {
    expect(canSubmitAttempt(0, false)).toBe(true);
  });
});

// ─── getDailyRemainingFicheQuota ────────────────────────────

describe("getDailyRemainingFicheQuota", () => {
  it("returns remaining fiche quota for free user under limit", () => {
    expect(getDailyRemainingFicheQuota(2, false)).toBe(3);
  });

  it("returns 0 when free user reaches fiche limit", () => {
    expect(getDailyRemainingFicheQuota(5, false)).toBe(0);
  });

  it("returns 0 when free user exceeds fiche limit", () => {
    expect(getDailyRemainingFicheQuota(8, false)).toBe(0);
  });

  it("returns -1 sentinel for premium user", () => {
    expect(getDailyRemainingFicheQuota(0, true)).toBe(-1);
  });

  it("returns -1 sentinel for premium user even with high reads", () => {
    expect(getDailyRemainingFicheQuota(999, true)).toBe(-1);
  });

  it("returns full fiche quota when reads is 0", () => {
    expect(getDailyRemainingFicheQuota(0, false)).toBe(5);
  });
});

// ─── canReadFiche ───────────────────────────────────────────

describe("canReadFiche", () => {
  it("allows free user under fiche limit", () => {
    expect(canReadFiche(4, false)).toBe(true);
  });

  it("blocks free user at fiche limit", () => {
    expect(canReadFiche(5, false)).toBe(false);
  });

  it("blocks free user over fiche limit", () => {
    expect(canReadFiche(8, false)).toBe(false);
  });

  it("always allows premium user", () => {
    expect(canReadFiche(0, true)).toBe(true);
    expect(canReadFiche(100, true)).toBe(true);
  });

  it("allows free user with 0 reads", () => {
    expect(canReadFiche(0, false)).toBe(true);
  });
});
