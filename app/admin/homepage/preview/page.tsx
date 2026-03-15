import Link from "next/link";

import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { SubmitButton } from "@/features/homepage/components/submit-button";
import { HomepageRenderer } from "@/features/homepage/components/renderer";
import { publishHomepageAction } from "@/features/homepage/server/actions";
import { ensureHomepageDraftExists } from "@/features/homepage/server/queries";

export default async function HomepagePreviewPage() {
  const homepage = await ensureHomepageDraftExists();

  return (
    <div className="min-h-screen bg-paper text-ink">
      <div className="border-b border-ink/10 bg-ink text-paper">
        <div className="mx-auto flex max-w-6xl flex-col gap-4 px-6 py-4 lg:flex-row lg:items-center lg:justify-between">
          <div className="space-y-2">
            <Badge tone="neutral" className="border-white/10 bg-white/10 text-paper">
              Preview du brouillon
            </Badge>
            <div>
              <p className="font-serif text-3xl font-semibold">Homepage en previsualisation</p>
              <p className="mt-2 max-w-3xl text-sm leading-7 text-paper/70">
                Cette vue reprend le rendu public avec les sections du brouillon. Elle n&apos;affecte
                pas la homepage live tant que vous ne publiez pas.
              </p>
            </div>
          </div>

          <div className="flex flex-wrap items-center gap-3">
            <ButtonLink
              href="/admin/homepage"
              variant="secondary"
              className="bg-white text-ink hover:bg-paper"
            >
              Retour a l&apos;editeur
            </ButtonLink>
            <ButtonLink
              href="/"
              variant="secondary"
              className="border-white/15 bg-white/5 text-paper hover:bg-white/10"
            >
              Voir le live
            </ButtonLink>
            <form action={publishHomepageAction}>
              <SubmitButton
                idleLabel="Publier ce brouillon"
                pendingLabel="Publication..."
              />
            </form>
          </div>
        </div>
      </div>

      <SiteHeader authenticated />
      <HomepageRenderer sections={homepage.sections} authenticated />
      <div className="border-t border-border/70">
        <SiteFooter />
      </div>

      <div className="fixed bottom-6 right-6 hidden lg:block">
        <Link
          href="/admin/homepage"
          className="inline-flex items-center justify-center rounded-full border border-border bg-card px-5 py-3 text-sm font-semibold text-ink shadow-panel"
        >
          Retour a l&apos;editeur
        </Link>
      </div>
    </div>
  );
}
