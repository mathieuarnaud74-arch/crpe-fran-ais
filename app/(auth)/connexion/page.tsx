import Link from "next/link";

import { AuthForm } from "@/features/auth/components/auth-form";

export default function ConnexionPage() {
  return (
    <div className="mt-6">
      <h1 className="font-serif text-4xl font-semibold text-ink">Connexion</h1>
      <p className="mt-3 text-sm leading-7 text-ink/72">
        Connectez-vous pour accéder à vos exercices, votre historique et votre abonnement.
      </p>
      <div className="mt-8">
        <AuthForm mode="signin" />
      </div>
      <div className="mt-6 space-y-3 text-sm text-ink/70">
        <p>
          Mot de passe oublié ?{" "}
          <Link href="/mot-de-passe-oublie" className="font-semibold text-accent">
            Réinitialiser
          </Link>
        </p>
        <p>
          Pas encore de compte ?{" "}
          <Link href="/inscription" className="font-semibold text-accent">
            Créer un compte
          </Link>
        </p>
      </div>
    </div>
  );
}

