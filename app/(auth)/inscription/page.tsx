import Link from "next/link";

import { AuthForm } from "@/features/auth/components/auth-form";

export default function InscriptionPage() {
  return (
    <div className="mt-6">
      <h1 className="font-serif text-4xl font-semibold text-ink">Créer votre compte gratuit</h1>
      <p className="mt-3 text-sm leading-7 text-ink/72">
        Commencez sans carte bancaire : vous pourrez lancer le diagnostic, sauvegarder vos résultats
        et accéder chaque jour à des questions corrigées.
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
