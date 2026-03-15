import { SiteHeader } from "@/components/site-header";
import { Panel } from "@/components/ui/panel";
import { getOptionalUser } from "@/features/auth/server/guards";

export default async function MentionsLegalesPage() {
  const user = await getOptionalUser();

  return (
    <div className="min-h-screen">
      <SiteHeader authenticated={Boolean(user)} />
      <div className="mx-auto max-w-4xl px-6 py-16">
        <Panel>
          <h1 className="font-serif text-4xl font-semibold text-ink">Mentions légales</h1>
          <div className="mt-6 space-y-4 text-sm leading-7 text-ink/75">
            <p>Éditeur du site : à compléter avant mise en production.</p>
            <p>Adresse postale : placeholder explicite à remplacer.</p>
            <p>Email de contact : placeholder explicite à remplacer.</p>
            <p>Hébergement : Vercel Inc. pour l&apos;application, Supabase pour la base de données.</p>
          </div>
        </Panel>
      </div>
    </div>
  );
}
