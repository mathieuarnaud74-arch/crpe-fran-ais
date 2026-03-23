import { describe, it, expect, vi, beforeEach } from "vitest";
import { NextRequest } from "next/server";

vi.mock("@/lib/supabase/server", () => ({
  createSupabaseServerClient: vi.fn(),
}));

vi.mock("@/lib/rate-limit", () => ({
  rateLimit: vi.fn(),
}));

import { POST } from "@/app/api/diagnostic/complete/route";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { rateLimit } from "@/lib/rate-limit";

const mockCreateSupabaseServerClient = vi.mocked(createSupabaseServerClient);
const mockRateLimit = vi.mocked(rateLimit);

function makeRequest(body: unknown): NextRequest {
  return new NextRequest("http://localhost/api/diagnostic/complete", {
    method: "POST",
    body: JSON.stringify(body),
    headers: { "Content-Type": "application/json" },
  });
}

function makeValidBody() {
  return {
    score: 15,
    total: 20,
    profileLabel: "Bon niveau",
    subdomains: {
      grammaire: { score: 5, total: 7, label: "Grammaire" },
      orthographe: { score: 10, total: 13, label: "Orthographe" },
    },
  };
}

function createMockSupabaseClient(overrides?: {
  userData?: { user: { id: string } | null };
  authError?: { message: string } | null;
  insertError?: { code: string; message: string } | null;
}) {
  const insertChainable = {
    insert: vi.fn().mockResolvedValue({ error: overrides?.insertError ?? null }),
  };

  return {
    from: vi.fn(() => insertChainable),
    auth: {
      getUser: vi.fn().mockResolvedValue({
        data: overrides?.userData ?? { user: { id: "user-123" } },
        error: overrides?.authError ?? null,
      }),
    },
  };
}

describe("POST /api/diagnostic/complete", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    mockRateLimit.mockReturnValue({ success: true, limit: 10, remaining: 9, resetAt: Date.now() + 60_000 });
  });

  it("returns 401 when user is not authenticated", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ userData: { user: null } }) as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(401);
  });

  it("returns 401 when auth returns an error", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({
        userData: { user: null },
        authError: { message: "Token expired" },
      }) as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(401);
  });

  it("returns 400 for invalid JSON body", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient() as never,
    );

    const request = new NextRequest("http://localhost/api/diagnostic/complete", {
      method: "POST",
      body: "not-json{",
      headers: { "Content-Type": "application/json" },
    });

    const response = await POST(request);
    expect(response.status).toBe(400);
    const data = await response.json();
    expect(data.error).toBe("Invalid JSON body");
  });

  it("returns 400 when body fails Zod validation", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient() as never,
    );

    const response = await POST(makeRequest({ score: "not-a-number" }));
    expect(response.status).toBe(400);
    const data = await response.json();
    expect(data.error).toBe("Données invalides");
    expect(data.details).toBeDefined();
  });

  it("returns { ok: true } on successful insert", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient() as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(200);
    const data = await response.json();
    expect(data.ok).toBe(true);
  });

  it("returns { ok: true } on duplicate key (23505)", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ insertError: { code: "23505", message: "duplicate" } }) as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(200);
    const data = await response.json();
    expect(data.ok).toBe(true);
  });

  it("returns 500 on other database errors", async () => {
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient({ insertError: { code: "42000", message: "something failed" } }) as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(500);
  });

  it("returns 429 when rate limit is exceeded", async () => {
    mockRateLimit.mockReturnValue({ success: false, limit: 10, remaining: 0, resetAt: Date.now() + 30_000 });
    mockCreateSupabaseServerClient.mockResolvedValue(
      createMockSupabaseClient() as never,
    );

    const response = await POST(makeRequest(makeValidBody()));
    expect(response.status).toBe(429);
    expect(response.headers.get("Retry-After")).toBeDefined();
  });
});
