"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { createSupabaseBrowserClient } from "@/lib/supabase/client";

export function ResetPasswordForm() {
  const router = useRouter();
  const supabase = createSupabaseBrowserClient();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [isSuccess, setIsSuccess] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setIsLoading(true);
    setMessage("");

    if (password !== confirmPassword) {
      setMessage("Les mots de passe ne correspondent pas.");
      setIsLoading(false);
      return;
    }

    const { error } = await supabase.auth.updateUser({ password });

    if (error) {
      if (error.message.toLowerCase().includes("password should be at least")) {
        setMessage("Le mot de passe doit contenir au moins 8 caractères.");
      } else if (error.message.toLowerCase().includes("same password")) {
        setMessage("Le nouveau mot de passe doit être différent de l'ancien.");
      } else {
        setMessage("Une erreur est survenue. Veuillez réessayer.");
      }
      setIsLoading(false);
      return;
    }

    setIsSuccess(true);
    setMessage("Mot de passe modifié avec succès. Redirection...");
    setTimeout(() => {
      router.push("/tableau-de-bord");
      router.refresh();
    }, 2000);
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      <div className="space-y-2">
        <Label htmlFor="password">Nouveau mot de passe</Label>
        <Input
          id="password"
          type="password"
          autoComplete="new-password"
          autoFocus
          required
          minLength={8}
          value={password}
          onChange={(event) => setPassword(event.target.value)}
          placeholder="Au moins 8 caractères"
          disabled={isSuccess}
        />
      </div>
      <div className="space-y-2">
        <Label htmlFor="confirmPassword">Confirmer le mot de passe</Label>
        <Input
          id="confirmPassword"
          type="password"
          autoComplete="new-password"
          required
          minLength={8}
          value={confirmPassword}
          onChange={(event) => setConfirmPassword(event.target.value)}
          placeholder="Retapez le mot de passe"
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
          {isLoading ? "Modification en cours..." : "Définir le nouveau mot de passe"}
        </Button>
      ) : null}
    </form>
  );
}
