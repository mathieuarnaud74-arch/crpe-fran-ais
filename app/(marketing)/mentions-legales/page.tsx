import { Panel } from "@/components/ui/panel";

function Section({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="space-y-3">
      <h2 className="font-serif text-xl font-semibold text-ink">{title}</h2>
      <div className="space-y-2 text-sm leading-7 text-ink/75">{children}</div>
    </div>
  );
}

export default function MentionsLegalesPage() {
  return (
    <div className="min-h-screen">
      <div className="mx-auto max-w-4xl px-6 py-16">
        <Panel>
          <h1 className="font-serif text-4xl font-semibold text-ink">Mentions légales</h1>
          <p className="mt-3 text-sm text-muted">
            Conformément à la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l&apos;économie numérique (LCEN).
          </p>

          <div className="mt-8 space-y-8">

            <Section title="1. Éditeur du site">
              <p>
                Le présent site est édité par :{" "}
                <strong className="text-ink">Mathieu Rousseau</strong>, personne physique.
              </p>
              <p>
                Adresse postale : <strong className="text-ink">[ADRESSE POSTALE À COMPLÉTER]</strong>
              </p>
              <p>
                Contact : <strong className="text-ink">[EMAIL DE CONTACT À COMPLÉTER]</strong>
              </p>
              <p>
                Directeur de la publication : Mathieu Rousseau.
              </p>
            </Section>

            <Section title="2. Hébergement">
              <p>
                <strong className="text-ink">Application web</strong> — Vercel Inc., 340 Pine Street, Suite 701, San Francisco, CA 94104, États-Unis.{" "}
                <a href="https://vercel.com" className="underline underline-offset-2">vercel.com</a>
              </p>
              <p>
                <strong className="text-ink">Base de données</strong> — Supabase Inc., 970 Toa Payoh North, #07-04, Singapore 318992.{" "}
                <a href="https://supabase.com" className="underline underline-offset-2">supabase.com</a>
              </p>
              <p>
                <strong className="text-ink">Paiements</strong> — Stripe Inc., 354 Oyster Point Blvd, South San Francisco, CA 94080, États-Unis.{" "}
                <a href="https://stripe.com" className="underline underline-offset-2">stripe.com</a>
              </p>
            </Section>

            <Section title="3. Propriété intellectuelle">
              <p>
                L&apos;ensemble des contenus présents sur ce site (textes, exercices, corrections, illustrations, structure pédagogique) est la propriété exclusive de l&apos;éditeur, sauf mention contraire expresse.
              </p>
              <p>
                Toute reproduction, représentation, modification, publication ou adaptation de tout ou partie des éléments du site, quel que soit le moyen ou le procédé utilisé, est interdite sauf autorisation écrite préalable de l&apos;éditeur.
              </p>
              <p>
                Le programme officiel du CRPE est défini par les textes réglementaires du Ministère de l&apos;Éducation nationale. Ce site est un outil d&apos;entraînement indépendant et ne constitue pas une publication officielle.
              </p>
            </Section>

            <Section title="4. Données personnelles">
              <p>
                Le site collecte des données personnelles dans le cadre de l&apos;authentification des utilisateurs, du suivi de leur progression pédagogique et de la gestion des abonnements. Ces données sont stockées de manière sécurisée par Supabase et ne sont pas transmises à des tiers à des fins commerciales.
              </p>
              <p>
                Les données de paiement sont gérées exclusivement par Stripe et ne transitent pas par les serveurs de ce site.
              </p>
              <p>
                Conformément au Règlement Général sur la Protection des Données (RGPD) et à la loi Informatique et Libertés, vous disposez d&apos;un droit d&apos;accès, de rectification, de portabilité et d&apos;effacement de vos données. Pour exercer ces droits, contactez l&apos;éditeur à l&apos;adresse indiquée ci-dessus.
              </p>
              <p>
                Pour plus d&apos;informations, consultez notre{" "}
                <a href="/politique-confidentialite" className="underline underline-offset-2">
                  politique de confidentialité
                </a>.
              </p>
            </Section>

            <Section title="5. Limitation de responsabilité">
              <p>
                Les exercices, corrections et explications proposés sur ce site sont des outils d&apos;entraînement pédagogique. Ils ne se substituent pas aux textes officiels du concours CRPE, aux programmes nationaux ni aux ressources publiées par le Ministère de l&apos;Éducation nationale.
              </p>
              <p>
                L&apos;éditeur s&apos;efforce de maintenir les informations à jour et exactes, mais ne peut garantir l&apos;exhaustivité ni l&apos;absence d&apos;erreurs. Toute signalement d&apos;inexactitude peut être adressé au contact indiqué ci-dessus.
              </p>
            </Section>

            <Section title="6. Cookies">
              <p>
                Ce site utilise des cookies de session nécessaires au fonctionnement de l&apos;authentification (Supabase Auth). Aucun cookie publicitaire ou de traçage commercial n&apos;est déposé.
              </p>
            </Section>

          </div>
        </Panel>
      </div>
    </div>
  );
}
