import type { Metadata } from "next";
import Link from "next/link";
import { ChevronRight } from "lucide-react";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { DOMAINE_LABELS, MODEL_LABELS, FicheRow } from "@/features/fiches/components/fiche-card";

export const metadata: Metadata = {
  title: "Fiches de révision",
  description: "Fiches synthétiques pour réviser le CRPE Français.",
};
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getAllFiches } from "@/features/fiches/lib/get-fiche";
import { getCompletedFicheSlugs, getFicheReadsCountToday } from "@/features/fiches/server/queries";
import { canReadFiche, getDailyRemainingFicheQuota } from "@/lib/freemium";
import { env } from "@/lib/env";
import type { FicheModel } from "@/features/fiches/types";

type SearchParams = Promise<{
  domaine?: string;
  model?: string;
}>;

export default async function FichesPage({
  searchParams,
}: {
  searchParams: SearchParams;
}) {
  const [{ domaine, model }, user] = await Promise.all([searchParams, requireUser()]);
  const [premium, allFiches] = await Promise.all([
    isPremiumUser(user.id),
    Promise.resolve(getAllFiches()),
  ]);
  const [completedSlugs, ficheReadsToday] = await Promise.all([
    getCompletedFicheSlugs(user.id),
    getFicheReadsCountToday(user.id),
  ]);

  const remainingFiches = getDailyRemainingFicheQuota(ficheReadsToday, premium);
  const quotaReached = !premium && !canReadFiche(ficheReadsToday, premium);

  const filtered = allFiches.filter((f) => {
    if (domaine && f.domaine !== domaine) return false;
    if (model && f.model !== model) return false;
    return true;
  });

  const domains = [...new Set(allFiches.map((f) => f.domaine))];
  const models: FicheModel[] = ["reference", "sprint", "operatoire"];

  function buildHref(params: { domaine?: string; model?: string }) {
    const p = new URLSearchParams();
    if (params.domaine) p.set("domaine", params.domaine);
    if (params.model) p.set("model", params.model);
    const q = p.toString();
    return q ? `/fiches?${q}` : "/fiches";
  }

  const groupedDomains = domaine
    ? [domaine]
    : [...new Set(filtered.map((f) => f.domaine))];

  function getFicheLockState(fiche: { accessTier: string; slug: string }) {
    const isCompleted = completedSlugs.has(fiche.slug);
    if (fiche.accessTier === "premium" && !premium) {
      return { locked: true, lockReason: "premium" as const };
    }
    if (quotaReached && !isCompleted) {
      return { locked: true, lockReason: "quota" as const };
    }
    return { locked: false, lockReason: undefined };
  }

  return (
    <div className="space-y-8">
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Révision</Badge>
            <div>
              <h1 className="font-serif text-3xl font-semibold text-ink sm:text-4xl">
                Fiches CRPE
              </h1>
              <p className="mt-3 max-w-2xl text-sm leading-7 text-muted">
                Synthèses rigoureuses pour réviser le français du CRPE : règles
                disciplinaires, dimension didactique, pièges de concours et tests
                d&apos;auto-évaluation. Trois modèles selon votre besoin du moment.
              </p>
            </div>
          </div>
          <p className="shrink-0 text-sm text-muted">
            {filtered.length} fiche{filtered.length > 1 ? "s" : ""}
          </p>
        </div>
      </Panel>

      {!premium && (
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
              Quota de fiches atteint ({env.freeDailyFicheLimit} par jour). Les fiches déjà lues restent
              accessibles. Votre quota se réinitialise demain matin —{" "}
              <Link href="/abonnement" className="font-semibold underline underline-offset-2">
                accès illimité dès 0,99 €
              </Link>
              .
            </p>
          )}
        </Panel>
      )}

      <div className="space-y-4">
        <div>
          <p className="mb-2 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            Domaine
          </p>
          <div className="flex flex-wrap gap-2">
            <ButtonLink
              href="/fiches"
              variant={!domaine ? "primary" : "secondary"}
              size="sm"
            >
              Tous
            </ButtonLink>
            {domains.map((d) => (
              <ButtonLink
                key={d}
                href={buildHref({ domaine: d, model })}
                variant={domaine === d ? "primary" : "secondary"}
                size="sm"
              >
                {DOMAINE_LABELS[d] ?? d}
              </ButtonLink>
            ))}
          </div>
        </div>

        <div>
          <p className="mb-2 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            Format
          </p>
          <div className="flex flex-wrap gap-2">
            <ButtonLink
              href={buildHref({ domaine })}
              variant={!model ? "primary" : "secondary"}
              size="sm"
            >
              Tous
            </ButtonLink>
            {models.map((m) => (
              <ButtonLink
                key={m}
                href={buildHref({ domaine, model: m })}
                variant={model === m ? "primary" : "secondary"}
                size="sm"
              >
                {MODEL_LABELS[m]}
              </ButtonLink>
            ))}
          </div>
        </div>
      </div>

      {filtered.length === 0 ? (
        <Panel>
          <p className="font-serif text-xl font-semibold text-ink">
            Aucune fiche disponible
          </p>
          <p className="mt-2 text-sm text-muted">
            Essayez de modifier les filtres.
          </p>
          <ButtonLink href="/fiches" variant="secondary" size="sm" className="mt-4">
            Réinitialiser
          </ButtonLink>
        </Panel>
      ) : (
        <div className="divide-y divide-border">
          {groupedDomains.map((d) => {
            const fiches = filtered.filter((f) => f.domaine === d);
            if (fiches.length === 0) return null;
            return (
              <details key={d} className="group/category">
                <summary className="flex cursor-pointer select-none list-none items-center gap-2.5 py-4 [&::-webkit-details-marker]:hidden">
                  <ChevronRight className="h-3.5 w-3.5 shrink-0 text-muted transition-transform duration-200 group-open/category:rotate-90" aria-hidden="true" />
                  <h2 className="text-sm font-semibold uppercase tracking-[0.14em] text-muted">
                    {DOMAINE_LABELS[d] ?? d}
                  </h2>
                  <span className="text-xs text-muted/60">
                    {fiches.length}
                  </span>
                </summary>
                <div className="grid gap-x-8 gap-y-0 pb-4 sm:grid-cols-2">
                  {fiches.map((fiche) => {
                    const { locked, lockReason } = getFicheLockState(fiche);
                    return (
                      <FicheRow
                        key={fiche.id}
                        fiche={fiche}
                        completed={completedSlugs.has(fiche.slug)}
                        locked={locked}
                        lockReason={lockReason}
                      />
                    );
                  })}
                </div>
              </details>
            );
          })}
        </div>
      )}

      <Panel className="bg-secondary">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-serif text-xl font-semibold text-ink">
              Envie de pratiquer ?
            </h2>
            <p className="mt-1 text-sm leading-6 text-muted">
              Les exercices s&apos;entraînent sur les mêmes notions que les fiches.
            </p>
          </div>
          <ButtonLink href="/exercices" variant="secondary">
            Voir les exercices
          </ButtonLink>
        </div>
      </Panel>
    </div>
  );
}
