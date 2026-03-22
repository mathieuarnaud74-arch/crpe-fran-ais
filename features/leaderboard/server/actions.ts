"use server";

import { revalidatePath } from "next/cache";

import { requireUser } from "@/features/auth/server/guards";
import { createSupabaseServerClient } from "@/lib/supabase/server";

export async function updateDisplayNameAction(
  _prev: { success: boolean; error?: string },
  formData: FormData,
): Promise<{ success: boolean; error?: string }> {
  const user = await requireUser();
  const raw = formData.get("display_name");

  if (typeof raw !== "string") {
    return { success: false, error: "Pseudo invalide." };
  }

  const displayName = raw.trim();

  if (displayName.length < 2 || displayName.length > 30) {
    return { success: false, error: "Le pseudo doit faire entre 2 et 30 caractères." };
  }

  const supabase = await createSupabaseServerClient();

  const { error } = await supabase
    .from("profiles")
    .update({ display_name: displayName })
    .eq("id", user.id);

  if (error) {
    console.error("[profile]", error.message);
    return { success: false, error: "Erreur lors de la mise à jour." };
  }

  revalidatePath("/profil");
  revalidatePath("/classement");

  return { success: true };
}
