import { Panel } from "@/components/ui/panel";

export default function CguPage() {
  return (
    <div className="min-h-screen">
      <div className="mx-auto max-w-4xl px-4 py-10 sm:px-6 sm:py-16">
        <Panel>
          <h1 className="font-serif text-2xl font-semibold text-ink sm:text-4xl">
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
