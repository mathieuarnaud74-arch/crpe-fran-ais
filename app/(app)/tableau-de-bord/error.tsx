"use client";

import { Mocca } from "@/components/mascot/mocca";
import { Button } from "@/components/ui/button";

export default function DashboardError({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <main className="flex min-h-[60vh] flex-col items-center justify-center px-6 py-20 text-center">
      <Mocca variant="grumpy" size="lg" className="mb-6" />

      <h1 className="font-serif text-3xl font-semibold text-ink">
        Le tableau de bord n&apos;a pas pu être chargé
      </h1>

      <p className="mt-3 max-w-md text-muted">
        Un problème est survenu lors du chargement de ton tableau de bord.
        Réessaie dans quelques instants.
      </p>

      <Button variant="primary" className="mt-8" onClick={() => reset()}>
        Réessayer
      </Button>
    </main>
  );
}
