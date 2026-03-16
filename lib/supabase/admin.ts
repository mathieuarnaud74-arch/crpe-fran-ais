import { createClient } from "@supabase/supabase-js";

import { env, isSupabaseAdminConfigured } from "@/lib/env";
import { Database } from "@/types/database";

let adminClient: ReturnType<typeof createClient<Database>> | null = null;

export function createSupabaseAdminClient() {
  if (!isSupabaseAdminConfigured()) {
    throw new Error(
      "SUPABASE_SERVICE_ROLE_KEY manquante. Configurez la variable d'environnement avant d'utiliser les routes Stripe.",
    );
  }

  if (!adminClient) {
    adminClient = createClient<Database>(env.supabaseUrl, env.supabaseServiceRoleKey, {
      auth: {
        autoRefreshToken: false,
        persistSession: false,
      },
    });
  }

  return adminClient;
}
