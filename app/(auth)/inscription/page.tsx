import Link from "next/link";

import { AuthForm } from "@/features/auth/components/auth-form";

export default function InscriptionPage() {
  return (
    <div className="mt-6">
      <h1 className="font-serif text-4xl font-semibold text-ink">Inscription</h1>
      <p className="mt-3 text-sm leading-7 text-ink/72">
        Créez un compte pour démarrer gratuitement et débloquer ensuite le premium mensuel si besoin.
      </p>
      <div className="mt-8">
        <AuthForm mode="signup" />
      </div>
      <p className="mt-6 text-sm text-ink/70">
        Vous avez déjà un compte ?{" "}
        <Link href="/connexion" className="font-semibold text-accent">
          Se connecter
        </Link>
      </p>
    </div>
  );
}

