import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { CollapsiblePanel } from "@/features/dashboard/components/collapsible-panel";
import { OnboardingBanner } from "@/features/dashboard/components/onboarding-banner";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { env } from "@/lib/env";
import { cn, formatDate } from "@/lib/utils";
import { DashboardData, DashboardSessionProgress } from "@/types/domain";

function TopicFocusList({
  items,
  emptyText,
}: {
  items: Array<{
    key: string;
    label: string;
    domainLabel: string;
    reviewReason: string;
    correctRate: number | null;
    attempts: number;
  }>;
  emptyText: string;
}) {
  if (items.length === 0) {
    return <p className="text-sm text-muted">{emptyText}</p>;
  }
  return (
    <div className="space-y-3">
      {items.map((item) => (
        <article
          key={item.key}
          className="relative overflow-hidden rounded-[1.25rem] border border-[#476257]/20 bg-paper pl-6 pr-4 py-4"
        >
          <span
            aria-hidden
            className="absolute left-0 top-0 h-full w-1 rounded-l-[1.25rem] bg-[#476257]"
          />
          <div className="flex flex-wrap items-center gap-2">
            <Badge tone="accentSecondary">{item.domainLabel}</Badge>
            {item.correctRate !== null ? (
              <Badge tone="warning">{item.correctRate} %</Badge>
            ) : null}
          </div>
          <h3 className="mt-2.5 text-base font-semibold text-ink">{item.label}</h3>
          {item.reviewReason ? (
            <p className="mt-1.5 text-sm leading-6 text-muted">{item.reviewReason}</p>
          ) : null}
          <p className="mt-1.5 text-xs text-muted/70">
            {item.attempts} tentative(s) enregistrée(s)
          </p>
        </article>
      ))}
    </div>
  );
}

type PlanItem = {
  label: string;
  detail: string;
  href: string;
  tag: string;
  tone: "warm" | "warning" | "neutral";
  step: number;
  estimatedMinutes: number;
};

function buildPlanDuJour(data: DashboardData): PlanItem[] {
  const plan: PlanItem[] = [];

  for (const session of data.resumeSessions.slice(0, 2)) {
    if (plan.length >= 3) break;
    plan.push({
      label: session.title,
      detail: `${session.answeredQuestions}/${session.questionCount} questions faites · ${session.subdomainLabel}`,
      href: `/exercices/${session.id}`,
      tag: "À reprendre",
      tone: "warm",
      step: plan.length + 1,
      estimatedMinutes: session.estimatedMinutes,
    });
  }

  for (const item of data.priorityItems) {
    if (plan.length >= 3) break;
    const targetSession = data.sessionProgress.find(
      (s: DashboardSessionProgress) =>
        s.topicKey === item.key && (s.status === "a_revoir" || s.status === "non_commencee"),
    );
    if (targetSession) {
      plan.push({
        label: item.label,
        detail: item.reviewReason || "Taux de réussite insuffisant — reprendre rapidement.",
        href: `/exercices/${targetSession.id}`,
        tag: "Prioritaire",
        tone: "warning",
        step: plan.length + 1,
        estimatedMinutes: targetSession.estimatedMinutes,
      });
    }
  }

  for (const item of data.fragileItems) {
    if (plan.length >= 3) break;
    const targetSession = data.sessionProgress.find(
      (s: DashboardSessionProgress) =>
        s.topicKey === item.key && (s.status === "a_revoir" || s.status === "non_commencee"),
    );
    if (targetSession) {
      plan.push({
        label: item.label,
        detail:
          item.reviewReason || "Notion encore instable — consolider avant de progresser.",
        href: `/exercices/${targetSession.id}`,
        tag: "À consolider",
        tone: "neutral",
        step: plan.length + 1,
        estimatedMinutes: targetSession.estimatedMinutes,
      });
    }
  }

  return plan;
}

export default async function DashboardPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const [data, diagnostic] = await Promise.all([
    getDashboardData(user.id, premium),
    getDiagnosticResult(user.id),
  ]);

  const completionRate =
    data.totalSeries === 0
      ? 0
      : Math.round((data.completedSeries / data.totalSeries) * 100);

  const masteryPercent =
    data.totalSeries === 0
      ? 0
      : Math.round((data.masteredSessions / data.totalSeries) * 100);

  const firstFreeSeries =
    data.sessionProgress
      .filter((s) => s.access_tier === "free")
      .sort((a, b) => a.recommendedOrder - b.recommendedOrder)[0] ?? null;

  const plan = buildPlanDuJour(data);

  return (
    <div className="space-y-6">
      <OnboardingBanner
        firstSeriesId={firstFreeSeries?.id ?? null}
        hasAttempts={data.totalAttempts > 0}
        diagnostic={diagnostic}
      />

      {/* ── Hero banner ── */}
      <div className="relative overflow-hidden rounded-[1.75rem] border border-accentSecondary/20 bg-[linear-gradient(135deg,#476257_0%,#394E45_50%,#2C2420_100%)] px-5 py-8 sm:px-8 sm:py-10 shadow-panel">
        <span
          aria-hidden
          className="pointer-events-none absolute -right-16 -top-16 h-72 w-72 rounded-full bg-paper/[0.04] select-none"
        />
        <span
          aria-hidden
          className="pointer-events-none absolute right-24 -bottom-12 h-44 w-44 rounded-full bg-paper/[0.03] select-none"
        />

        <Badge
          tone={premium ? "accentSecondary" : "neutral"}
          className="border-paper/20 bg-paper/10 text-paper/80"
        >
          {premium ? "Accès premium" : "Accès gratuit"}
        </Badge>
        <h1 className="mt-4 font-serif text-4xl sm:text-5xl font-semibold text-paper leading-none">
          Tableau de bord
        </h1>
        <p className="mt-3 text-sm text-paper/60 max-w-lg">
          Vos progrès, priorités et séries à reprendre — tout en un coup d&apos;œil.
        </p>
      </div>

      {/* ── Stats strip + progress bar ── */}
      {data.totalAttempts > 0 && (
        <div className="space-y-3">
          <div className="grid grid-cols-2 gap-px overflow-hidden rounded-2xl border border-border bg-border sm:grid-cols-4">
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-pine">
                {data.masteredSessions}
              </p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Maîtrisées</p>
              <p className="mt-0.5 text-xs text-muted">
                sur {data.totalSeries} série(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-accent">
                {data.overallCorrectRate === null ? "—" : `${data.overallCorrectRate}%`}
              </p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Score global</p>
              <p className="mt-0.5 text-xs text-muted">
                {data.totalAttempts} tentative(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-ink">{completionRate}%</p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Progression</p>
              <p className="mt-0.5 text-xs text-muted">
                {data.completedSeries} terminée(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-accentSecondary">
                {premium ? "∞" : data.remainingToday}
              </p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">
                {premium ? "Accès illimité" : "Questions du jour"}
              </p>
              {!premium && (
                <p className="mt-0.5 text-xs text-muted">
                  sur {env.freeDailyQuestionLimit}/jour
                </p>
              )}
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
      )}

      {/* ── Plan du jour ── */}
      {data.totalAttempts > 0 && (
        <div className="overflow-hidden rounded-2xl border border-accentSecondary/25 shadow-subtle">
          <div className="border-b border-accentSecondary/20 bg-[linear-gradient(135deg,rgba(164,104,73,0.12),rgba(252,250,246,1)_60%)] px-6 py-4">
            <div className="flex flex-wrap items-center justify-between gap-4">
              <div>
                <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
                  Session du jour
                </p>
                <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">
                  Plan du jour
                </h2>
              </div>
              <ButtonLink href="/exercices" variant="secondary">
                Catalogue complet
              </ButtonLink>
            </div>
          </div>

          <div className="bg-card px-6 py-5">
            {plan.length === 0 ? (
              <div className="rounded-xl border border-border bg-paper px-4 py-3">
                <p className="text-sm text-muted">
                  Commencez une série depuis la{" "}
                  <Link
                    href="/francais"
                    className="font-semibold text-ink underline underline-offset-2"
                  >
                    page Français
                  </Link>{" "}
                  pour que vos fragilités apparaissent ici.
                </p>
              </div>
            ) : (
              <div className="grid gap-3 xl:grid-cols-3">
                {plan.map((item) => (
                  <Link
                    key={`${item.step}-${item.href}`}
                    href={item.href}
                    className={cn(
                      "group relative flex flex-col overflow-hidden rounded-xl border bg-paper transition hover:shadow-panel",
                      item.tone === "warm" &&
                        "border-[#394E45]/25 hover:border-[#394E45]/50",
                      item.tone === "warning" &&
                        "border-[#476257]/20 hover:border-[#476257]/50",
                      item.tone === "neutral" &&
                        "border-[#6B8F80]/25 hover:border-[#6B8F80]/50",
                    )}
                  >
                    <span
                      aria-hidden
                      className={cn(
                        "absolute left-0 top-0 h-full w-1 rounded-l-xl",
                        item.tone === "warm" && "bg-[#394E45]",
                        item.tone === "warning" && "bg-[#476257]",
                        item.tone === "neutral" && "bg-[#6B8F80]",
                      )}
                    />
                    <div className="flex flex-1 flex-col pl-5 pr-4 py-4">
                      <div className="mb-3 flex items-center gap-3">
                        <div
                          className={cn(
                            "flex h-9 w-9 shrink-0 items-center justify-center rounded-full font-serif text-lg font-bold text-paper",
                            item.tone === "warm" && "bg-[#394E45]",
                            item.tone === "warning" && "bg-[#476257]",
                            item.tone === "neutral" && "bg-[#6B8F80]",
                          )}
                        >
                          {item.step}
                        </div>
                        <span
                          className={cn(
                            "rounded-full border px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em]",
                            item.tone === "warm" &&
                              "border-[#394E45]/30 bg-[rgba(57,78,69,0.08)] text-[#394E45]",
                            item.tone === "warning" &&
                              "border-[#476257]/30 bg-[rgba(71,98,87,0.08)] text-[#476257]",
                            item.tone === "neutral" &&
                              "border-[#6B8F80]/30 bg-[rgba(107,143,128,0.08)] text-[#6B8F80]",
                          )}
                        >
                          {item.tag}
                        </span>
                      </div>
                      <p className="flex-1 text-sm font-semibold leading-6 text-ink">
                        {item.label}
                      </p>
                      <p className="mt-1.5 text-xs leading-5 text-muted">{item.detail}</p>
                      <p
                        className={cn(
                          "mt-3 text-xs font-bold group-hover:underline",
                          item.tone === "warm" && "text-[#394E45]",
                          item.tone === "warning" && "text-[#476257]",
                          item.tone === "neutral" && "text-[#6B8F80]",
                        )}
                      >
                        Ouvrir cette série &rarr;
                      </p>
                    </div>
                  </Link>
                ))}
              </div>
            )}
          </div>
        </div>
      )}

      {/* ── Domaines — compact table ── */}
      <section>
        <div className="mb-3 flex items-end justify-between gap-4">
          <div>
            <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-[#476257]">
              Français
            </p>
            <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Domaines</h2>
          </div>
          <ButtonLink href="/francais" variant="secondary">
            Vue matière
          </ButtonLink>
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
                {/* Domain name */}
                <div>
                  <span className="text-sm font-semibold text-ink">{domain.label}</span>
                  <span className="ml-2 text-xs text-muted md:hidden">
                    {domain.totalSeries} séries
                  </span>
                </div>

                {/* Progress bar */}
                <div className="flex items-center gap-2">
                  <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
                    <div
                      className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all"
                      style={{ width: `${pct}%` }}
                    />
                  </div>
                  <span className="w-8 text-right text-xs tabular-nums text-muted">{pct}%</span>
                </div>

                {/* Score */}
                <span className="text-sm tabular-nums text-muted md:text-center">
                  <span className="text-xs md:hidden">Score : </span>
                  {domain.correctRate !== null ? `${domain.correctRate}%` : "—"}
                </span>

                {/* En cours */}
                <span className="text-sm tabular-nums text-muted md:text-center">
                  <span className="text-xs md:hidden">En cours : </span>
                  {domain.inProgressSeries}
                </span>

                {/* À revoir */}
                <span
                  className={cn(
                    "text-sm tabular-nums md:text-center",
                    domain.toReviewSeries > 0 ? "font-semibold text-warning" : "text-muted",
                  )}
                >
                  <span className="text-xs font-normal text-muted md:hidden">
                    À revoir :{" "}
                  </span>
                  {domain.toReviewSeries}
                </span>

                {/* Maîtrisées */}
                <span className="text-sm tabular-nums text-pine md:text-center">
                  <span className="text-xs text-muted md:hidden">Maîtrisées : </span>
                  {domain.masteredSeries}
                </span>

                {/* Explorer */}
                <span className="hidden text-xs font-semibold text-accent md:block md:text-right">
                  Explorer &rarr;
                </span>
              </Link>
            );
          })}
        </div>
      </section>

      {/* ── Priorités & Fragilités ── */}
      {data.totalAttempts > 0 && (
        <div className="space-y-4">
          <div className="grid gap-4 2xl:grid-cols-2">
            <CollapsiblePanel
              title="Priorités"
              tone="critical"
              badge={
                data.priorityItems.length > 0 ? data.priorityItems.length : undefined
              }
              defaultOpen={false}
            >
              <TopicFocusList
                items={data.priorityItems}
                emptyText="Aucune priorité forte détectée."
              />
            </CollapsiblePanel>
            <CollapsiblePanel
              title="Fragilités"
              tone="high"
              badge={
                data.fragileItems.length > 0 ? data.fragileItems.length : undefined
              }
              defaultOpen={false}
            >
              <TopicFocusList
                items={data.fragileItems}
                emptyText="Aucune fragilité notable."
              />
            </CollapsiblePanel>
          </div>

          <CollapsiblePanel
            title="Séries à reprendre"
            description="Séries commencées, isolées ici pour les retrouver facilement."
            tone="medium"
            badge={
              data.resumeSessions.length > 0 ? data.resumeSessions.length : undefined
            }
            defaultOpen={false}
            action={
              <ButtonLink href="/francais" variant="secondary">
                Voir les domaines
              </ButtonLink>
            }
          >
            {data.resumeSessions.length === 0 ? (
              <p className="text-sm text-muted">
                Aucune série en cours pour le moment.
              </p>
            ) : (
              <div className="space-y-2">
                {data.resumeSessions.map((session) => (
                  <SessionProgressCard key={session.id} session={session} compact />
                ))}
              </div>
            )}
          </CollapsiblePanel>

          <CollapsiblePanel
            title="Erreurs fréquentes"
            description="Indices utiles pour cibler la prochaine révision."
            tone="low"
            badge={
              data.frequentMistakes.length > 0
                ? data.frequentMistakes.length
                : undefined
            }
            defaultOpen={false}
          >
            {data.frequentMistakes.length === 0 ? (
              <p className="text-sm text-muted">
                Aucune erreur fréquente identifiée pour le moment.
              </p>
            ) : (
              <div className="grid gap-3 xl:grid-cols-2">
                {data.frequentMistakes.map((mistake) => (
                  <article
                    key={mistake.key}
                    className="relative overflow-hidden rounded-xl border border-[#6B8F80]/25 bg-paper pl-6 pr-4 py-3"
                  >
                    <span
                      aria-hidden
                      className="absolute left-0 top-0 h-full w-1 rounded-l-xl bg-[#6B8F80]"
                    />
                    <div className="flex flex-wrap items-center gap-2">
                      <Badge tone="warning">{mistake.occurrences} erreur(s)</Badge>
                      <Badge tone="accentSecondary">{mistake.domainLabel}</Badge>
                    </div>
                    <h3 className="mt-2 text-sm font-semibold text-ink">
                      {mistake.title}
                    </h3>
                    <p className="mt-1 text-xs leading-5 text-muted">
                      {mistake.exampleInstruction}
                    </p>
                    <p className="mt-1 text-xs text-muted/70">
                      {mistake.subdomainLabel} · {formatDate(mistake.lastAnsweredAt)}
                    </p>
                  </article>
                ))}
              </div>
            )}
          </CollapsiblePanel>

          {/* ── Acquis ── */}
          <Panel className="relative overflow-hidden border-accent/20 bg-card">
            <span
              aria-hidden
              className="absolute left-0 top-0 h-full w-1.5 rounded-l-[1.85rem] bg-accent"
            />
            <div className="flex items-start justify-between gap-4 pl-2">
              <div>
                <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-accent">
                  Maîtrisé
                </p>
                <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">
                  Acquis
                </h2>
              </div>
              <ButtonLink href="/progression" variant="secondary">
                Détail
              </ButtonLink>
            </div>

            {data.masteredSessions === 0 ? (
              <p className="mt-4 text-sm text-muted pl-2">
                Aucun acquis enregistré pour l&apos;instant. Terminez vos premières séries
                pour les voir apparaître ici.
              </p>
            ) : (
              <div className="mt-4 space-y-2 pl-2">
                {data.sessionProgress
                  .filter((s) => s.status === "maitrisee")
                  .slice(0, 3)
                  .map((session) => (
                    <div
                      key={session.id}
                      className="flex items-center gap-3 rounded-xl border border-accent/15 bg-[linear-gradient(135deg,rgba(71,98,87,0.06),rgba(253,249,243,1))] px-4 py-2.5"
                    >
                      <div className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-accent/10">
                        <svg
                          className="h-3.5 w-3.5 text-accent"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                          strokeWidth={2.5}
                        >
                          <path
                            strokeLinecap="round"
                            strokeLinejoin="round"
                            d="M5 13l4 4L19 7"
                          />
                        </svg>
                      </div>
                      <div className="min-w-0 flex-1">
                        <p className="text-[0.6rem] uppercase tracking-[0.14em] text-accent font-semibold">
                          {session.subdomainLabel}
                        </p>
                        <p className="truncate text-sm font-semibold text-ink">
                          {session.title}
                        </p>
                      </div>
                      {session.correctRate !== null ? (
                        <p className="shrink-0 font-serif text-xl font-bold text-accent">
                          {session.correctRate}
                          <span className="text-xs font-normal text-muted"> %</span>
                        </p>
                      ) : null}
                    </div>
                  ))}
                {data.masteredSessions > 3 ? (
                  <p className="text-xs text-muted">
                    +{data.masteredSessions - 3} autre(s) série(s) maîtrisée(s) — voir la
                    progression complète.
                  </p>
                ) : null}
              </div>
            )}
          </Panel>
        </div>
      )}

      {/* ── Activité récente ── */}
      {data.totalAttempts > 0 && (
        <Panel>
          <div className="flex items-center justify-between gap-4 border-b border-border pb-4">
            <div>
              <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-[#6B8F80]">
                Historique
              </p>
              <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
                Activité récente
              </h2>
            </div>
            <ButtonLink href="/progression" variant="secondary">
              Statistiques
            </ButtonLink>
          </div>

          {data.recentActivity.length === 0 ? (
            <p className="mt-4 text-sm text-muted">
              Aucune activité récente pour le moment.
            </p>
          ) : (
            <div className="mt-4 grid gap-2 xl:grid-cols-2">
              {data.recentActivity.slice(0, 4).map((activity) => (
                <article
                  key={activity.attemptId}
                  className={cn(
                    "relative overflow-hidden rounded-xl border bg-paper pl-5 pr-4 py-3",
                    activity.isCorrect
                      ? "border-[#6B8F80]/25"
                      : "border-[#394E45]/25",
                  )}
                >
                  <span
                    aria-hidden
                    className={cn(
                      "absolute left-0 top-0 h-full w-1 rounded-l-xl",
                      activity.isCorrect ? "bg-[#6B8F80]" : "bg-[#394E45]",
                    )}
                  />
                  <div className="flex flex-wrap items-center gap-2">
                    <Badge tone={activity.isCorrect ? "success" : "warning"}>
                      {activity.isCorrect ? "Correct" : "À revoir"}
                    </Badge>
                    <Badge tone="accentSecondary">{activity.domainLabel}</Badge>
                  </div>
                  <p className="mt-1.5 text-sm font-medium leading-6 text-ink">
                    {activity.instruction}
                  </p>
                  <p className="mt-1 text-xs text-muted/70">
                    {activity.subdomainLabel} · {formatDate(activity.answeredAt)}
                  </p>
                </article>
              ))}
            </div>
          )}
        </Panel>
      )}
    </div>
  );
}
