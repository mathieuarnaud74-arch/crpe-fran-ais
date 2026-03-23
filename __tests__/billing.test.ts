import { describe, it, expect, vi, beforeEach } from "vitest";

vi.mock("react", () => ({
  cache: vi.fn((fn: Function) => fn),
}));

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

import { isPremiumUser } from "@/features/billing/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";

const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);

function createMockSupabaseClient(subscriptionData: unknown) {
  const chainable = {
    select: vi.fn().mockReturnThis(),
    eq: vi.fn().mockReturnThis(),
    order: vi.fn().mockReturnThis(),
    limit: vi.fn().mockReturnThis(),
    maybeSingle: vi.fn().mockResolvedValue({ data: subscriptionData, error: null }),
  };
  return {
    from: vi.fn(() => chainable),
    auth: { getUser: vi.fn() },
  };
}

describe("isPremiumUser", () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it("returns false when no subscription exists", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(createMockSupabaseClient(null) as never);

    expect(await isPremiumUser("user-1")).toBe(false);
  });

  it("returns true for active subscription with future period end", async () => {
    const futureDate = new Date(Date.now() + 86_400_000).toISOString();
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ status: "active", current_period_end: futureDate }) as never,
    );

    expect(await isPremiumUser("user-2")).toBe(true);
  });

  it("returns true for trialing subscription with future period end", async () => {
    const futureDate = new Date(Date.now() + 86_400_000).toISOString();
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ status: "trialing", current_period_end: futureDate }) as never,
    );

    expect(await isPremiumUser("user-3")).toBe(true);
  });

  it("returns false for active subscription with past period end", async () => {
    const pastDate = new Date(Date.now() - 86_400_000).toISOString();
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ status: "active", current_period_end: pastDate }) as never,
    );

    expect(await isPremiumUser("user-4")).toBe(false);
  });

  it("returns false for canceled subscription", async () => {
    const futureDate = new Date(Date.now() + 86_400_000).toISOString();
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ status: "canceled", current_period_end: futureDate }) as never,
    );

    expect(await isPremiumUser("user-5")).toBe(false);
  });

  it("returns false for invalid period end date", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ status: "active", current_period_end: "not-a-date" }) as never,
    );

    expect(await isPremiumUser("user-6")).toBe(false);
  });
});
