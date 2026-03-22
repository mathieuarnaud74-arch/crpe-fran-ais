"use client";

import { Mocca } from "@/components/mascot/mocca";
import { Button, ButtonLink } from "@/components/ui/button";

export default function AbonnementError({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <main className="flex min-h-[60vh] flex-col items-center justify-center px-6 py-20 text-center">
      <Mocca variant="grumpy" size="lg" className="mb-6" />

      <h1 className="font-serif text-3xl font-semibold text-ink">
        Impossible de charger l&apos;abonnement
      </h1>

      <p className="mt-3 max-w-md text-muted">
        Une erreur est survenue lors du chargement de votre abonnement. Vous pouvez
        réessayer ou retourner au tableau de bord.
      </p>

      <div className="mt-8 flex flex-wrap items-center justify-center gap-3">
        <Button variant="primary" onClick={() => reset()}>
          Réessayer
        </Button>
        <ButtonLink href="/tableau-de-bord" variant="secondary">
          Retour au tableau de bord
        </ButtonLink>
      </div>
    </main>
  );
}
