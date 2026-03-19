import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { cn } from "@/lib/utils";

export default async function FrenchPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);
  const sessionsToReview = data.sessionProgress.filter(
    (session) => session.status === "a_revoir",
  ).length;

  const activeSessions = data.sessionProgress
    .filter((session) => session.status !== "non_commencee")
    .slice(0, 3);

  const masteryPercent =
    data.totalSeries === 0
      ? 0
      : Math.round((data.masteredSessions / data.totalSeries) * 100);

  return (
    <div className="space-y-6">
      {/* ── Header ── */}
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

      {/* ── Stats strip + progress bar ── */}
      <div className="space-y-3">
        <div className="grid grid-cols-2 gap-px overflow-hidden rounded-2xl border border-border bg-border sm:grid-cols-4">
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-ink">{data.totalSeries}</p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">Séries</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-pine">
              {data.masteredSessions}
            </p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">Maîtrisées</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-accent">
              {data.inProgressSeries}
            </p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">En cours</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-accentSecondary">
              {sessionsToReview}
            </p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">À revoir</p>
          </div>
        </div>

        <div>
          <div className="mb-1.5 flex justify-between text-xs text-muted">
            <span>Maîtrise globale</span>
            <span>
              {data.masteredSessions}/{data.totalSeries} maîtrisées ({masteryPercent}%)
            </span>
          </div>
          <div className="h-2 w-full overflow-hidden rounded-full bg-secondary">
            <div
              className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all"
              style={{ width: `${masteryPercent}%` }}
            />
          </div>
        </div>
      </div>

      {/* ── Domaines — compact table ── */}
      <section>
        <div className="mb-3 flex items-baseline gap-3">
          <h2 className="font-serif text-2xl font-semibold text-ink">Domaines</h2>
          <span className="text-xs text-muted">Cliquez pour explorer</span>
        </div>
        <div className="overflow-hidden rounded-2xl border border-border">
          {/* Desktop header */}
          <div className="hidden border-b border-border bg-secondary/50 px-5 py-2.5 md:grid md:grid-cols-[1fr_8rem_5rem_5rem_5rem_4.5rem_5rem] md:gap-3 md:items-center">
            <span className="text-xs font-semibold uppercase tracking-widest text-muted">
              Domaine
            </span>
            <span className="text-xs font-semibold uppercase tracking-widest text-muted">
              Progression
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              Score
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              En c.
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              À rev.
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              Maîtr.
            </span>
            <span />
          </div>
          {data.domainDirectory.map((domain, i) => {
            const pct =
              domain.totalSeries > 0
                ? Math.round((domain.masteredSeries / domain.totalSeries) * 100)
                : 0;
            return (
              <Link
                key={domain.key}
                href={domain.href}
                className={cn(
                  "flex flex-col gap-2 bg-card px-5 py-4 transition-colors hover:bg-paper md:grid md:grid-cols-[1fr_8rem_5rem_5rem_5rem_4.5rem_5rem] md:items-center md:gap-3",
                  i < data.domainDirectory.length - 1 && "border-b border-border",
                )}
              >
                <div>
                  <span className="text-sm font-semibold text-ink">{domain.label}</span>
                  <span className="ml-2 text-xs text-muted md:hidden">
                    {domain.totalSeries} séries
                  </span>
                </div>

                <div className="flex items-center gap-2">
                  <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
                    <div
                      className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all"
                      style={{ width: `${pct}%` }}
                    />
                  </div>
                  <span className="w-8 text-right text-xs tabular-nums text-muted">
                    {pct}%
                  </span>
                </div>

                <span className="text-sm tabular-nums text-muted md:text-center">
                  <span className="text-xs md:hidden">Score : </span>
                  {domain.correctRate !== null ? `${domain.correctRate}%` : "—"}
                </span>

                <span className="text-sm tabular-nums text-muted md:text-center">
                  <span className="text-xs md:hidden">En cours : </span>
                  {domain.inProgressSeries}
                </span>

                <span
                  className={cn(
                    "text-sm tabular-nums md:text-center",
                    domain.toReviewSeries > 0
                      ? "font-semibold text-warning"
                      : "text-muted",
                  )}
                >
                  <span className="text-xs font-normal text-muted md:hidden">
                    À revoir :{" "}
                  </span>
                  {domain.toReviewSeries}
                </span>

                <span className="text-sm tabular-nums text-pine md:text-center">
                  <span className="text-xs text-muted md:hidden">Maîtrisées : </span>
                  {domain.masteredSeries}
                </span>

                <span className="hidden text-xs font-semibold text-accent md:block md:text-right">
                  Explorer &rarr;
                </span>
              </Link>
            );
          })}
        </div>
      </section>

      {/* ── Séries actives ── */}
      <Panel>
        <div className="flex items-center justify-between gap-4">
          <h2 className="font-serif text-xl font-semibold text-ink">En ce moment</h2>
          <ButtonLink href="/progression" variant="secondary">
            Progression
          </ButtonLink>
        </div>

        {activeSessions.length === 0 ? (
          <p className="mt-4 text-sm text-muted">
            Aucune série commencée pour le moment.
          </p>
        ) : (
          <div className="mt-4 space-y-2">
            {activeSessions.map((session) => (
              <SessionProgressCard key={session.id} session={session} compact />
            ))}
          </div>
        )}
      </Panel>
    </div>
  );
}
