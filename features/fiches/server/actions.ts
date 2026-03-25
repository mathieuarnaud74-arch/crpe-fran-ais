"use server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getFicheBySlug } from "@/features/fiches/lib/get-fiche";
import { getCompletedFicheSlugs, getFicheReadsCountToday } from "@/features/fiches/server/queries";
import { canReadFiche } from "@/lib/freemium";

type FicheActionResult = {
  status: "success" | "error";
  message?: string;
};

export async function markFicheReadAction(ficheSlug: string): Promise<FicheActionResult> {
  const user = await requireUser();
  const fiche = getFicheBySlug(ficheSlug);

  if (!fiche) {
    console.warn("[fiches] fiche not found:", ficheSlug);
    return { status: "error", message: "Fiche introuvable." };
  }

  const premium = await isPremiumUser(user.id);

  if (fiche.accessTier === "premium" && !premium) {
    return { status: "error", message: "Cette fiche est réservée aux abonnés premium." };
  }

  // Allow re-reading already-completed fiches without counting toward quota
  const completedSlugs = await getCompletedFicheSlugs(user.id);
  if (completedSlugs.has(ficheSlug)) {
    const supabase = await createSupabaseServerClient();
    const { error } = await supabase
      .from("fiche_completions")
      .upsert(
        { user_id: user.id, fiche_slug: ficheSlug },
        { onConflict: "user_id,fiche_slug" },
      );
    if (error) console.error("[fiches] upsert re-read failed:", error.message);
    return { status: "success" };
  }

  // Check daily quota for new fiches
  const ficheReadsToday = await getFicheReadsCountToday(user.id);
  if (!canReadFiche(ficheReadsToday, premium)) {
    return { status: "error", message: "Quota de fiches atteint pour aujourd'hui." };
  }

  const supabase = await createSupabaseServerClient();
  const { error } = await supabase
    .from("fiche_completions")
    .upsert(
      { user_id: user.id, fiche_slug: ficheSlug },
      { onConflict: "user_id,fiche_slug" },
    );
  if (error) {
    console.error("[fiches] upsert new-read failed:", error.message);
    return { status: "error", message: "Impossible d'enregistrer la lecture." };
  }

  return { status: "success" };
}
