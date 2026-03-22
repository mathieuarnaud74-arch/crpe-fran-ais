import { type NextRequest, NextResponse } from "next/server";

import { rateLimit } from "@/lib/rate-limit";
import { getExercises } from "@/features/exercises/server/queries";

export async function GET(request: NextRequest) {
  try {
    const ip = request.headers.get("x-forwarded-for") ?? "unknown";
    const rl = rateLimit(`random-exercise:${ip}`, { limit: 60, windowSeconds: 60 });
    if (!rl.success) {
      return NextResponse.json(
        { error: "Trop de requêtes. Réessaie dans quelques instants." },
        { status: 429, headers: { "Retry-After": String(Math.ceil((rl.resetAt - Date.now()) / 1000)) } },
      );
    }

    const sessions = await getExercises();
    const base = request.nextUrl.origin;

    if (sessions.length === 0) {
      return NextResponse.redirect(new URL("/exercices", base));
    }

    const random = sessions[Math.floor(Math.random() * sessions.length)];

    return NextResponse.redirect(new URL(`/exercices/${random.id}`, base));
  } catch (error) {
    const message = error instanceof Error ? error.message : "Unknown error";
    console.error("[random-exercise]", message);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
