import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { Badge } from "@/components/ui/badge";
import { DownloadFicheButton } from "@/features/fiches/components/download-fiche-button";
import { FicheHeader } from "@/features/fiches/components/fiche-header";
import { FicheReference } from "@/features/fiches/components/fiche-reference";
import { FicheSprint } from "@/features/fiches/components/fiche-sprint";
import { FicheOperatoire } from "@/features/fiches/components/fiche-operatoire";
import { MarkFicheRead } from "@/features/fiches/components/mark-fiche-read";
import { getFicheBySlug, getAllFiches, getAllFichesMaths } from "@/features/fiches/lib/get-fiche";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getCompletedFicheSlugs, getFicheReadsCountToday } from "@/features/fiches/server/queries";
import { canReadFiche, getDailyRemainingFicheQuota } from "@/lib/freemium";
import { env } from "@/lib/env";

type Params = Promise<{ slug: string }>;

export async function generateStaticParams() {
  const fiches = [...getAllFiches(), ...getAllFichesMaths()];
  return fiches.map((f) => ({ slug: f.slug }));
}

export async function generateMetadata({ params }: { params: Params }): Promise<Metadata> {
  const { slug } = await params;
  const fiche = getFicheBySlug(slug);
  if (!fiche) {
    return { title: "Fiche introuvable" };
  }
  return {
    title: fiche.title,
    description: fiche.subtitle || `Fiche de révision : ${fiche.title}`,
  };
}

export default async function FichePage({ params }: { params: Params }) {
  const { slug } = await params;
  const fiche = getFicheBySlug(slug);

  if (!fiche) notFound();

  const user = await requireUser();
  const premium = await isPremiumUser(user.id);

  // Premium gate: block non-subscribers from premium fiches
  if (fiche.accessTier === "premium" && !premium) {
    return (
      <div className="space-y-8">
        <Panel>
          <div className="flex flex-col gap-5 xl:flex-row xl:items-start xl:justify-between">
            <FicheHeader fiche={fiche} />
            <ButtonLink href="/fiches" variant="secondary">
              ← Toutes les fiches
            </ButtonLink>
          </div>
        </Panel>

        <Panel className="border-accent/20 bg-accent/5">
          <div className="flex flex-col items-center gap-4 py-6 text-center">
            <Badge tone="accent">Premium</Badge>
            <h2 className="font-serif text-2xl font-semibold text-ink">
              Fiche réservée aux abonnés
            </h2>
            <p className="max-w-md text-sm leading-7 text-muted">
              Cette fiche fait partie du catalogue premium. Abonnez-vous pour
              accéder à toutes les fiches et exercices sans limite.
            </p>
            <ButtonLink href="/abonnement" variant="primary">
              Voir les offres →
            </ButtonLink>
          </div>
        </Panel>
      </div>
    );
  }

  // Daily quota gate for free users
  const [ficheReadsToday, completedSlugs] = await Promise.all([
    getFicheReadsCountToday(user.id),
    getCompletedFicheSlugs(user.id),
  ]);

  const alreadyRead = completedSlugs.has(fiche.slug);
  const quotaReached = !premium && !alreadyRead && !canReadFiche(ficheReadsToday, premium);

  if (quotaReached) {
    return (
      <div className="space-y-8">
        <Panel>
          <div className="flex flex-col gap-5 xl:flex-row xl:items-start xl:justify-between">
            <FicheHeader fiche={fiche} />
            <ButtonLink href="/fiches" variant="secondary">
              ← Toutes les fiches
            </ButtonLink>
          </div>
        </Panel>

        <Panel className="border-accentSecondary/20 bg-accentSecondarySoft">
          <div className="flex flex-col items-center gap-4 py-6 text-center">
            <Badge tone="accentSecondary">Quota atteint</Badge>
            <h2 className="font-serif text-2xl font-semibold text-ink">
              Limite quotidienne atteinte
            </h2>
            <p className="max-w-md text-sm leading-7 text-muted">
              Vous avez consulté vos {env.freeDailyFicheLimit} fiches gratuites du jour.
              Votre quota se réinitialise demain matin. Les fiches déjà lues restent accessibles.
            </p>
            <div className="flex flex-wrap gap-3">
              <ButtonLink href="/abonnement" variant="primary">
                Accès illimité →
              </ButtonLink>
              <ButtonLink href="/fiches" variant="secondary">
                Voir mes fiches lues
              </ButtonLink>
            </div>
          </div>
        </Panel>
      </div>
    );
  }

  const remainingFiches = getDailyRemainingFicheQuota(
    alreadyRead ? ficheReadsToday : ficheReadsToday + 1,
    premium,
  );

  return (
    <div className="space-y-8">
      <MarkFicheRead slug={fiche.slug} />
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-start xl:justify-between">
          <FicheHeader fiche={fiche} />
          <div className="flex shrink-0 flex-wrap gap-3">
            <DownloadFicheButton fiche={fiche} />
            <ButtonLink href="/fiches" variant="secondary">
              ← Toutes les fiches
            </ButtonLink>
          </div>
        </div>
      </Panel>

      {!premium && remainingFiches >= 0 && (
        <Panel className="border-border bg-secondary">
          {remainingFiches > 0 ? (
            <p className="text-sm leading-7 text-ink">
              Il vous reste{" "}
              <span className="font-semibold">
                {remainingFiches} fiche{remainingFiches > 1 ? "s" : ""} gratuite{remainingFiches > 1 ? "s" : ""}
              </span>{" "}
              aujourd&apos;hui —{" "}
              <Link href="/abonnement" className="underline underline-offset-2">
                accès illimité dès 0,99 €
              </Link>
              .
            </p>
          ) : (
            <p className="text-sm leading-7 text-ink">
              C&apos;était votre dernière fiche gratuite du jour. Votre quota se réinitialise
              demain matin. Pour continuer :{" "}
              <Link href="/abonnement" className="font-semibold underline underline-offset-2">
                accès illimité dès 0,99 €
              </Link>
              .
            </p>
          )}
        </Panel>
      )}

      {fiche.content.model === "reference" && (
        <FicheReference content={fiche.content} />
      )}
      {fiche.content.model === "sprint" && (
        <FicheSprint content={fiche.content} />
      )}
      {fiche.content.model === "operatoire" && (
        <FicheOperatoire content={fiche.content} />
      )}

      {(fiche.notionsLiees.length > 0 || fiche.exercicesAssocies.length > 0) && (
        <Panel className="bg-secondary">
          <div className="flex flex-col gap-5 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <h2 className="font-serif text-xl font-semibold text-ink">
                Aller plus loin
              </h2>
              <p className="mt-1 text-sm leading-6 text-muted">
                Consolide avec les exercices ou explore les notions liées.
              </p>
            </div>
            <div className="flex flex-wrap gap-3">
              {fiche.exercicesAssocies.length > 0 && (
                <ButtonLink href="/exercices" variant="primary">
                  S&apos;entraîner →
                </ButtonLink>
              )}
              <ButtonLink href="/fiches" variant="secondary">
                Autres fiches
              </ButtonLink>
            </div>
          </div>
        </Panel>
      )}
    </div>
  );
}
