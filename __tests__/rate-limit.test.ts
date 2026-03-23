import { describe, it, expect, vi, beforeEach, afterEach } from "vitest";

import { rateLimit } from "@/lib/rate-limit";

describe("rateLimit", () => {
  beforeEach(() => {
    vi.useFakeTimers();
  });

  afterEach(() => {
    vi.useRealTimers();
  });

  it("first request returns success with remaining = limit - 1", () => {
    const result = rateLimit("test-first", { limit: 5, windowSeconds: 60 });
    expect(result.success).toBe(true);
    expect(result.remaining).toBe(4);
    expect(result.limit).toBe(5);
  });

  it("remaining decrements on each request", () => {
    const config = { limit: 3, windowSeconds: 60 };
    const r1 = rateLimit("test-decrement", config);
    const r2 = rateLimit("test-decrement", config);
    const r3 = rateLimit("test-decrement", config);

    expect(r1.remaining).toBe(2);
    expect(r2.remaining).toBe(1);
    expect(r3.remaining).toBe(0);
  });

  it("blocks requests beyond the limit", () => {
    const config = { limit: 2, windowSeconds: 60 };
    rateLimit("test-block", config);
    rateLimit("test-block", config);

    const blocked = rateLimit("test-block", config);
    expect(blocked.success).toBe(false);
    expect(blocked.remaining).toBe(0);
  });

  it("resets counter after window expiration", () => {
    const config = { limit: 2, windowSeconds: 10 };
    rateLimit("test-reset", config);
    rateLimit("test-reset", config);

    // Advance past the window
    vi.advanceTimersByTime(11_000);

    const result = rateLimit("test-reset", config);
    expect(result.success).toBe(true);
    expect(result.remaining).toBe(1);
  });

  it("different keys are independent", () => {
    const config = { limit: 1, windowSeconds: 60 };
    rateLimit("key-a", config);

    const resultB = rateLimit("key-b", config);
    expect(resultB.success).toBe(true);
    expect(resultB.remaining).toBe(0);

    const blockedA = rateLimit("key-a", config);
    expect(blockedA.success).toBe(false);
  });

  it("resetAt is coherent with the window", () => {
    const now = Date.now();
    const config = { limit: 5, windowSeconds: 30 };
    const result = rateLimit("test-resetAt", config);

    expect(result.resetAt).toBe(now + 30_000);
  });
});
