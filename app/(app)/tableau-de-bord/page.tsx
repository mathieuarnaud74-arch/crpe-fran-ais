import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { CollapsiblePanel } from "@/features/dashboard/components/collapsible-panel";
import { DomainSummaryCard } from "@/features/dashboard/components/domain-summary-card";
import { OnboardingBanner } from "@/features/dashboard/components/onboarding-banner";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { env } from "@/lib/env";
import { cn, formatDate } from "@/lib/utils";
import { DashboardData, DashboardSessionProgress } from "@/types/domain";

function SummaryMetric({
  label,
  value,
  detail,
  tone = "default",
}: {
  label: string;
  value: string | number;
  detail?: string;
  tone?: "default" | "warm" | "soft";
}) {
  const isLight = tone === "default";
  return (
    <div
      className={cn(
        "relative overflow-hidden rounded-[1.5rem] border shadow-panel px-6 py-6 flex flex-col gap-1",
        tone === "warm" && "border-accentSecondary/40 bg-[linear-gradient(135deg,#A46849_0%,#7E4E36_100%)]",
        tone === "soft" && "border-accent/40 bg-[linear-gradient(135deg,#476257_0%,#2C3E35_100%)]",
        tone === "default" && "border-border bg-[linear-gradient(135deg,#EAE4D8_0%,#F5F1E8_100%)]",
      )}
    >
      <p
        className={cn(
          "text-[0.65rem] font-bold uppercase tracking-[0.18em]",
          isLight ? "text-muted" : "text-paper/60",
        )}
      >
        {label}
      </p>
      <p
        className={cn(
          "font-serif text-6xl font-semibold leading-none mt-2",
          tone === "warm" && "text-paper",
          tone === "soft" && "text-paper",
          tone === "default" && "text-ink",
        )}
      >
        {value}
      </p>
      {detail ? (
        <p className={cn("mt-3 text-sm leading-6", isLight ? "text-muted" : "text-paper/60")}>
          {detail}
        </p>
      ) : null}
      {/* Decorative background number */}
      <span
        aria-hidden
        className={cn(
          "pointer-events-none absolute right-4 top-1/2 -translate-y-1/2 font-serif text-[7rem] font-bold leading-none select-none",
          isLight ? "text-ink/[0.06]" : "text-paper/[0.07]",
        )}
      >
        {typeof value === "string" ? value.replace(/\s?%/, "") : value}
      </span>
    </div>
  );
}

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
          <span aria-hidden className="absolute left-0 top-0 h-full w-1 rounded-l-[1.25rem] bg-[#476257]" />
          <div className="flex flex-wrap items-center gap-2">
            <Badge tone="accentSecondary">{item.domainLabel}</Badge>
            {item.correctRate !== null ? <Badge tone="warning">{item.correctRate} %</Badge> : null}
          </div>
          <h3 className="mt-2.5 text-base font-semibold text-ink">{item.label}</h3>
          {item.reviewReason ? (
            <p className="mt-1.5 text-sm leading-6 text-muted">{item.reviewReason}</p>
          ) : null}
          <p className="mt-1.5 text-xs text-muted/70">{item.attempts} tentative(s) enregistrée(s)</p>
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
        detail: item.reviewReason || "Notion encore instable — consolider avant de progresser.",
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
    data.totalSeries === 0 ? 0 : Math.round((data.completedSeries / data.totalSeries) * 100);

  const firstFreeSeries = data.sessionProgress
    .filter((s) => s.access_tier === "free")
    .sort((a, b) => a.recommendedOrder - b.recommendedOrder)[0] ?? null;

  const plan = buildPlanDuJour(data);

  return (
    <div className="space-y-8">
      <OnboardingBanner
        firstSeriesId={firstFreeSeries?.id ?? null}
        hasAttempts={data.totalAttempts > 0}
        diagnostic={diagnostic}
      />

      <div className="relative overflow-hidden rounded-[1.75rem] border border-accentSecondary/20 bg-[linear-gradient(135deg,#476257_0%,#394E45_50%,#2C2420_100%)] px-5 py-8 sm:px-8 sm:py-12 shadow-panel">
        {/* Decorative background elements */}
        <span aria-hidden className="pointer-events-none absolute -right-16 -top-16 h-72 w-72 rounded-full bg-paper/[0.04] select-none" />
        <span aria-hidden className="pointer-events-none absolute right-24 -bottom-12 h-44 w-44 rounded-full bg-paper/[0.03] select-none" />
        <span aria-hidden className="pointer-events-none absolute right-8 top-1/2 -translate-y-1/2 font-serif text-[11rem] font-bold leading-none text-paper/[0.05] select-none hidden xl:block">
          TB
        </span>

        <Badge
          tone={premium ? "accentSecondary" : "neutral"}
          className="border-paper/20 bg-paper/10 text-paper/80"
        >
          {premium ? "Accès premium" : "Accès gratuit"}
        </Badge>
        <h1 className="mt-5 font-serif text-4xl sm:text-5xl xl:text-7xl font-semibold text-paper leading-none">Tableau de bord</h1>
        <p className="mt-4 text-base text-paper/60 max-w-lg">
          Vos progrès, priorités et séries à reprendre — tout en un coup d&apos;œil.
        </p>
      </div>

      {data.totalAttempts > 0 && (
        <div className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
          <SummaryMetric
            label="Séries maîtrisées"
            value={data.masteredSessions}
            detail={`Sur ${data.totalSeries} série(s) disponibles — continuez ainsi.`}
            tone="warm"
          />
          <SummaryMetric
            label="Score global"
            value={data.overallCorrectRate === null ? "—" : `${data.overallCorrectRate} %`}
            detail={`${data.totalAttempts} tentative(s) prises en compte`}
            tone="soft"
          />
          <SummaryMetric
            label="Progression globale"
            value={`${completionRate} %`}
            detail={`${data.completedSeries} série(s) terminée(s) sur ${data.totalSeries}`}
            tone="default"
          />
          <SummaryMetric
            label={premium ? "Accès du jour" : "Questions restantes"}
            value={premium ? "Illimité" : data.remainingToday}
            detail={
              premium
                ? "Accès complet à toutes les séries."
                : data.remainingToday > 0
                  ? `Sur ${env.freeDailyQuestionLimit} questions gratuites par jour`
                  : "Quota du jour atteint — revenez demain ou passez en premium"
            }
            tone="default"
          />
        </div>
      )}

      {data.totalAttempts > 0 && (
        <div className="overflow-hidden rounded-[1.75rem] border border-accentSecondary/25 shadow-panel">
          <div className="border-b border-accentSecondary/20 bg-[linear-gradient(135deg,rgba(164,104,73,0.12),rgba(252,250,246,1)_60%)] px-6 py-5">
            <div className="flex flex-wrap items-start justify-between gap-4">
              <div>
                <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
                  Session du jour
                </p>
                <h2 className="mt-1.5 font-serif text-2xl sm:text-3xl font-semibold text-ink">Plan du jour</h2>
                <p className="mt-1.5 text-sm text-muted">
                  {plan.length === 0
                    ? "Aucune action ciblée pour le moment."
                    : `${plan.length} action${plan.length > 1 ? "s" : ""} — environ ${plan.reduce((acc, item) => acc + item.estimatedMinutes, 0)} min`}
                </p>
              </div>
              <ButtonLink href="/exercices" variant="secondary">
                Catalogue complet
              </ButtonLink>
            </div>
          </div>

          <div className="bg-card px-6 py-6">
            {plan.length === 0 ? (
              <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4">
                <p className="text-sm text-muted">
                  Commencez une série depuis la{" "}
                  <Link href="/francais" className="font-semibold text-ink underline underline-offset-2">
                    page Français
                  </Link>{" "}
                  pour que vos fragilités apparaissent ici.
                </p>
              </div>
            ) : (
              <div className="grid gap-4 xl:grid-cols-3">
                {plan.map((item) => (
                  <Link
                    key={`${item.step}-${item.href}`}
                    href={item.href}
                    className={cn(
                      "group relative flex flex-col overflow-hidden rounded-[1.25rem] border bg-paper transition hover:shadow-panel",
                      item.tone === "warm"    && "border-[#394E45]/25 hover:border-[#394E45]/50",
                      item.tone === "warning" && "border-[#476257]/20 hover:border-[#476257]/50",
                      item.tone === "neutral" && "border-[#6B8F80]/25 hover:border-[#6B8F80]/50",
                    )}
                  >
                    <span
                      aria-hidden
                      className={cn(
                        "absolute left-0 top-0 h-full w-1 rounded-l-[1.25rem]",
                        item.tone === "warm"    && "bg-[#394E45]",
                        item.tone === "warning" && "bg-[#476257]",
                        item.tone === "neutral" && "bg-[#6B8F80]",
                      )}
                    />
                    <div className="pl-6 pr-5 pt-5 pb-5 flex flex-col flex-1">
                      <div className="flex items-center gap-3 mb-4">
                        <div
                          className={cn(
                            "flex h-11 w-11 shrink-0 items-center justify-center rounded-full font-serif text-xl font-bold text-paper",
                            item.tone === "warm"    && "bg-[#394E45]",
                            item.tone === "warning" && "bg-[#476257]",
                            item.tone === "neutral" && "bg-[#6B8F80]",
                          )}
                        >
                          {item.step}
                        </div>
                        <span
                          className={cn(
                            "rounded-full border px-2.5 py-0.5 text-[0.65rem] font-bold uppercase tracking-[0.10em]",
                            item.tone === "warm"    && "border-[#394E45]/30 bg-[rgba(57,78,69,0.08)] text-[#394E45]",
                            item.tone === "warning" && "border-[#476257]/30 bg-[rgba(71,98,87,0.08)] text-[#476257]",
                            item.tone === "neutral" && "border-[#6B8F80]/30 bg-[rgba(107,143,128,0.08)] text-[#6B8F80]",
                          )}
                        >
                          {item.tag}
                        </span>
                        <span className="ml-auto text-[0.65rem] text-muted tabular-nums">{item.estimatedMinutes} min</span>
                      </div>
                      <p className="flex-1 text-sm font-semibold leading-6 text-ink">{item.label}</p>
                      <p className="mt-2 text-xs leading-5 text-muted">{item.detail}</p>
                      <p
                        className={cn(
                          "mt-4 text-xs font-bold group-hover:underline",
                          item.tone === "warm"    && "text-[#394E45]",
                          item.tone === "warning" && "text-[#476257]",
                          item.tone === "neutral" && "text-[#6B8F80]",
                        )}
                      >
                        Ouvrir cette série →
                      </p>
                    </div>
                  </Link>
                ))}
              </div>
            )}
          </div>
        </div>
      )}

      <section className="space-y-5">
        <div className="flex items-end justify-between gap-4 border-b border-border pb-4">
          <div>
            <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-[#476257]">Français</p>
            <h2 className="mt-1 font-serif text-3xl sm:text-4xl font-semibold text-ink">Domaines</h2>
          </div>
          <ButtonLink href="/francais" variant="secondary">
            Vue matière
          </ButtonLink>
        </div>
        <div className="grid gap-4 xl:grid-cols-3">
          {data.domainDirectory.map((domain) => (
            <DomainSummaryCard key={domain.key} domain={domain} />
          ))}
        </div>
      </section>

      {data.totalAttempts > 0 && (
        <div className="space-y-6">
          <div className="grid gap-6 2xl:grid-cols-2">
            <CollapsiblePanel
              title="Priorités"
              tone="critical"
              badge={data.priorityItems.length > 0 ? data.priorityItems.length : undefined}
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
              badge={data.fragileItems.length > 0 ? data.fragileItems.length : undefined}
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
            description="Les séries commencées sont isolées ici pour éviter leur dispersion dans tout le site."
            tone="medium"
            badge={data.resumeSessions.length > 0 ? data.resumeSessions.length : undefined}
            defaultOpen={false}
            action={<ButtonLink href="/francais" variant="secondary">Voir les domaines</ButtonLink>}
          >
            {data.resumeSessions.length === 0 ? (
              <p className="text-sm text-muted">Aucune série en cours pour le moment.</p>
            ) : (
              <div className="space-y-3">
                {data.resumeSessions.map((session) => (
                  <SessionProgressCard key={session.id} session={session} compact />
                ))}
              </div>
            )}
          </CollapsiblePanel>

          <CollapsiblePanel
            title="Erreurs fréquentes"
            description="Indices utiles pour cibler la prochaine révision sans relire tout l'historique."
            tone="low"
            badge={data.frequentMistakes.length > 0 ? data.frequentMistakes.length : undefined}
            defaultOpen={false}
          >
            {data.frequentMistakes.length === 0 ? (
              <p className="text-sm text-muted">Aucune erreur fréquente identifiée pour le moment.</p>
            ) : (
              <div className="grid gap-3 xl:grid-cols-2">
                {data.frequentMistakes.map((mistake) => (
                  <article
                    key={mistake.key}
                    className="relative overflow-hidden rounded-[1.25rem] border border-[#6B8F80]/25 bg-paper pl-6 pr-4 py-4"
                  >
                    <span aria-hidden className="absolute left-0 top-0 h-full w-1 rounded-l-[1.25rem] bg-[#6B8F80]" />
                    <div className="flex flex-wrap items-center gap-2">
                      <Badge tone="warning">{mistake.occurrences} erreur(s)</Badge>
                      <Badge tone="accentSecondary">{mistake.domainLabel}</Badge>
                    </div>
                    <h3 className="mt-2.5 text-base font-semibold text-ink">{mistake.title}</h3>
                    <p className="mt-1.5 text-sm leading-6 text-muted">{mistake.exampleInstruction}</p>
                    <p className="mt-1.5 text-xs text-muted/70">
                      {mistake.subdomainLabel} · {formatDate(mistake.lastAnsweredAt)}
                    </p>
                  </article>
                ))}
              </div>
            )}
          </CollapsiblePanel>

          <Panel className="relative overflow-hidden border-accent/20 bg-card">
            <span aria-hidden className="absolute left-0 top-0 h-full w-1.5 rounded-l-[1.85rem] bg-accent" />
            <div className="flex items-start justify-between gap-4 pl-2">
              <div>
                <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-accent">Maîtrisé</p>
                <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Acquis</h2>
                <p className="mt-1.5 text-sm leading-6 text-muted">
                  Séries avec un taux de réussite suffisant pour être considérées maîtrisées.
                </p>
              </div>
              <ButtonLink href="/progression" variant="secondary">
                Détail
              </ButtonLink>
            </div>

            {data.masteredSessions === 0 ? (
              <p className="mt-6 text-sm text-muted pl-2">
                Aucun acquis enregistré pour l&apos;instant. Terminez vos premières séries pour les voir apparaître ici.
              </p>
            ) : (
              <div className="mt-5 space-y-2.5 pl-2">
                {data.sessionProgress
                  .filter((s) => s.status === "maitrisee")
                  .slice(0, 3)
                  .map((session) => (
                    <div
                      key={session.id}
                      className="flex items-center gap-3 rounded-[1.25rem] border border-accent/15 bg-[linear-gradient(135deg,rgba(71,98,87,0.06),rgba(253,249,243,1))] px-4 py-3"
                    >
                      <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-accent/10">
                        <svg className="h-4 w-4 text-accent" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                          <path strokeLinecap="round" strokeLinejoin="round" d="M5 13l4 4L19 7" />
                        </svg>
                      </div>
                      <div className="flex-1 min-w-0">
                        <p className="text-[0.65rem] uppercase tracking-[0.14em] text-accent font-semibold">
                          {session.subdomainLabel}
                        </p>
                        <p className="text-sm font-semibold text-ink truncate">{session.title}</p>
                      </div>
                      {session.correctRate !== null ? (
                        <p className="shrink-0 font-serif text-2xl font-bold text-accent">{session.correctRate}<span className="text-sm font-normal text-muted"> %</span></p>
                      ) : null}
                    </div>
                  ))}
                {data.masteredSessions > 3 ? (
                  <p className="text-xs text-muted">
                    +{data.masteredSessions - 3} autre(s) série(s) maîtrisée(s) — voir la progression complète.
                  </p>
                ) : null}
              </div>
            )}
          </Panel>
        </div>
      )}

      {data.totalAttempts > 0 && (
        <Panel>
          <div className="flex items-start justify-between gap-4 border-b border-border pb-4 mb-0">
            <div>
              <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-[#6B8F80]">Historique</p>
              <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Activité récente</h2>
            </div>
            <ButtonLink href="/progression" variant="secondary">
              Voir les statistiques
            </ButtonLink>
          </div>

          {data.recentActivity.length === 0 ? (
            <p className="mt-6 text-sm text-muted">Aucune activité récente pour le moment.</p>
          ) : (
            <div className="mt-6 grid gap-3 xl:grid-cols-2">
              {data.recentActivity.slice(0, 4).map((activity) => (
                <article
                  key={activity.attemptId}
                  className={cn(
                    "relative overflow-hidden rounded-[1.25rem] border bg-paper pl-6 pr-4 py-4",
                    activity.isCorrect ? "border-[#6B8F80]/25" : "border-[#394E45]/25",
                  )}
                >
                  <span
                    aria-hidden
                    className={cn(
                      "absolute left-0 top-0 h-full w-1 rounded-l-[1.25rem]",
                      activity.isCorrect ? "bg-[#6B8F80]" : "bg-[#394E45]",
                    )}
                  />
                  <div className="flex flex-wrap items-center gap-2">
                    <Badge tone={activity.isCorrect ? "success" : "warning"}>
                      {activity.isCorrect ? "Correct" : "À revoir"}
                    </Badge>
                    <Badge tone="accentSecondary">{activity.domainLabel}</Badge>
                  </div>
                  <p className="mt-2.5 text-sm font-medium leading-6 text-ink">{activity.instruction}</p>
                  <p className="mt-1.5 text-xs text-muted/70">
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
