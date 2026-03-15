import { SiteHeader } from "@/components/site-header";
import { Panel } from "@/components/ui/panel";
import { getOptionalUser } from "@/features/auth/server/guards";

export default async function CguPage() {
  const user = await getOptionalUser();

  return (
    <div className="min-h-screen">
      <SiteHeader authenticated={Boolean(user)} />
      <div className="mx-auto max-w-4xl px-6 py-16">
        <Panel>
          <h1 className="font-serif text-4xl font-semibold text-ink">
            Conditions générales d&apos;utilisation
          </h1>
          <div className="mt-6 space-y-4 text-sm leading-7 text-ink/75">
            <p>
              L&apos;accès gratuit est limité afin de permettre une découverte du service sans engager
              la responsabilité de résultat.
            </p>
            <p>
              L&apos;abonnement premium est sans engagement long terme et se gère depuis le portail
              client Stripe.
            </p>
            <p>
              Le contenu a vocation d&apos;entraînement et ne remplace pas les textes officiels du
              concours.
            </p>
          </div>
        </Panel>
      </div>
    </div>
  );
}
