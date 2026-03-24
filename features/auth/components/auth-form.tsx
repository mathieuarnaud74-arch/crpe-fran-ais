"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { signInAction, signUpAction } from "@/features/auth/server/actions";

type AuthFormProps = {
  mode: "signin" | "signup";
};

export function AuthForm({ mode }: AuthFormProps) {
  const router = useRouter();
  const [displayName, setDisplayName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [message, setMessage] = useState("");
  const [isLoading, setIsLoading] = useState(false);

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setIsLoading(true);
    setMessage("");

    if (mode === "signup") {
      const trimmed = displayName.trim();
      if (trimmed.length < 2 || trimmed.length > 30) {
        setMessage("Le prénom ou pseudo doit contenir entre 2 et 30 caractères.");
        setIsLoading(false);
        return;
      }

      const result = await signUpAction(email, password, trimmed);

      if (result.status === "error") {
        setMessage(result.message ?? "Une erreur est survenue.");
        setIsLoading(false);
        return;
      }

      try {
        const savedDiagnostic = localStorage.getItem("guest_diagnostic_result");
        if (savedDiagnostic) {
          const resp = await fetch("/api/diagnostic/complete", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: savedDiagnostic,
          });
          if (resp.ok) localStorage.removeItem("guest_diagnostic_result");
        }
      } catch {
        // Non critique
      }

      setMessage(
        "Compte créé. Si la confirmation email est activée, validez votre adresse puis connectez-vous pour retrouver votre diagnostic et vos révisions.",
      );
      setIsLoading(false);
      return;
    }

    const result = await signInAction(email, password);

    if (result.status === "error") {
      setMessage(result.message ?? "Une erreur est survenue.");
      setIsLoading(false);
      return;
    }

    try {
      const savedDiagnostic = localStorage.getItem("guest_diagnostic_result");
      if (savedDiagnostic) {
        const resp = await fetch("/api/diagnostic/complete", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: savedDiagnostic,
        });
        if (resp.ok) localStorage.removeItem("guest_diagnostic_result");
      }
    } catch {
      // Non critique
    }

    router.push("/tableau-de-bord");
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      {mode === "signup" ? (
        <div className="space-y-2">
          <Label htmlFor="displayName">Prénom ou pseudo</Label>
          <Input
            id="displayName"
            autoComplete="name"
            autoFocus
            value={displayName}
            onChange={(event) => setDisplayName(event.target.value)}
            placeholder="Ex. Camille"
            required
            minLength={2}
            maxLength={30}
          />
        </div>
      ) : null}
      <div className="space-y-2">
        <Label htmlFor="email">Adresse email</Label>
        <Input
          id="email"
          type="email"
          autoComplete="email"
          autoFocus={mode === "signin"}
          required
          value={email}
          onChange={(event) => setEmail(event.target.value)}
          placeholder="vous@exemple.fr"
        />
      </div>
      <div className="space-y-2">
        <Label htmlFor="password">Mot de passe</Label>
        <Input
          id="password"
          type="password"
          autoComplete={mode === "signup" ? "new-password" : "current-password"}
          required
          minLength={mode === "signup" ? 8 : undefined}
          value={password}
          onChange={(event) => setPassword(event.target.value)}
          placeholder={mode === "signup" ? "Au moins 8 caractères" : "Votre mot de passe"}
        />
      </div>
      {message ? (
        <p className="rounded-xl border border-border bg-secondary px-4 py-3 text-sm text-ink/80">
          {message}
        </p>
      ) : null}
      <Button type="submit" className="w-full" size="lg" disabled={isLoading} aria-busy={isLoading}>
        {isLoading
          ? "Traitement en cours..."
          : mode === "signup"
            ? "Créer mon compte gratuit"
            : "Se connecter"}
      </Button>
    </form>
  );
}
