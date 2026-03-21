import { Mocca } from "@/components/mascot/mocca";
import { ButtonLink } from "@/components/ui/button";

export default function AppNotFound() {
  return (
    <main className="flex min-h-[60vh] flex-col items-center justify-center px-6 py-20 text-center">
      <Mocca variant="grumpy" size="lg" className="mb-6" />

      <h1 className="font-serif text-3xl font-semibold text-ink">
        Cette page n&apos;existe pas dans ton espace de révision
      </h1>

      <p className="mt-3 max-w-md text-muted">
        Vérifie l&apos;adresse ou retourne au tableau de bord pour continuer tes
        révisions.
      </p>

      <ButtonLink href="/tableau-de-bord" variant="primary" className="mt-8">
        Retour au tableau de bord
      </ButtonLink>
    </main>
  );
}
