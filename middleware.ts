import { NextResponse, type NextRequest } from "next/server";
import { createServerClient } from "@supabase/ssr";

import { env, isSupabaseConfigured } from "@/lib/env";

// Routes under app/(app)/ that require authentication
const PROTECTED_PREFIXES = [
  "/tableau-de-bord",
  "/francais",
  "/maths",
  "/exercices",
  "/exercice-aleatoire",
  "/revision",
  "/classement",
  "/fiches",
  "/fiches-maths",
  "/historique",
  "/profil",
  "/progression",
  "/ressources",
  "/abonnement",
];

function isProtectedRoute(pathname: string): boolean {
  return PROTECTED_PREFIXES.some((prefix) => pathname === prefix || pathname.startsWith(prefix + "/"));
}

export async function middleware(request: NextRequest) {
  const response = NextResponse.next({
    request,
  });

  if (!isSupabaseConfigured()) return response;

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
          request.cookies.set(name, value);
          response.cookies.set(name, value, options);
        });
      },
    },
  });

  const { data: { user }, error: authError } = await supabase.auth.getUser();

  if ((!user || authError) && isProtectedRoute(request.nextUrl.pathname)) {
    return NextResponse.redirect(new URL("/connexion", request.url));
  }

  return response;
}

export const config = {
  matcher: ["/((?!_next/static|_next/image|favicon.ico).*)"],
};
