import { ButtonLink } from "@/components/ui/button";
import { getOptionalUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { CheckoutButton } from "@/features/billing/components/checkout-button";
import { env, isStripeConfigured } from "@/lib/env";

const plans = [
  {
    key: "daily" as const,
    label: "Journalier",
    duration: "1 jour",
    price: "0,99 €",
    priceDetail: "accès unique · non renouvelé",
    description: "Pour une révision intensive ou une séance de dernière minute avant l'examen.",
    features: [
      "Accès illimité pendant 24 heures",
      "Toutes les séries et corrections",
      "Tableau de bord et progression",
    ],
    highlighted: false,
  },
  {
    key: "weekly" as const,
    label: "Semainier",
    duration: "7 jours",
    price: "2,99 €",
    priceDetail: "accès unique · non renouvelé",
    description: "Pour une semaine de révision concentrée avant une échéance.",
    features: [
      "Accès illimité pendant 7 jours",
      "Toutes les séries et corrections",
      "Tableau de bord et progression",
    ],
    highlighted: false,
  },
  {
    key: "monthly" as const,
    label: "Mensuel",
    duration: "Par mois",
    price: "6,99 €",
    priceDetail: "par mois · résiliable à tout moment",
    description: "Pour une préparation régulière et structurée sur la durée.",
    features: [
      "Accès illimité, renouvelé chaque mois",
      "Toutes les séries et corrections",
      "Tableau de bord et progression",
      "Résiliation sans conditions via Stripe",
    ],
    highlighted: true,
  },
];

function getPriceId(key: "daily" | "weekly" | "monthly"): string {
  if (key === "daily") return env.stripePricePremiumDailyId;
  if (key === "weekly") return env.stripePricePremiumWeeklyId;
  return env.stripePricePremiumMonthlyId;
}

export default async function OfferPage() {
  const user = await getOptionalUser();
  const premium = user ? await isPremiumUser(user.id) : false;
  const stripeReady = isStripeConfigured();

  return (
    <div className="min-h-screen bg-paper">
      <div className="mx-auto max-w-6xl px-6 py-16">
        {/* Header */}
        <div className="max-w-2xl">
          <h1 className="font-serif text-5xl font-semibold text-ink">
            Choisissez votre accès
          </h1>
          <p className="mt-4 text-lg leading-8 text-muted">
            20 questions gratuites par jour avec un compte gratuit. Pour aller plus loin,
            choisissez la durée qui correspond à votre rythme de révision.
          </p>
          <p className="mt-2 text-sm text-muted">
            Exercices ajoutés régulièrement · Paiement sécurisé Stripe
          </p>
        </div>

        {/* All tiers */}
        <div className="mt-12 grid gap-5 lg:grid-cols-4">
          {/* Free */}
          <div className="flex flex-col rounded-[2rem] border border-border bg-card p-6 shadow-panel">
            <p className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">Gratuit</p>
            <p className="mt-3 font-serif text-4xl font-semibold text-ink">0 €</p>
            <p className="mt-1 text-xs text-muted">Inscription gratuite · aucune carte requise</p>
            <p className="mt-4 text-sm leading-7 text-muted">
              Pour découvrir la plateforme et s&apos;entraîner chaque jour sans engagement.
            </p>
            <ul className="mt-5 space-y-2">
              {["20 questions corrigées par jour", "Corrections et explications immédiates", "Accès aux 3 domaines du programme"].map((feature) => (
                <li key={feature} className="flex items-start gap-2 text-sm text-muted">
                  <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accentSecondaryDark" />
                  {feature}
                </li>
              ))}
            </ul>
            <div className="mt-auto pt-8">
              <ButtonLink href={user ? "/tableau-de-bord" : "/inscription"} variant="secondary">
                {user ? "Accéder au tableau de bord" : "Je m'inscris"}
              </ButtonLink>
            </div>
          </div>
          {plans.map((plan) => (
            <div
              key={plan.key}
              className={[
                "flex flex-col rounded-[2rem] border p-6 shadow-panel",
                plan.highlighted
                  ? "border-white/10 bg-premiumDark text-paper"
                  : "border-border bg-card",
              ].join(" ")}
            >
              <div className="flex items-start justify-between gap-3">
                <p
                  className={[
                    "text-xs font-semibold uppercase tracking-[0.15em]",
                    plan.highlighted ? "text-paper/60" : "text-muted",
                  ].join(" ")}
                >
                  {plan.label}
                </p>
                {plan.highlighted && (
                  <span className="rounded-full border border-accentSecondary/40 bg-accentSecondary/20 px-2.5 py-0.5 text-xs text-accentSecondarySoft">
                    Recommandé
                  </span>
                )}
              </div>

              <p
                className={[
                  "mt-3 font-serif text-4xl font-semibold",
                  plan.highlighted ? "text-paper" : "text-ink",
                ].join(" ")}
              >
                {plan.price}
              </p>
              <p
                className={[
                  "mt-1 text-xs",
                  plan.highlighted ? "text-paper/60" : "text-muted",
                ].join(" ")}
              >
                {plan.priceDetail}
              </p>

              <p
                className={[
                  "mt-4 text-sm leading-7",
                  plan.highlighted ? "text-paper/76" : "text-muted",
                ].join(" ")}
              >
                {plan.description}
              </p>

              <ul className="mt-5 space-y-2">
                {plan.features.map((feature) => (
                  <li
                    key={feature}
                    className={[
                      "flex items-start gap-2 text-sm",
                      plan.highlighted ? "text-paper/80" : "text-muted",
                    ].join(" ")}
                  >
                    <span
                      className={[
                        "mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full",
                        plan.highlighted ? "bg-accentSecondary" : "bg-accentSecondaryDark",
                      ].join(" ")}
                    />
                    {feature}
                  </li>
                ))}
              </ul>

              <div className="mt-auto pt-8">
                {premium ? (
                  <CheckoutButton
                    endpoint="/api/stripe/portal"
                    label="Gérer mon abonnement"
                    disabled={!stripeReady}
                  />
                ) : user ? (
                  <CheckoutButton
                    endpoint="/api/stripe/checkout"
                    priceId={getPriceId(plan.key)}
                    label={plan.key === "monthly" ? "S'abonner" : `Accéder ${plan.duration.toLowerCase()}`}
                    disabled={!stripeReady}
                  />
                ) : (
                  <ButtonLink
                    href="/inscription"
                    className={plan.highlighted ? "bg-paper text-ink hover:bg-paper/90" : ""}
                  >
                    {plan.key === "monthly" ? "S'abonner" : `Accéder ${plan.duration.toLowerCase()}`}
                  </ButtonLink>
                )}

                {!stripeReady && user && (
                  <p className="mt-3 text-sm text-warning">
                    Paiement non disponible pour l&apos;instant.
                  </p>
                )}
              </div>
            </div>
          ))}
        </div>

        <p className="mt-8 text-xs text-muted">
          Pour le journalier et le semainier, l&apos;accès expire automatiquement sans renouvellement.
          Pour le mensuel, résiliation possible à tout moment depuis le portail Stripe.
        </p>

        {/* Proof of method */}
        <div className="mt-20 border-t border-border pt-16">
          <div className="max-w-2xl">
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
              Pourquoi ça marche
            </p>
            <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">
              Un format pensé pour le CRPE, pas pour le grand public.
            </h2>
            <p className="mt-4 text-sm leading-7 text-muted">
              Le concours teste des automatismes précis sur des notions ciblées. Ce site est conçu
              pour entraîner exactement ces automatismes : séries courtes, corrections qui expliquent
              l&apos;erreur, reprise ciblée des fragilités.
            </p>
          </div>

          <div className="mt-10 grid gap-5 lg:grid-cols-3">
            <div className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">01</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Correction immédiate
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                Chaque réponse est corrigée instantanément avec une explication complète — pas
                un simple « faux ». Vous comprenez l&apos;erreur avant de passer à la suivante.
              </p>
            </div>
            <div className="rounded-[1.75rem] border border-border bg-secondary p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">02</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Diagnostic de positionnement
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                40 questions tirées d&apos;une banque de {" "}
                <strong className="text-ink">plus de 200 questions</strong> pour repérer vos
                fragilités sous-domaine par sous-domaine, pas juste une note globale.
              </p>
            </div>
            <div className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">03</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Programme CRPE 2026
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                Contenu aligné sur le programme officiel de français : grammaire, orthographe,
                analyse de la langue, compréhension et didactique.
              </p>
            </div>
          </div>

          {/* Sample correction */}
          <div className="mt-10">
            <p className="mb-4 text-xs font-semibold uppercase tracking-[0.16em] text-muted">
              Exemple de correction
            </p>
            <div className="max-w-2xl rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
              <p className="text-xs font-medium uppercase tracking-[0.12em] text-muted">
                Grammaire · Accord du participe passé
              </p>
              <p className="mt-4 font-serif text-lg font-semibold text-ink">
                Quel est l&apos;accord correct dans : « Les lettres qu&apos;il a écrites » ?
              </p>
              <div className="mt-5 space-y-2">
                <div className="rounded-xl border border-successBorder bg-successBg px-4 py-3 text-sm font-medium text-ink">
                  ✓ &nbsp;« écrites » — accord avec le COD « les lettres », placé avant
                </div>
                <div className="rounded-xl border border-border bg-paper px-4 py-3 text-sm text-muted">
                  « écrit » — pas d&apos;accord
                </div>
              </div>
              <div className="mt-5 rounded-xl border border-border bg-secondary px-4 py-4 text-sm leading-7 text-muted">
                <strong className="text-ink">Explication :</strong> Le participe passé employé avec
                « avoir » s&apos;accorde avec le COD quand celui-ci est placé avant le verbe. Ici,
                « les lettres » est bien antéposé — accord obligatoire au féminin pluriel.
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
