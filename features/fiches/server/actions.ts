"use server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getFicheBySlug } from "@/features/fiches/lib/get-fiche";
import { getCompletedFicheSlugs, getFicheReadsCountToday } from "@/features/fiches/server/queries";
import { canReadFiche } from "@/lib/freemium";

export async function markFicheReadAction(ficheSlug: string) {
  const user = await requireUser();
  const fiche = getFicheBySlug(ficheSlug);

  if (!fiche) return;

  const premium = await isPremiumUser(user.id);

  // Block marking premium fiches for non-subscribers
  if (fiche.accessTier === "premium" && !premium) return;

  // Allow re-reading already-completed fiches without counting toward quota
  const completedSlugs = await getCompletedFicheSlugs(user.id);
  if (completedSlugs.has(ficheSlug)) {
    // Already read — just update timestamp silently
    const supabase = await createSupabaseServerClient();
    await supabase
      .from("fiche_completions")
      .upsert(
        { user_id: user.id, fiche_slug: ficheSlug },
        { onConflict: "user_id,fiche_slug" },
      );
    return;
  }

  // Check daily quota for new fiches
  const ficheReadsToday = await getFicheReadsCountToday(user.id);
  if (!canReadFiche(ficheReadsToday, premium)) return;

  const supabase = await createSupabaseServerClient();
  await supabase
    .from("fiche_completions")
    .upsert(
      { user_id: user.id, fiche_slug: ficheSlug },
      { onConflict: "user_id,fiche_slug" },
    );
}
