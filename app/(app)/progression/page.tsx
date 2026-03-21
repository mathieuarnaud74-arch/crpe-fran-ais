import { AchievementBadges } from "@/components/ui/achievement-badges";
import { ActivityHeatmap } from "@/components/ui/activity-heatmap";
import { Badge } from "@/components/ui/badge";
import { BadgeUnlockToast } from "@/components/ui/badge-unlock-toast";
import { BadgesSummary } from "@/components/ui/badges-summary";
import { ButtonLink } from "@/components/ui/button";
import { DomainAccordion } from "@/components/ui/domain-accordion";
import { Panel } from "@/components/ui/panel";
import { ProgressionRadarChart } from "@/components/ui/progression-radar-chart";
import { ScoreEvolutionChart } from "@/components/ui/score-evolution-chart";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { CollapsiblePanel } from "@/features/dashboard/components/collapsible-panel";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { cn, formatDate } from "@/lib/utils";

import { ChartToggle } from "./chart-toggle";

export default async function ProgressPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);

  const coveragePercent =
    data.totalSeries === 0 ? 0 : Math.round((data.masteredSessions / data.totalSeries) * 100);

  return (
    <div className="space-y-4">
      <BadgeUnlockToast earnedBadges={data.earnedBadges} />

      {/* ── Header allégé ── */}
      <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
        <h1 className="font-serif text-3xl font-semibold text-ink">Progression</h1>
        <div className="flex flex-wrap gap-3">
          <ButtonLink href="/tableau-de-bord" variant="secondary" size="sm">
            Tableau de bord
          </ButtonLink>
          <ButtonLink href="/francais" size="sm">Parcourir les domaines</ButtonLink>
        </div>
      </div>

      {/* ── Stats compactes + barre couverture ── */}
      <Panel className="space-y-3 p-4 sm:p-5">
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-4 sm:gap-0 sm:divide-x sm:divide-border">
          <div className="sm:px-4 sm:first:pl-0 sm:last:pr-0">
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">Tentatives</p>
            <p className="mt-1 font-serif text-2xl font-semibold text-ink">{data.totalAttempts}</p>
          </div>
          <div className="sm:px-4">
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">Réussite</p>
            <p className="mt-1 font-serif text-2xl font-semibold text-ink">
              {data.overallCorrectRate === null ? "—" : `${data.overallCorrectRate} %`}
            </p>
          </div>
          <div className="sm:px-4">
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">Maîtrisées</p>
            <p className="mt-1 font-serif text-2xl font-semibold text-ink">
              {data.masteredSessions}<span className="text-base text-muted">/{data.totalSeries}</span>
            </p>
          </div>
          <div className="sm:px-4 sm:last:pr-0">
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">Non commencées</p>
            <p className="mt-1 font-serif text-2xl font-semibold text-ink">{data.notStartedSessions}</p>
          </div>
        </div>
        {data.totalSeries > 0 && (
          <div className="flex items-center gap-3">
            <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
              <div
                className="h-2 rounded-full bg-gradient-progress transition-all duration-500"
                style={{ width: `${coveragePercent}%` }}
                role="presentation"
              />
            </div>
            <span className="shrink-0 text-xs font-medium text-muted">{coveragePercent} %</span>
          </div>
        )}
      </Panel>

      {/* ── Badges — résumé compact ── */}
      <BadgesSummary earnedBadges={data.earnedBadges} />

      {/* ── Radar + Évolution — panneau fusionné ── */}
      {data.totalAttempts > 0 && (
        <Panel className="p-4 sm:p-5">
          <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-[#476257]">
            Vue d&apos;ensemble
          </p>
          <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
            Profil &amp; tendance
          </h2>

          {/* Desktop: side by side */}
          <div className="mt-4 hidden gap-4 md:grid md:grid-cols-2">
            <ProgressionRadarChart domains={data.domainProgress} compact />
            <ScoreEvolutionChart data={data.scoreEvolution} compact />
          </div>

          {/* Mobile: toggle between radar and evolution */}
          <div className="mt-4 md:hidden">
            <ChartToggle
              radar={<ProgressionRadarChart domains={data.domainProgress} compact />}
              evolution={<ScoreEvolutionChart data={data.scoreEvolution} compact />}
            />
          </div>
        </Panel>
      )}

      {/* ── Domaines — accordéon ── */}
      <section>
        <h2 className="mb-2 font-serif text-xl font-semibold text-ink">Progression par domaine</h2>
        <DomainAccordion domains={data.domainProgress} />
      </section>

      {/* ── Erreurs fréquentes + Activité récente — compacté ── */}
      <div className="grid gap-4 lg:grid-cols-2">
        <CompactMistakes mistakes={data.frequentMistakes} />
        <CompactActivity activities={data.recentActivity} />
      </div>

      {/* ── Heatmap — collapsible fermé ── */}
      {data.totalAttempts > 0 && (
        <CollapsiblePanel
          title="Calendrier d'activité"
          description="Votre régularité sur les 13 dernières semaines"
          tone="medium"
          defaultOpen={false}
        >
          <ActivityHeatmap dailyActivity={data.dailyActivity} weeks={13} />
        </CollapsiblePanel>
      )}

    </div>
  );
}

/* ── Erreurs fréquentes compactes ── */
function CompactMistakes({
  mistakes,
}: {
  mistakes: import("@/types/domain").DashboardFrequentMistake[];
}) {
  if (mistakes.length === 0) {
    return (
      <Panel className="p-4">
        <h2 className="font-serif text-lg font-semibold text-ink">Erreurs fréquentes</h2>
        <p className="mt-2 text-sm text-muted">Aucune erreur fréquente identifiée pour le moment.</p>
      </Panel>
    );
  }

  const shown = mistakes.slice(0, 3);
  const remaining = mistakes.length - shown.length;

  return (
    <Panel className="p-4">
      <h2 className="font-serif text-lg font-semibold text-ink">Erreurs fréquentes</h2>
      <div className="mt-3 space-y-1.5">
        {shown.map((m) => (
          <div
            key={m.key}
            className="flex items-center gap-3 rounded-xl bg-paper px-3 py-2.5"
          >
            <Badge tone="warning" size="sm">{m.occurrences}x</Badge>
            <div className="min-w-0 flex-1">
              <p className="truncate text-sm font-medium text-ink">{m.title}</p>
              <p className="truncate text-xs text-muted">{m.domainLabel} · {m.subdomainLabel}</p>
            </div>
          </div>
        ))}
      </div>
      {remaining > 0 && (
        <p className="mt-2 text-center text-xs text-muted">
          + {remaining} autre{remaining > 1 ? "s" : ""} erreur{remaining > 1 ? "s" : ""}
        </p>
      )}
    </Panel>
  );
}

/* ── Activité récente compacte ── */
function CompactActivity({
  activities,
}: {
  activities: import("@/types/domain").DashboardActivity[];
}) {
  if (activities.length === 0) {
    return (
      <Panel className="p-4">
        <h2 className="font-serif text-lg font-semibold text-ink">Activité récente</h2>
        <p className="mt-2 text-sm text-muted">Aucune activité récente pour le moment.</p>
      </Panel>
    );
  }

  const shown = activities.slice(0, 3);
  const remaining = activities.length - shown.length;

  return (
    <Panel className="p-4">
      <h2 className="font-serif text-lg font-semibold text-ink">Activité récente</h2>
      <div className="mt-3 space-y-1.5">
        {shown.map((a) => (
          <div
            key={a.attemptId}
            className="flex items-center gap-3 rounded-xl bg-paper px-3 py-2.5"
          >
            <Badge tone={a.isCorrect ? "success" : "warning"} size="sm">
              {a.isCorrect ? "OK" : "KO"}
            </Badge>
            <div className="min-w-0 flex-1">
              <p className="truncate text-sm font-medium text-ink">{a.instruction}</p>
              <p className="truncate text-xs text-muted">{a.domainLabel} · {a.sessionTitle}</p>
            </div>
          </div>
        ))}
      </div>
      {remaining > 0 && (
        <p className="mt-2 text-center text-xs text-muted">
          + {remaining} autre{remaining > 1 ? "s" : ""} activité{remaining > 1 ? "s" : ""}
        </p>
      )}
    </Panel>
  );
}
