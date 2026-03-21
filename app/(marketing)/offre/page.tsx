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
      <div className="mx-auto max-w-6xl px-6 py-10 sm:py-16">
        {/* Header */}
        <div className="max-w-2xl">
          <h1 className="font-serif text-3xl sm:text-5xl font-semibold text-ink">
            Commencez gratuitement, passez au premium si vous voulez aller plus vite
          </h1>
          <p className="mt-4 text-lg leading-8 text-muted">
            Le compte gratuit donne accès au diagnostic et à 20 questions corrigées par jour.
            Le premium débloque l&apos;accès illimité, les séries complètes et un travail plus régulier.
          </p>
          <p className="mt-2 text-sm text-muted">
            Sans carte bancaire pour commencer · Paiement sécurisé Stripe pour le premium
          </p>
        </div>

        {/* Comparatif principal : Gratuit vs Premium */}
        <div className="mx-auto mt-12 grid max-w-3xl gap-6 lg:grid-cols-2">
          {/* Free */}
          <div className="flex flex-col rounded-[2rem] border border-border bg-card p-6 shadow-panel">
            <p className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">Gratuit</p>
            <p className="mt-3 font-serif text-4xl font-semibold text-ink">0 €</p>
            <p className="mt-1 text-xs text-muted">Inscription gratuite · aucune carte requise</p>
            <p className="mt-4 text-sm leading-7 text-muted">
              Pour démarrer, obtenir votre profil de départ et travailler un peu chaque jour sans engagement.
            </p>
            <ul className="mt-5 space-y-2">
              {["Diagnostic initial gratuit", "20 questions corrigées par jour", "Corrections et explications immédiates"].map((feature) => (
                <li key={feature} className="flex items-start gap-2 text-sm text-muted">
                  <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accentSecondaryDark" />
                  {feature}
                </li>
              ))}
            </ul>
            <div className="mt-auto pt-8">
              <ButtonLink href={user ? "/tableau-de-bord" : "/inscription"} variant="secondary">
                {user ? "Accéder à mon tableau de bord" : "Créer mon compte gratuit"}
              </ButtonLink>
            </div>
          </div>

          {/* Premium mensuel — recommandé */}
          <div className="flex flex-col rounded-[2rem] border border-white/10 bg-premiumDark p-6 text-paper shadow-panel">
            <div className="flex items-start justify-between gap-3">
              <p className="text-xs font-semibold uppercase tracking-[0.15em] text-paper/60">
                Premium mensuel
              </p>
              <span className="rounded-full border border-accentSecondary/40 bg-accentSecondary/20 px-2.5 py-0.5 text-xs text-accentSecondarySoft">
                Recommandé
              </span>
            </div>
            <p className="mt-3 font-serif text-4xl font-semibold text-paper">6,99 €</p>
            <p className="mt-1 text-xs text-paper/60">par mois · résiliable à tout moment</p>
            <p className="mt-4 text-sm leading-7 text-paper/76">
              Pour une préparation régulière et structurée sur la durée.
            </p>
            <ul className="mt-5 space-y-2">
              {["Accès illimité, renouvelé chaque mois", "Toutes les séries et corrections", "Tableau de bord et progression", "Résiliation sans conditions via Stripe"].map((feature) => (
                <li key={feature} className="flex items-start gap-2 text-sm text-paper/80">
                  <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accentSecondary" />
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
                  priceId={getPriceId("monthly")}
                  label="Choisir l'offre mensuelle"
                  disabled={!stripeReady}
                />
              ) : (
                <ButtonLink
                  href="/inscription"
                  className="bg-paper text-ink hover:bg-paper/90"
                >
                  Choisir l&apos;offre mensuelle
                </ButtonLink>
              )}
              {!stripeReady && user && (
                <p className="mt-3 text-sm text-warning">
                  Paiement non disponible pour l&apos;instant.
                </p>
              )}
            </div>
          </div>
        </div>

        {/* Formules ponctuelles */}
        <div className="mx-auto mt-10 max-w-3xl">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
            Besoin d&apos;un accès ponctuel ?
          </p>
          <div className="mt-4 grid gap-4 sm:grid-cols-2">
            {plans.filter((p) => !p.highlighted).map((plan) => (
              <div
                key={plan.key}
                className="flex flex-col rounded-[1.75rem] border border-border bg-card p-5 shadow-subtle"
              >
                <div className="flex items-center justify-between gap-3">
                  <p className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">
                    {plan.label}
                  </p>
                  <p className="font-serif text-2xl font-semibold text-ink">{plan.price}</p>
                </div>
                <p className="mt-1 text-xs text-muted">{plan.priceDetail}</p>
                <p className="mt-3 text-sm leading-7 text-muted">{plan.description}</p>
                <div className="mt-auto pt-5">
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
                      label={plan.key === "weekly" ? "Activer 7 jours" : "Activer 24 h"}
                      disabled={!stripeReady}
                    />
                  ) : (
                    <ButtonLink href="/inscription" variant="secondary">
                      {plan.key === "weekly" ? "Activer 7 jours" : "Activer 24 h"}
                    </ButtonLink>
                  )}
                </div>
              </div>
            ))}
          </div>
          <p className="mt-4 text-xs text-muted">
            Accès unique, non renouvelé automatiquement.
          </p>
        </div>

        {/* Proof of method */}
        <div className="mt-20 border-t border-border pt-16">
          <div className="max-w-2xl">
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
              Ce que vous obtenez
            </p>
            <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">
              Une préparation pensée pour le niveau attendu au CRPE.
            </h2>
            <p className="mt-4 text-sm leading-7 text-muted">
              Le concours teste des automatismes précis sur des notions ciblées. Le site est donc
              construit autour de trois leviers utiles : repérer vos fragilités, expliquer les erreurs
              et vous faire reprendre les bonnes notions au bon moment.
            </p>
          </div>

          <div className="mt-10 grid gap-5 lg:grid-cols-3">
            <div className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">01</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Correction immédiate
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                Chaque réponse est corrigée avec la règle ou le raisonnement attendu. Vous ne voyez
                pas seulement que c&apos;est faux : vous comprenez pourquoi.
              </p>
            </div>
            <div className="rounded-[1.75rem] border border-border bg-secondary p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">02</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Diagnostic de positionnement
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                40 questions tirées d&apos;une banque de {" "}
                <strong className="text-ink">plus de 100 questions</strong> pour repérer vos
                fragilités sous-domaine par sous-domaine, puis prioriser les révisions les plus rentables.
              </p>
            </div>
            <div className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">03</p>
              <h3 className="mt-4 font-serif text-xl font-semibold text-ink">
                Programme CRPE 2026
              </h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                Contenu aligné sur le programme officiel de français : grammaire, orthographe,
                conjugaison, lexique, analyse de la langue, compréhension et didactique.
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
