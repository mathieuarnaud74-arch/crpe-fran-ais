/**
 * Simple in-memory rate limiter using a sliding window.
 * Suitable for single-instance deployments (Vercel serverless will reset between cold starts).
 */

type RateLimitEntry = { count: number; resetAt: number };

const store = new Map<string, RateLimitEntry>();

// Clean up expired entries periodically
setInterval(() => {
  const now = Date.now();
  for (const [key, entry] of store) {
    if (entry.resetAt <= now) store.delete(key);
  }
}, 60_000);

type RateLimitConfig = {
  /** Max requests allowed in the window */
  limit: number;
  /** Window duration in seconds */
  windowSeconds: number;
};

type RateLimitResult = {
  success: boolean;
  limit: number;
  remaining: number;
  resetAt: number;
};

export function rateLimit(key: string, config: RateLimitConfig): RateLimitResult {
  const now = Date.now();
  const windowMs = config.windowSeconds * 1000;
  const entry = store.get(key);

  if (!entry || entry.resetAt <= now) {
    store.set(key, { count: 1, resetAt: now + windowMs });
    return { success: true, limit: config.limit, remaining: config.limit - 1, resetAt: now + windowMs };
  }

  if (entry.count >= config.limit) {
    return { success: false, limit: config.limit, remaining: 0, resetAt: entry.resetAt };
  }

  entry.count++;
  return { success: true, limit: config.limit, remaining: config.limit - entry.count, resetAt: entry.resetAt };
}
