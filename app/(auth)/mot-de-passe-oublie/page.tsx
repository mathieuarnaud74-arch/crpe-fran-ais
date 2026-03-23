import Link from "next/link";

import { ForgotPasswordForm } from "@/features/auth/components/forgot-password-form";

export default function MotDePasseOubliePage() {
  return (
    <div className="mt-6">
      <h1 className="font-serif text-4xl font-semibold text-ink">
        Mot de passe oublié
      </h1>
      <p className="mt-3 text-sm leading-7 text-ink/72">
        Entrez votre adresse email et nous vous enverrons un lien pour réinitialiser votre mot de passe.
      </p>
      <div className="mt-8">
        <ForgotPasswordForm />
      </div>
      <p className="mt-6 text-sm text-ink/70">
        <Link href="/connexion" className="font-semibold text-accent">
          ← Retour à la connexion
        </Link>
      </p>
    </div>
  );
}
