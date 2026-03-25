import { describe, it, expect, vi, beforeEach } from "vitest";

// ─── Mocks ───────────────────────────────────────────────────

vi.mock("@/features/auth/server/guards", () => ({
  requireUser: vi.fn(),
}));

vi.mock("@/features/billing/server/queries", () => ({
  isPremiumUser: vi.fn(),
}));

vi.mock("@/features/fiches/lib/get-fiche", () => ({
  getFicheBySlug: vi.fn(),
}));

vi.mock("@/features/fiches/server/queries", () => ({
  getCompletedFicheSlugs: vi.fn(),
  getFicheReadsCountToday: vi.fn(),
}));

vi.mock("@/lib/freemium", () => ({
  canReadFiche: vi.fn(),
}));

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

import { markFicheReadAction } from "@/features/fiches/server/actions";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getFicheBySlug } from "@/features/fiches/lib/get-fiche";
import { getCompletedFicheSlugs, getFicheReadsCountToday } from "@/features/fiches/server/queries";
import { canReadFiche } from "@/lib/freemium";
import { createSupabaseServerClient } from "@/lib/supabase/server";

const mockRequireUser = vi.mocked(requireUser);
const mockIsPremiumUser = vi.mocked(isPremiumUser);
const mockGetFicheBySlug = vi.mocked(getFicheBySlug);
const mockGetCompletedFicheSlugs = vi.mocked(getCompletedFicheSlugs);
const mockGetFicheReadsCountToday = vi.mocked(getFicheReadsCountToday);
const mockCanReadFiche = vi.mocked(canReadFiche);
const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);

// ─── Helpers ─────────────────────────────────────────────────

function setupSupabaseMock(upsertError?: unknown) {
  const chainable = {
    upsert: vi.fn().mockResolvedValue({ error: upsertError ?? null }),
  };
  const client = {
    from: vi.fn(() => chainable),
  };
  mockCreateSupabaseServerClient.mockImplementation(async () => client as never);
  return client;
}

function makeFiche(overrides?: Record<string, unknown>) {
  return {
    slug: "grammaire-101",
    title: "Les accords",
    accessTier: "free",
    ...overrides,
  };
}

// ─── Tests ───────────────────────────────────────────────────

describe("markFicheReadAction", () => {
  beforeEach(() => {
    vi.resetAllMocks();

    mockRequireUser.mockResolvedValue({ id: "user-1" } as never);
    mockIsPremiumUser.mockResolvedValue(false);
    mockGetFicheBySlug.mockReturnValue(makeFiche() as never);
    mockGetCompletedFicheSlugs.mockResolvedValue(new Set());
    mockGetFicheReadsCountToday.mockResolvedValue(0);
    mockCanReadFiche.mockReturnValue(true);
    setupSupabaseMock();
  });

  it("does nothing when fiche slug is unknown", async () => {
    mockGetFicheBySlug.mockReturnValue(undefined as never);

    await markFicheReadAction("unknown-slug");
    expect(mockCreateSupabaseServerClient).not.toHaveBeenCalled();
  });

  it("blocks non-premium user from reading premium fiche", async () => {
    mockGetFicheBySlug.mockReturnValue(makeFiche({ accessTier: "premium" }) as never);
    mockIsPremiumUser.mockResolvedValue(false);

    await markFicheReadAction("premium-fiche");
    expect(mockGetCompletedFicheSlugs).not.toHaveBeenCalled();
  });

  it("allows premium user to read premium fiche", async () => {
    mockGetFicheBySlug.mockReturnValue(makeFiche({ accessTier: "premium" }) as never);
    mockIsPremiumUser.mockResolvedValue(true);
    setupSupabaseMock();

    await markFicheReadAction("premium-fiche");
    expect(mockGetCompletedFicheSlugs).toHaveBeenCalled();
  });

  it("re-reads already completed fiche without counting toward quota", async () => {
    mockGetCompletedFicheSlugs.mockResolvedValue(new Set(["grammaire-101"]));
    const client = setupSupabaseMock();

    await markFicheReadAction("grammaire-101");

    // Should upsert (update timestamp) but NOT check quota
    expect(mockGetFicheReadsCountToday).not.toHaveBeenCalled();
    expect(client.from).toHaveBeenCalledWith("fiche_completions");
  });

  it("blocks when daily quota is exhausted", async () => {
    mockCanReadFiche.mockReturnValue(false);

    await markFicheReadAction("grammaire-101");
    // Should not attempt to insert
    expect(mockCreateSupabaseServerClient).not.toHaveBeenCalled();
  });

  it("inserts new fiche completion for first read within quota", async () => {
    const client = setupSupabaseMock();

    await markFicheReadAction("grammaire-101");

    expect(client.from).toHaveBeenCalledWith("fiche_completions");
  });

  it("handles upsert error gracefully", async () => {
    const consoleSpy = vi.spyOn(console, "error").mockImplementation(() => {});
    setupSupabaseMock({ message: "DB error", code: "42000" });

    await markFicheReadAction("grammaire-101");

    expect(consoleSpy).toHaveBeenCalledWith(
      expect.stringContaining("[fiches]"),
      expect.stringContaining("DB error"),
    );
    consoleSpy.mockRestore();
  });
});
