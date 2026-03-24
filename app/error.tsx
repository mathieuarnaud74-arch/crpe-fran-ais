"use client";

import { Mocca } from "@/components/mascot/mocca";
import { Button, ButtonLink } from "@/components/ui/button";

export default function RootError({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <main className="flex min-h-[60vh] flex-col items-center justify-center px-6 py-20 text-center">
      <Mocca variant="grumpy" size="lg" className="mb-6" />

      <h1 className="font-serif text-3xl font-semibold text-ink">
        Quelque chose s&apos;est mal pass&eacute;
      </h1>

      <p className="mt-3 max-w-md text-muted">
        Une erreur inattendue est survenue. Vous pouvez r&eacute;essayer ou retourner &agrave;
        l&apos;accueil.
      </p>

      <div className="mt-8 flex flex-wrap items-center justify-center gap-3">
        <Button variant="primary" onClick={() => reset()}>
          R&eacute;essayer
        </Button>
        <ButtonLink href="/" variant="secondary">
          Retour &agrave; l&apos;accueil
        </ButtonLink>
      </div>
    </main>
  );
}
