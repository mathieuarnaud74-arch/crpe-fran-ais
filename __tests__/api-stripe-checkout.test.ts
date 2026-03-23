import { describe, it, expect, vi, beforeEach } from "vitest";

vi.mock("@/lib/env", () => ({
  env: {
    stripePricePremiumDailyId: "price_daily",
    stripePricePremiumWeeklyId: "price_weekly",
    stripePricePremiumMonthlyId: "price_monthly",
    stripeSecretKey: "sk_test_xxx",
    stripeWebhookSecret: "whsec_test",
    appUrl: "http://localhost:3000",
  },
  isStripeConfigured: vi.fn(),
}));

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

vi.mock("@/lib/supabase/admin", () => ({
  createSupabaseAdminClient: vi.fn(),
}));

vi.mock("@/lib/stripe/server", () => ({
  getStripeServerClient: vi.fn(),
}));

vi.mock("@/lib/rate-limit", () => ({
  rateLimit: vi.fn(),
}));

import { POST } from "@/app/api/stripe/checkout/route";
import { isStripeConfigured } from "@/lib/env";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { getStripeServerClient } from "@/lib/stripe/server";
import { rateLimit } from "@/lib/rate-limit";

const mockIsStripeConfigured = vi.mocked(isStripeConfigured);
const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);
const mockCreateSupabaseAdminClient = vi.mocked(createSupabaseAdminClient);
const mockGetStripeServerClient = vi.mocked(getStripeServerClient);
const mockRateLimit = vi.mocked(rateLimit);

function makeRequest(body?: Record<string, unknown>): Request {
  return new Request("http://localhost/api/stripe/checkout", {
    method: "POST",
    body: JSON.stringify(body ?? {}),
    headers: { "Content-Type": "application/json" },
  });
}

function createMockAuthClient(user: { id: string; email: string } | null) {
  return {
    auth: {
      getUser: vi.fn().mockResolvedValue({
        data: { user },
        error: null,
      }),
    },
  };
}

function createMockAdminClient(subscriptionData: unknown = null, dbError: unknown = null) {
  const chainable = {
    select: vi.fn().mockReturnThis(),
    eq: vi.fn().mockReturnThis(),
    order: vi.fn().mockReturnThis(),
    limit: vi.fn().mockReturnThis(),
    maybeSingle: vi.fn().mockResolvedValue({ data: subscriptionData, error: dbError }),
  };
  return {
    from: vi.fn(() => chainable),
  };
}

describe("POST /api/stripe/checkout", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    mockIsStripeConfigured.mockReturnValue(true);
    mockRateLimit.mockReturnValue({ success: true, limit: 5, remaining: 4, resetAt: Date.now() + 60_000 });
  });

  it("returns 503 when Stripe is not configured", async () => {
    mockIsStripeConfigured.mockReturnValue(false);

    const response = await POST(makeRequest());
    expect(response.status).toBe(503);
  });

  it("returns 401 when user is not authenticated", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(createMockAuthClient(null) as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(401);
  });

  it("returns 400 for unknown priceId", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockAuthClient({ id: "user-1", email: "test@test.com" }) as never,
    );
    mockCreateSupabaseAdminClient.mockReturnValue(createMockAdminClient() as never);

    const response = await POST(makeRequest({ priceId: "price_unknown" }));
    expect(response.status).toBe(400);
  });

  it("returns checkout URL on happy path (monthly)", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockAuthClient({ id: "user-1", email: "test@test.com" }) as never,
    );
    mockCreateSupabaseAdminClient.mockReturnValue(createMockAdminClient() as never);
    mockGetStripeServerClient.mockReturnValue({
      checkout: {
        sessions: {
          create: vi.fn().mockResolvedValue({ url: "https://checkout.stripe.com/session" }),
        },
      },
    } as never);

    const response = await POST(makeRequest({ priceId: "price_monthly" }));
    expect(response.status).toBe(200);
    const data = await response.json();
    expect(data.url).toBe("https://checkout.stripe.com/session");
  });

  it("uses existing customer ID when subscription exists", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockAuthClient({ id: "user-1", email: "test@test.com" }) as never,
    );
    mockCreateSupabaseAdminClient.mockReturnValue(
      createMockAdminClient({ stripe_customer_id: "cus_existing" }) as never,
    );

    const mockSessionCreate = vi.fn().mockResolvedValue({ url: "https://checkout.stripe.com/session" });
    mockGetStripeServerClient.mockReturnValue({
      checkout: { sessions: { create: mockSessionCreate } },
    } as never);

    await POST(makeRequest({ priceId: "price_monthly" }));

    expect(mockSessionCreate).toHaveBeenCalledWith(
      expect.objectContaining({ customer: "cus_existing" }),
    );
  });

  it("returns 429 when rate limit is exceeded", async () => {
    mockRateLimit.mockReturnValue({ success: false, limit: 5, remaining: 0, resetAt: Date.now() + 30_000 });
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockAuthClient({ id: "user-1", email: "test@test.com" }) as never,
    );

    const response = await POST(makeRequest());
    expect(response.status).toBe(429);
  });

  it("returns 502 when stripe.checkout.sessions.create throws", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockAuthClient({ id: "user-1", email: "test@test.com" }) as never,
    );
    mockCreateSupabaseAdminClient.mockReturnValue(createMockAdminClient() as never);
    mockGetStripeServerClient.mockReturnValue({
      checkout: {
        sessions: {
          create: vi.fn().mockRejectedValue(new Error("Stripe error")),
        },
      },
    } as never);

    const response = await POST(makeRequest({ priceId: "price_monthly" }));
    expect(response.status).toBe(502);
  });
});
