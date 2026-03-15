"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { createSupabaseBrowserClient } from "@/lib/supabase/client";

function translateAuthError(message: string): string {
  if (message.toLowerCase().includes("invalid login credentials")) {
    return "Adresse email ou mot de passe incorrect.";
  }
  if (message.toLowerCase().includes("email not confirmed")) {
    return "Votre adresse email n'est pas encore confirmée. Vérifiez vos emails.";
  }
  if (message.toLowerCase().includes("user already registered")) {
    return "Un compte existe déjà avec cette adresse email.";
  }
  if (message.toLowerCase().includes("password should be at least")) {
    return "Le mot de passe doit contenir au moins 8 caractères.";
  }
  if (message.toLowerCase().includes("rate limit")) {
    return "Trop de tentatives. Veuillez réessayer dans quelques minutes.";
  }
  return "Une erreur est survenue. Veuillez réessayer.";
}

type AuthFormProps = {
  mode: "signin" | "signup";
};

export function AuthForm({ mode }: AuthFormProps) {
  const router = useRouter();
  const supabase = createSupabaseBrowserClient();
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
      const { error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            display_name: displayName,
          },
          emailRedirectTo: undefined,
        },
      });

      if (error) {
        setMessage(translateAuthError(error.message));
        setIsLoading(false);
        return;
      }

      setMessage(
        "Compte créé. Si la confirmation email est activée dans Supabase, validez votre adresse avant de vous connecter.",
      );
      setIsLoading(false);
      return;
    }

    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      setMessage(translateAuthError(error.message));
      setIsLoading(false);
      return;
    }

    router.push("/tableau-de-bord");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      {mode === "signup" ? (
        <div className="space-y-2">
          <Label htmlFor="displayName">Prénom ou pseudo</Label>
          <Input
            id="displayName"
            value={displayName}
            onChange={(event) => setDisplayName(event.target.value)}
            placeholder="Ex. Camille"
          />
        </div>
      ) : null}
      <div className="space-y-2">
        <Label htmlFor="email">Adresse email</Label>
        <Input
          id="email"
          type="email"
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
      <Button type="submit" className="w-full" size="lg" disabled={isLoading}>
        {isLoading
          ? "Traitement en cours..."
          : mode === "signup"
            ? "Créer mon compte"
            : "Se connecter"}
      </Button>
    </form>
  );
}
