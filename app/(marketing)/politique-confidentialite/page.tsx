import { SiteHeader } from "@/components/site-header";
import { Panel } from "@/components/ui/panel";
import { getOptionalUser } from "@/features/auth/server/guards";

export default async function PolitiqueConfidentialitePage() {
  const user = await getOptionalUser();

  return (
    <div className="min-h-screen">
      <SiteHeader authenticated={Boolean(user)} />
      <div className="mx-auto max-w-4xl px-6 py-16">
        <Panel>
          <h1 className="font-serif text-4xl font-semibold text-ink">Politique de confidentialité</h1>
          <div className="mt-6 space-y-4 text-sm leading-7 text-ink/75">
            <p>
              Les données collectées servent à l&apos;authentification, au suivi des résultats et à la
              gestion d&apos;abonnement.
            </p>
            <p>
              Les paiements sont traités par Stripe. Les données pédagogiques et de compte sont
              stockées dans Supabase.
            </p>
            <p>
              Les demandes d&apos;accès, de rectification ou de suppression doivent être adressées au
              contact légal du site.
            </p>
          </div>
        </Panel>
      </div>
    </div>
  );
}
