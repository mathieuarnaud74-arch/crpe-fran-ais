"use client";

import { useState } from "react";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { createSupabaseBrowserClient } from "@/lib/supabase/client";

export function ForgotPasswordForm() {
  const supabase = createSupabaseBrowserClient();
  const [email, setEmail] = useState("");
  const [message, setMessage] = useState("");
  const [isSuccess, setIsSuccess] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setIsLoading(true);
    setMessage("");

    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: `${process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000"}/api/auth/callback?next=/reinitialiser-mot-de-passe`,
    });

    if (error) {
      if (error.message.toLowerCase().includes("rate limit")) {
        setMessage("Trop de tentatives. Veuillez réessayer dans quelques minutes.");
      } else {
        setMessage("Une erreur est survenue. Veuillez réessayer.");
      }
      setIsLoading(false);
      return;
    }

    setIsSuccess(true);
    setMessage(
      "Si un compte existe avec cette adresse, vous recevrez un email avec un lien de réinitialisation.",
    );
    setIsLoading(false);
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      <div className="space-y-2">
        <Label htmlFor="email">Adresse email</Label>
        <Input
          id="email"
          type="email"
          autoComplete="email"
          autoFocus
          required
          value={email}
          onChange={(event) => setEmail(event.target.value)}
          placeholder="vous@exemple.fr"
          disabled={isSuccess}
        />
      </div>
      {message ? (
        <p
          className={`rounded-xl border px-4 py-3 text-sm ${
            isSuccess
              ? "border-green-200 bg-green-50 text-green-800"
              : "border-border bg-secondary text-ink/80"
          }`}
        >
          {message}
        </p>
      ) : null}
      {!isSuccess ? (
        <Button type="submit" className="w-full" size="lg" disabled={isLoading} aria-busy={isLoading}>
          {isLoading ? "Envoi en cours..." : "Envoyer le lien de réinitialisation"}
        </Button>
      ) : null}
    </form>
  );
}
