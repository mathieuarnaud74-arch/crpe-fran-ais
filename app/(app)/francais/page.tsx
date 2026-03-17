import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { DomainSummaryCard } from "@/features/dashboard/components/domain-summary-card";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";

export default async function FrenchPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);
  const sessionsToReview = data.sessionProgress.filter((session) => session.status === "a_revoir").length;

  const activeSessions = data.sessionProgress
    .filter((session) => session.status !== "non_commencee")
    .slice(0, 3);

  return (
    <div className="space-y-8">
      <Panel className="border-border bg-gradient-panel">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div>
            <Badge tone="accentSecondary">{data.subjectLabel}</Badge>
            <h1 className="mt-4 font-serif text-4xl font-semibold text-ink">Français</h1>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              Tableau de bord
            </ButtonLink>
            <ButtonLink href="/exercices">Catalogue complet</ButtonLink>
          </div>
        </div>
      </Panel>

      <div className="grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Séries</p>
          <p className="mt-3 font-serif text-4xl text-ink">{data.totalSeries}</p>
        </Panel>
        <Panel className="bg-secondary">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Maîtrisées</p>
          <p className="mt-3 font-serif text-4xl text-ink">{data.masteredSessions}</p>
        </Panel>
        <Panel className="bg-accentSecondarySoft">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">En cours</p>
          <p className="mt-3 font-serif text-4xl text-ink">{data.inProgressSeries}</p>
        </Panel>
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">À revoir</p>
          <p className="mt-3 font-serif text-4xl text-ink">{sessionsToReview}</p>
        </Panel>
      </div>

      <section className="space-y-4">
        <div>
          <h2 className="font-serif text-3xl font-semibold text-ink">Domaines</h2>
        </div>
        <div className="grid gap-4 sm:grid-cols-2 xl:grid-cols-3">
          {data.domainDirectory.map((domain) => (
            <DomainSummaryCard key={domain.key} domain={domain} />
          ))}
        </div>
      </section>

      <Panel>
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">En ce moment</h2>
          </div>
          <ButtonLink href="/progression" variant="secondary">
            Voir toute la progression
          </ButtonLink>
        </div>

        {activeSessions.length === 0 ? (
          <p className="mt-6 text-sm text-muted">Aucune série commencée pour le moment.</p>
        ) : (
          <div className="mt-6 space-y-3">
            {activeSessions.map((session) => (
              <SessionProgressCard key={session.id} session={session} compact />
            ))}
          </div>
        )}
      </Panel>
    </div>
  );
}
