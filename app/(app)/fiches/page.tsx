import type { Metadata } from "next";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { DOMAINE_LABELS, MODEL_LABELS, FicheRow } from "@/features/fiches/components/fiche-card";

export const metadata: Metadata = {
  title: "Fiches de révision",
  description: "Fiches synthétiques pour réviser le CRPE Français.",
};
import { getAllFiches } from "@/features/fiches/lib/get-fiche";
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
  const { domaine, model } = await searchParams;
  const allFiches = getAllFiches();

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
        <div className="space-y-6">
          {groupedDomains.map((d, i) => {
            const fiches = filtered.filter((f) => f.domaine === d);
            if (fiches.length === 0) return null;
            return (
              <section key={d} className={i > 0 ? "border-t border-border pt-6" : ""}>
                <div className="mb-2 flex items-center gap-2.5">
                  <h2 className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
                    {DOMAINE_LABELS[d] ?? d}
                  </h2>
                  <span className="text-xs text-muted/60">
                    {fiches.length}
                  </span>
                </div>
                <div className="grid gap-x-8 gap-y-0 sm:grid-cols-2">
                  {fiches.map((fiche) => (
                    <FicheRow key={fiche.id} fiche={fiche} />
                  ))}
                </div>
              </section>
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
