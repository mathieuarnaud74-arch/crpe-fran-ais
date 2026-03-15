/**
 * Script de bootstrap — compte administrateur
 *
 * Crée le compte admin, pose son rôle et son accès premium en base.
 * Si le compte existe déjà, met à jour le rôle, l'abonnement et
 * optionnellement le mot de passe (si BOOTSTRAP_ADMIN_PASSWORD est défini).
 *
 * Prérequis dans .env.local :
 *   NEXT_PUBLIC_SUPABASE_URL=https://xxxx.supabase.co
 *   SUPABASE_SERVICE_ROLE_KEY=eyJ...
 *   BOOTSTRAP_ADMIN_PASSWORD=votre-mot-de-passe-temporaire   ← requis, 8+ caractères
 *
 * Usage :
 *   npx dotenv -e .env.local -- npx tsx scripts/bootstrap-admin.ts
 */

import { createClient } from "@supabase/supabase-js";

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const ADMIN_PASSWORD = process.env.BOOTSTRAP_ADMIN_PASSWORD;
const ADMIN_EMAIL = "mathieu.arnaud74@gmail.com";

// --- Validation des variables d'environnement ---

if (!SUPABASE_URL || SUPABASE_URL.includes("placeholder")) {
  console.error("✗ NEXT_PUBLIC_SUPABASE_URL manquant ou invalide.");
  process.exit(1);
}

if (!SERVICE_ROLE_KEY || SERVICE_ROLE_KEY.includes("placeholder")) {
  console.error("✗ SUPABASE_SERVICE_ROLE_KEY manquant ou invalide.");
  process.exit(1);
}

if (!ADMIN_PASSWORD) {
  console.error(
    "✗ BOOTSTRAP_ADMIN_PASSWORD manquant.\n" +
    "  Ajoutez cette ligne dans votre .env.local :\n" +
    "  BOOTSTRAP_ADMIN_PASSWORD=votre-mot-de-passe-temporaire\n" +
    "  Le mot de passe doit faire au moins 8 caractères.",
  );
  process.exit(1);
}

if (ADMIN_PASSWORD.length < 8) {
  console.error(
    `✗ BOOTSTRAP_ADMIN_PASSWORD trop court (${ADMIN_PASSWORD.length} caractères).\n` +
    "  Minimum requis : 8 caractères (cohérent avec la politique du formulaire d'inscription).",
  );
  process.exit(1);
}

// --- Bootstrap ---

async function run() {
  const supabase = createClient(SUPABASE_URL!, SERVICE_ROLE_KEY!, {
    auth: { autoRefreshToken: false, persistSession: false },
  });

  console.log(`\n→ Recherche du compte : ${ADMIN_EMAIL}`);

  const { data: listData } = await supabase.auth.admin.listUsers({ perPage: 1000 });
  const existingUser = listData?.users?.find((u) => u.email === ADMIN_EMAIL);

  let userId: string;

  if (existingUser) {
    userId = existingUser.id;
    console.log(`  Compte existant trouvé (${userId})`);

    // Mise à jour du mot de passe sur un compte existant
    console.log("→ Mise à jour du mot de passe...");
    const { error: pwError } = await supabase.auth.admin.updateUserById(userId, {
      password: ADMIN_PASSWORD,
    });

    if (pwError) {
      console.error("  Erreur mise à jour mot de passe :", pwError.message);
      process.exit(1);
    }
    console.log("  Mot de passe mis à jour.");
  } else {
    console.log("  Création du compte...");
    const { data: userData, error: createError } = await supabase.auth.admin.createUser({
      email: ADMIN_EMAIL,
      password: ADMIN_PASSWORD,
      email_confirm: true,
    });

    if (createError || !userData.user) {
      console.error("  Erreur création compte :", createError?.message);
      process.exit(1);
    }

    userId = userData.user.id;
    console.log(`  Compte créé (${userId})`);
  }

  // Rôle admin
  console.log("→ Attribution du rôle admin...");
  const { error: profileError } = await supabase
    .from("profiles")
    .upsert({ id: userId, role: "admin" }, { onConflict: "id" });

  if (profileError) {
    console.error("  Erreur profil :", profileError.message);
    process.exit(1);
  }
  console.log("  Rôle admin posé.");

  // Abonnement premium (valable jusqu'en 2099)
  console.log("→ Attribution de l'accès premium...");
  const { error: subError } = await supabase
    .from("subscriptions")
    .upsert(
      {
        user_id: userId,
        status: "active",
        current_period_end: "2099-01-01T00:00:00Z",
        cancel_at_period_end: false,
      },
      { onConflict: "user_id" },
    );

  if (subError) {
    console.error("  Erreur subscription :", subError.message);
    process.exit(1);
  }
  console.log("  Accès premium actif.");

  console.log("\n✓ Bootstrap terminé.\n");
  console.log("  Email    :", ADMIN_EMAIL);
  console.log("  Mot de passe : celui défini dans BOOTSTRAP_ADMIN_PASSWORD");
  console.log("  ⚠ Supprimez BOOTSTRAP_ADMIN_PASSWORD de votre .env.local après connexion.\n");
}

run().catch((err) => {
  console.error("Erreur inattendue :", err);
  process.exit(1);
});
