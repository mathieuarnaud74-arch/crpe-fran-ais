"use server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { requireUser } from "@/features/auth/server/guards";

export async function markFicheReadAction(ficheSlug: string) {
  const user = await requireUser();
  const supabase = await createSupabaseServerClient();

  await supabase
    .from("fiche_completions")
    .upsert(
      { user_id: user.id, fiche_slug: ficheSlug },
      { onConflict: "user_id,fiche_slug" },
    );
}
