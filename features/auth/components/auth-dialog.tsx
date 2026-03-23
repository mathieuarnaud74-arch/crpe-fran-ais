"use client";

import * as DialogPrimitive from "@radix-ui/react-dialog";
import { X } from "lucide-react";
import Link from "next/link";
import { useState, useEffect } from "react";

import { cn } from "@/lib/utils";
import { AuthForm } from "@/features/auth/components/auth-form";

type AuthMode = "signin" | "signup";

type AuthDialogProps = {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  defaultMode?: AuthMode;
};

const config = {
  signup: {
    title: "Créer votre compte gratuit",
    description:
      "Commencez sans carte bancaire : diagnostic, résultats sauvegardés et questions corrigées chaque jour.",
    switchLabel: "Vous avez déjà un compte ?",
    switchAction: "Se connecter",
  },
  signin: {
    title: "Connexion",
    description:
      "Connectez-vous pour accéder à vos exercices, votre historique et votre abonnement.",
    switchLabel: "Pas encore de compte ?",
    switchAction: "Créer un compte",
  },
} as const;

export function AuthDialog({ open, onOpenChange, defaultMode = "signup" }: AuthDialogProps) {
  const [mode, setMode] = useState<AuthMode>(defaultMode);

  useEffect(() => {
    if (open) setMode(defaultMode);
  }, [open, defaultMode]);

  const { title, description, switchLabel, switchAction } = config[mode];

  return (
    <DialogPrimitive.Root open={open} onOpenChange={onOpenChange}>
      <DialogPrimitive.Portal>
        <DialogPrimitive.Overlay
          className={cn(
            "fixed inset-0 z-50 bg-ink/35 backdrop-blur-sm",
            "data-[state=open]:animate-in data-[state=open]:fade-in-0",
            "data-[state=closed]:animate-out data-[state=closed]:fade-out-0",
          )}
        />
        <DialogPrimitive.Content
          className={cn(
            "fixed left-1/2 top-1/2 z-50 w-[calc(100%-2rem)] max-w-md -translate-x-1/2 -translate-y-1/2",
            "max-h-[90vh] overflow-y-auto rounded-panel border border-border bg-[linear-gradient(180deg,#fdf9f3_0%,#f5f1e8_100%)] p-8 shadow-elevated",
            "data-[state=open]:animate-in data-[state=open]:fade-in-0 data-[state=open]:zoom-in-95 data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%]",
            "data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%]",
            "duration-200",
          )}
        >
          <DialogPrimitive.Close className="absolute right-4 top-4 rounded-full border border-border bg-paper p-2 text-muted transition-colors hover:text-ink focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-accent">
            <X className="h-4 w-4" />
            <span className="sr-only">Fermer</span>
          </DialogPrimitive.Close>

          <DialogPrimitive.Title className="pr-8 font-serif text-2xl font-semibold text-ink">
            {title}
          </DialogPrimitive.Title>
          <DialogPrimitive.Description className="mt-2 text-sm leading-7 text-muted">
            {description}
          </DialogPrimitive.Description>

          <div className="mt-6">
            <AuthForm mode={mode} />
          </div>

          <div className="mt-6 space-y-2 text-sm text-ink/70">
            {mode === "signin" && (
              <p>
                Mot de passe oublié ?{" "}
                <Link
                  href="/mot-de-passe-oublie"
                  className="font-semibold text-accent"
                  onClick={() => onOpenChange(false)}
                >
                  Réinitialiser
                </Link>
              </p>
            )}
            <p>
              {switchLabel}{" "}
              <button
                type="button"
                className="font-semibold text-accent hover:underline"
                onClick={() => setMode(mode === "signup" ? "signin" : "signup")}
              >
                {switchAction}
              </button>
            </p>
          </div>
        </DialogPrimitive.Content>
      </DialogPrimitive.Portal>
    </DialogPrimitive.Root>
  );
}
