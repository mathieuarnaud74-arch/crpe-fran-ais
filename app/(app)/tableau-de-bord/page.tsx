import type { Metadata } from "next";
import Link from "next/link";

import { Mocca } from "@/components/mascot/mocca";

export const metadata: Metadata = {
  title: "Tableau de bord",
  description: "Votre espace de révision personnalisé pour le CRPE Français.",
};
import { MoccaWithMessage } from "@/components/mascot/mocca-with-message";
import { AchievementBadges } from "@/components/ui/achievement-badges";
import { ActivityHeatmap } from "@/components/ui/activity-heatmap";
import { Badge } from "@/components/ui/badge";
import { BadgeUnlockToast } from "@/components/ui/badge-unlock-toast";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { AnimatedCounter } from "@/features/dashboard/components/animated-counter";
import { CollapsiblePanel } from "@/features/dashboard/components/collapsible-panel";
import { DomainGauge } from "@/features/dashboard/components/domain-gauge";
import { NivoRadarChart } from "@/features/dashboard/components/nivo-radar";
import { OnboardingBanner } from "@/features/dashboard/components/onboarding-banner";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { XpLevelCard } from "@/features/dashboard/components/xp-level-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { getUserGamification } from "@/features/gamification/server/queries";
import { OnboardingTourWrapper } from "@/features/onboarding/components/onboarding-tour-wrapper";
import { SrsReviewCard } from "@/features/srs/components/srs-review-card";
import { getDueExercises, getDueCount } from "@/features/srs/server/queries";
import { MASTERY_THRESHOLD as MASTERY_THRESHOLD_IMPORT } from "@/lib/dashboard";
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
          className="rounded-[1.25rem] border border-border/60 bg-paper px-5 py-4"
        >
          <div className="flex flex-wrap items-center gap-2">
            <span aria-hidden className="h-2 w-2 rounded-sm bg-[#476257]" />
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

function DailyGoalRing({ current, goal }: { current: number; goal: number }) {
  const pct = Math.min(current / goal, 1);
  const radius = 18;
  const circumference = 2 * Math.PI * radius;
  const strokeDashoffset = circumference * (1 - pct);
  const isComplete = pct >= 1;

  return (
    <div className="relative h-11 w-11 shrink-0">
      <svg viewBox="0 0 44 44" className="h-11 w-11 -rotate-90" aria-hidden="true">
        <circle
          cx="22"
          cy="22"
          r={radius}
          fill="none"
          stroke="rgba(245,241,232,0.12)"
          strokeWidth="3.5"
        />
        <circle
          cx="22"
          cy="22"
          r={radius}
          fill="none"
          stroke={isComplete ? "#6EE7B7" : "#A46849"}
          strokeWidth="3.5"
          strokeLinecap="round"
          strokeDasharray={circumference}
          strokeDashoffset={strokeDashoffset}
          style={{ transition: "stroke-dashoffset 0.5s ease-out" }}
        />
      </svg>
      {isComplete && (
        <span className="absolute inset-0 flex items-center justify-center text-sm">
          &#x2714;
        </span>
      )}
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
  let gamification;
  try {
    gamification = await getUserGamification(user.id);
  } catch {
    gamification = {
      user_id: user.id, xp: 0, level: 1, current_streak: 0, longest_streak: 0,
      last_activity_date: null, sound_enabled: true, reduced_animations: false,
      daily_goal: 20, personal_best_sprint_time: null, onboarding_completed: false,
      daily_streak: 0, longest_daily_streak: 0, streak_freeze_remaining: 1, streak_frozen_on: null,
    };
  }
  const [data, mathData, diagnostic, srsDueExercises, srsDueCount] = await Promise.all([
    getDashboardData(user.id, premium, "Francais"),
    getDashboardData(user.id, premium, "Mathematiques"),
    getDiagnosticResult(user.id),
    getDueExercises(user.id, 20).catch(() => []),
    getDueCount(user.id).catch(() => 0),
  ]);
  const hasMathData = mathData.totalSeries > 0;

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

  const daysSinceLastActivity = data.lastActivityDate
    ? Math.floor(
        (Date.now() - new Date(data.lastActivityDate).getTime()) /
          (1000 * 60 * 60 * 24),
      )
    : null;
  const showWelcomeBack =
    daysSinceLastActivity !== null && daysSinceLastActivity >= 3 && data.totalAttempts > 0;

  // Smart challenge: single-pass grouping by status
  const STATUS_ORDER: Record<string, number> = { a_revoir: 0, non_commencee: 1, en_cours: 2 };
  const buckets: { a_revoir: typeof data.sessionProgress; non_commencee: typeof data.sessionProgress; en_cours: typeof data.sessionProgress } = {
    a_revoir: [],
    non_commencee: [],
    en_cours: [],
  };
  for (const s of data.sessionProgress) {
    if (s.access_tier === "free" && s.status !== "maitrisee" && s.status in buckets) {
      buckets[s.status as keyof typeof buckets].push(s);
    }
  }

  // Pick from priority first, then not-started, then in-progress
  const challengeBucket = buckets.a_revoir.length > 0
    ? buckets.a_revoir
    : buckets.non_commencee.length > 0
      ? buckets.non_commencee
      : buckets.en_cours;

  // Deterministic daily rotation based on date (so it changes each day but stays stable within a day)
  const today = new Date();
  const daySeed = today.getFullYear() * 10000 + (today.getMonth() + 1) * 100 + today.getDate();
  const quickChallengeSession = challengeBucket.length > 0
    ? challengeBucket[daySeed % challengeBucket.length]
    : null;

  // Pick 2 more suggestions from other buckets for variety
  const challengePool = [...buckets.a_revoir, ...buckets.non_commencee, ...buckets.en_cours];
  const otherSuggestions = challengePool
    .filter((s) => s.id !== quickChallengeSession?.id)
    .sort((a, b) => (STATUS_ORDER[a.status] ?? 3) - (STATUS_ORDER[b.status] ?? 3))
    .slice(0, 2);

  return (
    <div className="space-y-6">
      <OnboardingTourWrapper
        completed={gamification.onboarding_completed}
        userId={user.id}
      />
      <BadgeUnlockToast earnedBadges={data.earnedBadges} />

      <OnboardingBanner
        firstSeriesId={firstFreeSeries?.id ?? null}
        hasAttempts={data.totalAttempts > 0}
        diagnostic={diagnostic}
      />

      {/* ── Welcome back after absence ── */}
      {showWelcomeBack && (
        <div className="flex items-center gap-4 rounded-[1.5rem] border border-accentSecondary/25 bg-[linear-gradient(135deg,rgba(164,104,73,0.08),rgba(253,249,243,1)_60%)] px-5 py-4 shadow-subtle">
          <MoccaWithMessage
            variant="happy"
            size="sm"
            typewriter
            message={
              daysSinceLastActivity! >= 7
                ? `Cela fait ${daysSinceLastActivity} jours — pas de pression, chaque question compte. Reprenez à votre rythme !`
                : `${daysSinceLastActivity} jours sans réviser — un petit exercice pour se remettre en selle ?`
            }
            className="flex-1"
          />
          {quickChallengeSession && (
            <ButtonLink
              href={`/exercices/${quickChallengeSession.id}`}
              variant="primary"
              className="hidden shrink-0 sm:inline-flex"
            >
              Reprendre
            </ButtonLink>
          )}
        </div>
      )}

      {/* ── Hero banner ── */}
      <div className="relative overflow-hidden rounded-[1.25rem] border border-accentSecondary/20 bg-[linear-gradient(135deg,#476257_0%,#394E45_50%,#2C2420_100%)] px-4 py-6 shadow-panel sm:rounded-[1.75rem] sm:px-8 sm:py-10">
        <span
          aria-hidden
          className="pointer-events-none absolute -right-16 -top-16 h-72 w-72 rounded-full bg-paper/[0.04] select-none"
        />
        <span
          aria-hidden
          className="pointer-events-none absolute right-24 -bottom-12 h-44 w-44 rounded-full bg-paper/[0.03] select-none"
        />

        <div className="flex flex-col gap-6 sm:flex-row sm:items-end sm:justify-between">
          <div>
            <Badge
              tone={premium ? "accentSecondary" : "neutral"}
              className="border-paper/20 bg-paper/10 text-paper/80"
            >
              {premium ? "Acc\u00e8s premium" : "Acc\u00e8s gratuit"}
            </Badge>
            <h1 className="mt-3 font-serif text-3xl font-semibold text-paper leading-none sm:mt-4 sm:text-5xl">
              Tableau de bord
            </h1>
            <p className="mt-3 text-sm text-paper/60 max-w-lg">
              {data.totalAttempts === 0
                ? "Bienvenue ! Lancez votre premi\u00e8re s\u00e9rie pour commencer \u00e0 progresser."
                : data.masteredSessions > 0
                  ? `${data.masteredSessions} s\u00e9rie${data.masteredSessions > 1 ? "s" : ""} ma\u00eetris\u00e9e${data.masteredSessions > 1 ? "s" : ""} \u2014 continuez sur cette lanc\u00e9e !`
                  : "Vos progr\u00e8s, priorit\u00e9s et s\u00e9ries \u00e0 reprendre \u2014 tout en un coup d\u2019\u0153il."}
            </p>
          </div>

          {/* Daily goal indicator */}
          {data.totalAttempts > 0 && (
            <div className="flex items-center gap-3 rounded-[1.25rem] border border-paper/10 bg-paper/[0.07] px-4 py-3 backdrop-blur-sm">
              <DailyGoalRing
                current={Math.min(data.attemptsToday, 15)}
                goal={15}
              />
              <div>
                <p className="text-xs font-semibold uppercase tracking-[0.14em] text-paper/50">
                  Objectif du jour
                </p>
                <p className="text-sm font-semibold text-paper">
                  {Math.min(data.attemptsToday, 15)}/15 questions
                </p>
              </div>
            </div>
          )}
        </div>
      </div>

      {/* ── XP & Level Card ── */}
      <div data-tour="xp-card">
        <XpLevelCard gamification={gamification} />
      </div>

      {/* ── Stats strip + progress bar ── */}
      {data.totalAttempts > 0 && (
        <div className="space-y-3">
          <div data-tour="stats-strip" className="grid grid-cols-2 gap-px overflow-hidden rounded-2xl border border-border bg-border sm:grid-cols-4">
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-pine">
                <AnimatedCounter end={data.masteredSessions} />
              </p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Maîtrisées</p>
              <p className="mt-0.5 text-xs text-muted">
                sur {data.totalSeries} série(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-accent">
                {data.overallCorrectRate === null ? "—" : <><AnimatedCounter end={data.overallCorrectRate} />%</>}
              </p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Score global</p>
              <p className="mt-0.5 text-xs text-muted">
                <AnimatedCounter end={data.totalAttempts} /> tentative(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-ink"><AnimatedCounter end={completionRate} />%</p>
              <p className="mt-1 text-xs font-medium tracking-wide text-muted">Progression</p>
              <p className="mt-0.5 text-xs text-muted">
                <AnimatedCounter end={data.completedSeries} /> terminée(s)
              </p>
            </div>
            <div className="bg-card px-5 py-4 text-center">
              <p className="font-serif text-3xl font-semibold text-accentSecondary">
                {premium ? "∞" : <AnimatedCounter end={data.remainingToday} />}
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
          <div className="border-b border-accentSecondary/20 bg-[linear-gradient(135deg,rgba(164,104,73,0.12),rgba(252,250,246,1)_60%)] px-4 py-3 sm:px-6 sm:py-4">
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

          <div className="bg-card px-4 py-4 sm:px-6 sm:py-5">
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

      {/* ── Révision intelligente (SRS) ── */}
      <SrsReviewCard
        dueCount={srsDueCount}
        exercises={srsDueExercises.map((e) => ({
          exerciseId: e.exercise_id,
          subdomain: e.exercise?.subdomain ?? null,
          topicLabel: e.exercise?.topic_label ?? null,
          level: e.exercise?.level ?? null,
          state: e.state,
          lapses: e.lapses,
        }))}
      />

      {/* ── Domaines — compact table ── */}
      <section>
        <div className="mb-3 flex items-end justify-between gap-4">
          <div>
            <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-[#476257]">
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

      {/* ── Domaines Maths — compact table ── */}
      {hasMathData && (
        <section>
          <div className="mb-3 flex items-end justify-between gap-4">
            <div>
              <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-accent">
                Mathématiques
              </p>
              <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Domaines</h2>
            </div>
            <ButtonLink href="/maths" variant="secondary">
              Vue matière
            </ButtonLink>
          </div>
          <div className="overflow-hidden rounded-2xl border border-border">
            <div className="hidden border-b border-border bg-secondary/50 px-5 py-2.5 md:grid md:grid-cols-[1fr_8rem_5rem_5rem_5rem_4.5rem_5rem] md:gap-3 md:items-center">
              <span className="text-xs font-semibold uppercase tracking-widest text-muted">Domaine</span>
              <span className="text-xs font-semibold uppercase tracking-widest text-muted">Progression</span>
              <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">Score</span>
              <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">En c.</span>
              <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">À rev.</span>
              <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">Maîtr.</span>
              <span />
            </div>
            {mathData.domainDirectory.map((domain, i) => {
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
                    i < mathData.domainDirectory.length - 1 && "border-b border-border",
                  )}
                >
                  <div>
                    <span className="text-sm font-semibold text-ink">{domain.label}</span>
                    <span className="ml-2 text-xs text-muted md:hidden">{domain.totalSeries} séries</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
                      <div className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all" style={{ width: `${pct}%` }} />
                    </div>
                    <span className="w-8 text-right text-xs tabular-nums text-muted">{pct}%</span>
                  </div>
                  <span className="text-sm tabular-nums text-muted md:text-center">
                    <span className="text-xs md:hidden">Score : </span>
                    {domain.correctRate !== null ? `${domain.correctRate}%` : "—"}
                  </span>
                  <span className="text-sm tabular-nums text-muted md:text-center">
                    <span className="text-xs md:hidden">En cours : </span>
                    {domain.inProgressSeries}
                  </span>
                  <span className={cn("text-sm tabular-nums md:text-center", domain.toReviewSeries > 0 ? "font-semibold text-warning" : "text-muted")}>
                    <span className="text-xs font-normal text-muted md:hidden">À revoir : </span>
                    {domain.toReviewSeries}
                  </span>
                  <span className="text-sm tabular-nums text-pine md:text-center">
                    <span className="text-xs text-muted md:hidden">Maîtrisées : </span>
                    {domain.masteredSeries}
                  </span>
                  <span className="hidden text-xs font-semibold text-accent md:block md:text-right">Explorer &rarr;</span>
                </Link>
              );
            })}
          </div>
        </section>
      )}

      {/* ── Radar compétences + Jauges ── */}
      {data.totalAttempts > 0 && (
        <div data-tour="radar" className="grid gap-4 2xl:grid-cols-2">
          <Panel>
            <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-accent">
              Vue d&apos;ensemble
            </p>
            <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
              Radar de comp&eacute;tences
            </h2>
            <NivoRadarChart domains={data.domainProgress} />
          </Panel>
          <Panel>
            <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-accentSecondary">
              Par domaine
            </p>
            <h2 className="mt-1 mb-4 font-serif text-xl font-semibold text-ink">
              Ma&icirc;trise
            </h2>
            <div className="flex flex-wrap justify-center gap-6">
              {data.domainProgress.map((domain) => (
                <DomainGauge
                  key={domain.domain}
                  label={domain.label}
                  percentage={domain.correctRate ?? 0}
                  status={domain.status}
                />
              ))}
            </div>
          </Panel>
        </div>
      )}

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
                    className="rounded-xl border border-border/60 bg-paper px-5 py-3"
                  >
                    <div className="flex flex-wrap items-center gap-2">
                      <span aria-hidden className="h-2 w-2 rounded-sm bg-[#6B8F80]" />
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
              className="absolute left-0 top-0 h-[3px] w-2/5 rounded-tl-[1.85rem] bg-[linear-gradient(90deg,#4A6E8F_0%,#4A6E8F_60%,transparent_100%)]"
            />
            <div className="flex items-start justify-between gap-4">
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
              <div className="mt-4 flex items-center gap-3 rounded-xl border border-accent/15 bg-accent/5 px-4 py-3 pl-4">
                <span className="text-lg" aria-hidden="true">&#x1F3AF;</span>
                <p className="text-sm text-muted">
                  Visez {MASTERY_THRESHOLD_IMPORT}&nbsp;% de bonnes r&eacute;ponses sur une s&eacute;rie pour
                  d&eacute;bloquer vos premiers acquis. Vous en &ecirc;tes capable !
                </p>
              </div>
            ) : (
              <div className="mt-4 space-y-2">
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
                          aria-hidden="true"
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

      {/* ── Quick challenge + Heatmap row ── */}
      {data.totalAttempts > 0 && (
        <div className="grid gap-4 2xl:grid-cols-2">
          {/* Activity heatmap */}
          <Panel data-tour="heatmap">
            <div className="flex items-center justify-between gap-4 border-b border-border pb-4">
              <div>
                <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-[#476257]">
                  R&eacute;gularit&eacute;
                </p>
                <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
                  Activit&eacute; r&eacute;cente
                </h2>
              </div>
              <ButtonLink href="/progression" variant="secondary">
                D&eacute;tail
              </ButtonLink>
            </div>
            <div className="mt-4">
              <ActivityHeatmap dailyActivity={data.dailyActivity} />
            </div>
          </Panel>

          {/* Quick challenge — smart daily pick */}
          {quickChallengeSession ? (
            <div className="relative overflow-hidden rounded-[1.75rem] border border-accentSecondary/20 bg-[linear-gradient(135deg,#476257_0%,#394E45_60%,#2C2420_100%)] px-5 py-5 shadow-panel sm:px-6 sm:py-6">
              <span
                aria-hidden
                className="pointer-events-none absolute -right-10 -top-10 h-48 w-48 rounded-full bg-paper/[0.04] select-none"
              />
              <span
                aria-hidden
                className="pointer-events-none absolute right-16 bottom-0 h-28 w-28 rounded-full bg-paper/[0.03] select-none"
              />

              {/* Header with streak */}
              <div className="flex items-start justify-between gap-3">
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.16em] text-paper/50">
                    {quickChallengeSession.status === "a_revoir"
                      ? "Point faible d\u00e9tect\u00e9"
                      : quickChallengeSession.status === "en_cours"
                        ? "S\u00e9rie en cours"
                        : "Nouvelle s\u00e9rie"}
                  </p>
                  <h2 className="mt-1 font-serif text-xl font-semibold text-paper sm:text-2xl">
                    {quickChallengeSession.title}
                  </h2>
                </div>
                {gamification.daily_streak > 0 && (
                  <span className="shrink-0 rounded-pill border border-paper/15 bg-paper/10 px-2.5 py-1 text-xs font-bold text-paper/80">
                    \uD83D\uDD25 {gamification.daily_streak}j
                  </span>
                )}
              </div>

              {/* Meta */}
              <div className="mt-3 flex flex-wrap items-center gap-2">
                <Badge className="border-paper/20 bg-paper/10 text-paper/70">
                  {quickChallengeSession.subdomainLabel}
                </Badge>
                <Badge className="border-paper/20 bg-paper/10 text-paper/70">
                  {quickChallengeSession.questionCount} questions
                </Badge>
                <Badge className="border-paper/20 bg-paper/10 text-paper/70">
                  ~{quickChallengeSession.estimatedMinutes} min
                </Badge>
              </div>

              {/* Progress if in-progress */}
              {quickChallengeSession.answeredQuestions > 0 && (
                <div className="mt-3">
                  <div className="flex justify-between text-[10px] text-paper/50">
                    <span>{quickChallengeSession.answeredQuestions}/{quickChallengeSession.questionCount}</span>
                    {quickChallengeSession.correctRate !== null && (
                      <span>{quickChallengeSession.correctRate} %</span>
                    )}
                  </div>
                  <div className="mt-1 h-1.5 overflow-hidden rounded-full bg-paper/10">
                    <div
                      className="h-full rounded-full bg-paper/40 transition-all"
                      style={{ width: `${(quickChallengeSession.answeredQuestions / quickChallengeSession.questionCount) * 100}%` }}
                    />
                  </div>
                </div>
              )}

              {/* CTA */}
              <div className="mt-4 flex flex-wrap gap-3">
                <ButtonLink
                  href={`/exercices/${quickChallengeSession.id}`}
                  className="border-paper/20 bg-paper text-ink hover:bg-paper/90"
                >
                  {quickChallengeSession.status === "en_cours" ? "Reprendre" : "Lancer"} &rarr;
                </ButtonLink>
                <ButtonLink
                  href="/exercices"
                  variant="ghost"
                  className="text-paper/70 hover:text-paper hover:bg-paper/10"
                >
                  Catalogue
                </ButtonLink>
              </div>

              {/* Alternative suggestions */}
              {otherSuggestions.length > 0 && (
                <div className="mt-4 border-t border-paper/10 pt-3">
                  <p className="text-[10px] font-semibold uppercase tracking-[0.14em] text-paper/40">
                    Aussi sugg&eacute;r&eacute;
                  </p>
                  <div className="mt-2 flex flex-col gap-1.5">
                    {otherSuggestions.map((s) => (
                      <Link
                        key={s.id}
                        href={`/exercices/${s.id}`}
                        className="group flex items-center justify-between rounded-xl bg-paper/[0.06] px-3 py-2 transition-colors hover:bg-paper/10"
                      >
                        <div className="min-w-0 flex-1">
                          <p className="truncate text-sm font-medium text-paper/80 group-hover:text-paper">
                            {s.title}
                          </p>
                          <p className="text-[10px] text-paper/40">
                            {s.subdomainLabel}
                            {s.correctRate !== null && ` \u00b7 ${s.correctRate} %`}
                          </p>
                        </div>
                        <span className="ml-2 text-xs text-paper/40 group-hover:text-paper/70">&rarr;</span>
                      </Link>
                    ))}
                  </div>
                </div>
              )}
            </div>
          ) : (
            <Panel className="flex flex-col items-center justify-center border-successBorder/30 bg-successBg/30 text-center">
              <span className="text-3xl" aria-hidden="true">&#x1F389;</span>
              <p className="mt-3 font-serif text-xl font-semibold text-ink">
                Toutes les s&eacute;ries sont ma&icirc;tris&eacute;es !
              </p>
              <p className="mt-1 text-sm text-muted">
                De nouvelles s&eacute;ries seront bient&ocirc;t disponibles.
              </p>
            </Panel>
          )}
        </div>
      )}

      {/* ── Badges ── */}
      {data.earnedBadges.length > 0 && (
        <Panel data-tour="badges">
          <div className="flex items-center justify-between gap-4 border-b border-border pb-4">
            <div>
              <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-accentSecondary">
                R&eacute;compenses
              </p>
              <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
                Badges obtenus
              </h2>
            </div>
            <ButtonLink href="/progression" variant="secondary">
              Tous les badges
            </ButtonLink>
          </div>
          <div className="mt-4">
            <AchievementBadges earnedBadges={data.earnedBadges} compact />
          </div>
        </Panel>
      )}

      {/* ── Historique des réponses ── */}
      {data.totalAttempts > 0 && (
        <Panel>
          <div className="flex items-center justify-between gap-4 border-b border-border pb-4">
            <div>
              <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-[#6B8F80]">
                Historique
              </p>
              <h2 className="mt-1 font-serif text-xl font-semibold text-ink">
                Derni&egrave;res r&eacute;ponses
              </h2>
            </div>
            <ButtonLink href="/historique" variant="secondary">
              Tout voir
            </ButtonLink>
          </div>

          {data.recentActivity.length === 0 ? (
            <div className="mt-4 flex items-center gap-3 rounded-xl border border-[#6B8F80]/20 bg-[rgba(107,143,128,0.05)] px-4 py-3">
              <span className="text-lg" aria-hidden="true">&#x1F4DA;</span>
              <p className="text-sm text-muted">
                Votre historique appara&icirc;tra ici d&egrave;s que vous aurez r&eacute;pondu &agrave; vos premi&egrave;res questions.
              </p>
            </div>
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
