import { ResetPasswordForm } from "@/features/auth/components/reset-password-form";

export default function ReinitialiserMotDePassePage() {
  return (
    <div className="mt-6">
      <h1 className="font-serif text-4xl font-semibold text-ink">
        Nouveau mot de passe
      </h1>
      <p className="mt-3 text-sm leading-7 text-ink/72">
        Choisissez un nouveau mot de passe pour votre compte.
      </p>
      <div className="mt-8">
        <ResetPasswordForm />
      </div>
    </div>
  );
}
