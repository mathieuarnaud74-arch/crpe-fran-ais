import { NextRequest, NextResponse } from "next/server";
import { createServerClient } from "@supabase/ssr";

import { env } from "@/lib/env";

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const code = searchParams.get("code");
  const rawNext = searchParams.get("next") ?? "/tableau-de-bord";
  const ALLOWED_REDIRECTS = new Set([
    "/",
    "/tableau-de-bord",
    "/francais",
    "/maths",
    "/diagnostic",
    "/reinitialiser-mot-de-passe",
  ]);
  const next = ALLOWED_REDIRECTS.has(rawNext) ? rawNext : "/tableau-de-bord";

  if (code) {
    const response = NextResponse.redirect(new URL(next, request.url));

    const supabase = createServerClient(env.supabaseUrl, env.supabaseAnonKey, {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(
          cookiesToSet: Array<{
            name: string;
            value: string;
            options?: Record<string, unknown>;
          }>,
        ) {
          cookiesToSet.forEach(({ name, value, options }) => {
            response.cookies.set(name, value, options);
          });
        },
      },
    });

    await supabase.auth.exchangeCodeForSession(code);

    return response;
  }

  return NextResponse.redirect(new URL("/connexion", request.url));
}
