import { createClient } from "@supabase/supabase-js";

import { env, isSupabaseAdminConfigured } from "@/lib/env";
import { Database } from "@/types/database";

export function createSupabaseAdminClient() {
  if (!isSupabaseAdminConfigured()) {
    throw new Error(
      "SUPABASE_SERVICE_ROLE_KEY manquante. Configurez la variable d'environnement avant d'utiliser les routes Stripe.",
    );
  }

  return createClient<Database>(env.supabaseUrl, env.supabaseServiceRoleKey, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
  });
}
