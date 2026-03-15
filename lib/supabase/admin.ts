import { createClient } from "@supabase/supabase-js";

import { env, isSupabaseAdminConfigured } from "@/lib/env";

let adminClient: any = null;

export function createSupabaseAdminClient(): any {
  if (!isSupabaseAdminConfigured()) {
    throw new Error(
      "SUPABASE_SERVICE_ROLE_KEY manquante. Configurez la variable d'environnement avant d'utiliser les routes Stripe.",
    );
  }

  if (!adminClient) {
    adminClient = createClient(env.supabaseUrl, env.supabaseServiceRoleKey, {
      auth: {
        autoRefreshToken: false,
        persistSession: false,
      },
    });
  }

  return adminClient;
}
