import { Badge } from "@/components/ui/badge";
import { HomepageAdminEditor } from "@/features/homepage/components/admin-editor";
import { HomepageAdminShell } from "@/features/homepage/components/admin-shell";
import { getHomepageEditorData } from "@/features/homepage/server/queries";

type SearchParams = Promise<{
  section?: string;
  status?: string;
}>;

export default async function HomepageAdminPage({
  searchParams,
}: {
  searchParams: SearchParams;
}) {
  const [{ section, status }, editorData] = await Promise.all([
    searchParams,
    getHomepageEditorData(),
  ]);

  return (
    <HomepageAdminShell>
      <div className="space-y-6">
        <section className="rounded-[1.75rem] border border-border bg-card px-6 py-6 shadow-panel">
          <div className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
            <div className="space-y-3">
              <Badge tone="accentSecondary">Edition encadree</Badge>
              <div>
                <h1 className="font-serif text-4xl font-semibold text-ink">
                  Homepage administrable
                </h1>
                <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                  Analyse retenue : hero, repere de confiance, benefices, preuves produit,
                  domaines, FAQ et CTA final. Architecture choisie : pages + page_sections,
                  brouillon/publication, registry de blocs types et rendu dynamique robuste.
                </p>
              </div>
            </div>

            <div className="max-w-md rounded-[1.35rem] border border-accentSecondary/20 bg-accentSecondarySoft/50 px-5 py-4">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondaryDark">
                Workflow
              </p>
              <p className="mt-2 text-sm leading-7 text-ink">
                Modifier le brouillon, reorganiser les blocs, previsualiser la page, puis publier
                explicitement la version finale.
              </p>
            </div>
          </div>
        </section>

        <HomepageAdminEditor
          page={editorData.page}
          sections={editorData.sections}
          availableTypes={editorData.availableTypes}
          selectedSectionId={section}
          status={status}
        />
      </div>
    </HomepageAdminShell>
  );
}
