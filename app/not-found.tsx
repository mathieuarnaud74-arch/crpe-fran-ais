import { Mocca } from "@/components/mascot/mocca";
import { ButtonLink } from "@/components/ui/button";

export default function NotFound() {
  return (
    <main className="flex min-h-[60vh] flex-col items-center justify-center px-6 py-20 text-center">
      <Mocca variant="grumpy" size="lg" className="mb-6" />

      <h1 className="font-serif text-3xl font-semibold text-ink">
        Oups, cette page n&apos;existe pas !
      </h1>

      <p className="mt-3 max-w-md text-muted">
        La page que vous cherchez est introuvable. Elle a peut-être été déplacée
        ou supprimée.
      </p>

      <ButtonLink href="/" variant="primary" className="mt-8">
        Retour à l&apos;accueil
      </ButtonLink>
    </main>
  );
}
