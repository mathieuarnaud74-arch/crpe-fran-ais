import { notFound } from "next/navigation";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { FicheHeader } from "@/features/fiches/components/fiche-header";
import { FicheReference } from "@/features/fiches/components/fiche-reference";
import { FicheSprint } from "@/features/fiches/components/fiche-sprint";
import { FicheOperatoire } from "@/features/fiches/components/fiche-operatoire";
import { getFicheBySlug, getAllFiches } from "@/features/fiches/lib/get-fiche";

type Params = Promise<{ slug: string }>;

export async function generateStaticParams() {
  const fiches = getAllFiches();
  return fiches.map((f) => ({ slug: f.slug }));
}

export default async function FichePage({ params }: { params: Params }) {
  const { slug } = await params;
  const fiche = getFicheBySlug(slug);

  if (!fiche) notFound();

  return (
    <div className="space-y-8">
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-start xl:justify-between">
          <FicheHeader fiche={fiche} />
          <div className="flex shrink-0 flex-wrap gap-3">
            <ButtonLink href="/fiches" variant="secondary">
              ← Toutes les fiches
            </ButtonLink>
          </div>
        </div>
      </Panel>

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
