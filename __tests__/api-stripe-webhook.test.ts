import { describe, it, expect, vi, beforeEach } from "vitest";

vi.mock("@/lib/env", () => ({
  env: {
    stripeWebhookSecret: "whsec_test",
    stripePricePremiumDailyId: "price_daily",
    stripePricePremiumWeeklyId: "price_weekly",
    stripePricePremiumMonthlyId: "price_monthly",
  },
  isStripeConfigured: vi.fn(),
}));

vi.mock("@/lib/stripe/server", () => ({
  getStripeServerClient: vi.fn(),
}));

vi.mock("@/lib/supabase/admin", () => ({
  createSupabaseAdminClient: vi.fn(),
}));

vi.mock("next/headers", () => ({
  headers: vi.fn(),
}));

import { POST } from "@/app/api/stripe/webhook/route";
import { isStripeConfigured } from "@/lib/env";
import { getStripeServerClient } from "@/lib/stripe/server";
import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { headers } from "next/headers";

const mockIsStripeConfigured = vi.mocked(isStripeConfigured);
const mockGetStripeServerClient = vi.mocked(getStripeServerClient);
const mockCreateSupabaseAdminClient = vi.mocked(createSupabaseAdminClient);
const mockHeaders = vi.mocked(headers);

function makeRequest(body = "raw-payload"): Request {
  return new Request("http://localhost/api/stripe/webhook", {
    method: "POST",
    body,
  });
}

function createMockAdminClient(upsertError: { message: string } | null = null) {
  const chainable = {
    upsert: vi.fn().mockResolvedValue({ error: upsertError }),
  };
  return {
    from: vi.fn(() => chainable),
    _chainable: chainable,
  };
}

function makeStripeEvent(type: string, dataObject: Record<string, unknown>) {
  return { type, data: { object: dataObject } };
}

describe("POST /api/stripe/webhook", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    mockIsStripeConfigured.mockReturnValue(true);
    mockHeaders.mockResolvedValue(new Headers({ "stripe-signature": "sig_test" }) as never);
  });

  it("returns 503 when Stripe is not configured", async () => {
    mockIsStripeConfigured.mockReturnValue(false);

    const response = await POST(makeRequest());
    expect(response.status).toBe(503);
  });

  it("returns 400 when stripe-signature header is missing", async () => {
    mockHeaders.mockResolvedValue(new Headers() as never);
    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn() },
    } as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(400);
    const data = await response.json();
    expect(data.error).toContain("Signature");
  });

  it("returns 400 when signature verification fails", async () => {
    mockGetStripeServerClient.mockReturnValue({
      webhooks: {
        constructEvent: vi.fn(() => {
          throw new Error("Invalid signature");
        }),
      },
    } as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(400);
  });

  it("handles checkout.session.completed with mode=subscription", async () => {
    const fakeSubscription = {
      id: "sub_123",
      customer: "cus_123",
      status: "active",
      current_period_end: Math.floor(Date.now() / 1000) + 86400,
      cancel_at_period_end: false,
      metadata: { user_id: "user-1" },
      items: { data: [{ price: { id: "price_monthly" }, metadata: {} }] },
    };

    const event = makeStripeEvent("checkout.session.completed", {
      mode: "subscription",
      subscription: "sub_123",
      metadata: { user_id: "user-1", price_id: "price_monthly" },
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
      subscriptions: { retrieve: vi.fn().mockResolvedValue(fakeSubscription) },
    } as never);

    const adminClient = createMockAdminClient();
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(200);
    const data = await response.json();
    expect(data.received).toBe(true);
    expect(adminClient._chainable.upsert).toHaveBeenCalled();
  });

  it("handles checkout.session.completed with mode=payment (one-time daily)", async () => {
    const event = makeStripeEvent("checkout.session.completed", {
      mode: "payment",
      metadata: { user_id: "user-1", price_id: "price_daily" },
      customer: "cus_123",
      payment_intent: "pi_123",
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
    } as never);

    const adminClient = createMockAdminClient();
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(200);
    expect(adminClient._chainable.upsert).toHaveBeenCalled();
  });

  it("does not upsert when checkout.session.completed has no user_id", async () => {
    const event = makeStripeEvent("checkout.session.completed", {
      mode: "subscription",
      subscription: "sub_123",
      metadata: {},
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
    } as never);

    const adminClient = createMockAdminClient();
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(200);
    expect(adminClient._chainable.upsert).not.toHaveBeenCalled();
  });

  it("handles customer.subscription.updated", async () => {
    const event = makeStripeEvent("customer.subscription.updated", {
      id: "sub_123",
      customer: "cus_123",
      status: "active",
      current_period_end: Math.floor(Date.now() / 1000) + 86400,
      cancel_at_period_end: false,
      metadata: { user_id: "user-1" },
      items: { data: [{ price: { id: "price_monthly" }, metadata: {} }] },
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
    } as never);

    const adminClient = createMockAdminClient();
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(200);
    expect(adminClient._chainable.upsert).toHaveBeenCalled();
  });

  it("handles customer.subscription.deleted", async () => {
    const event = makeStripeEvent("customer.subscription.deleted", {
      id: "sub_123",
      customer: "cus_123",
      status: "canceled",
      current_period_end: Math.floor(Date.now() / 1000),
      cancel_at_period_end: true,
      metadata: { user_id: "user-1" },
      items: { data: [{ price: { id: "price_monthly" }, metadata: {} }] },
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
    } as never);

    const adminClient = createMockAdminClient();
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(200);
    expect(adminClient._chainable.upsert).toHaveBeenCalled();
  });

  it("returns 500 when upsert fails", async () => {
    const event = makeStripeEvent("customer.subscription.updated", {
      id: "sub_123",
      customer: "cus_123",
      status: "active",
      current_period_end: Math.floor(Date.now() / 1000) + 86400,
      cancel_at_period_end: false,
      metadata: { user_id: "user-1" },
      items: { data: [{ price: { id: "price_monthly" }, metadata: {} }] },
    });

    mockGetStripeServerClient.mockReturnValue({
      webhooks: { constructEvent: vi.fn(() => event) },
    } as never);

    const adminClient = createMockAdminClient({ message: "DB error" });
    mockCreateSupabaseAdminClient.mockReturnValue(adminClient as never);

    const response = await POST(makeRequest());
    expect(response.status).toBe(500);
  });
});
