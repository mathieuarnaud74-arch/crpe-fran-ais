import type { Metadata } from "next";
import Link from "next/link";

import { MoccaWithMessage } from "@/components/mascot/mocca-with-message";
import { ActivityHeatmap } from "@/components/ui/activity-heatmap";
import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { CollapsiblePanel } from "@/features/dashboard/components/collapsible-panel";
import { CompactStatusBar } from "@/features/dashboard/components/compact-status-bar";
import { DomainProgressCard } from "@/features/dashboard/components/domain-progress-card";
import { InsightsTabs } from "@/features/dashboard/components/insights-tabs";
import { OnboardingBanner } from "@/features/dashboard/components/onboarding-banner";
import { SmartPlanSection } from "@/features/dashboard/components/smart-plan-section";
import { SubjectTabs } from "@/features/dashboard/components/subject-tabs";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { getCompletedFicheSlugs } from "@/features/fiches/server/queries";
import { getUserGamification } from "@/features/gamification/server/queries";
import { OnboardingTourWrapper } from "@/features/onboarding/components/onboarding-tour-wrapper";
import { buildSmartPlan, getFicheProgressByDomain } from "@/lib/dashboard/build-smart-plan";
import { getDueCount } from "@/features/srs/server/queries";
import { cn, formatDate } from "@/lib/utils";
import type { DashboardData, DashboardDomainDirectoryItem } from "@/types/domain";
import { allFiches } from "@/content/fiches";
import { allFichesMaths } from "@/content/fiches-maths";

export const metadata: Metadata = {
  title: "Tableau de bord",
  description: "Votre espace de révision personnalisé pour le CRPE Français.",
};

export const revalidate = 60;

// ── Main page ─────────────────────────────────────────────

export default async function DashboardPage() {
  const user = await requireUser();

  const [premium, gamification] = await Promise.all([
    isPremiumUser(user.id),
    getUserGamification(user.id).catch(() => ({
      user_id: user.id, xp: 0, level: 1, current_streak: 0, longest_streak: 0,
      last_activity_date: null, sound_enabled: true, reduced_animations: false,
      daily_goal: 20, personal_best_sprint_time: null, onboarding_completed: false,
      daily_streak: 0, longest_daily_streak: 0, streak_freeze_remaining: 1, streak_frozen_on: null,
    })),
  ]);

  const [data, mathData, diagnostic, completedFicheSlugs, srsDueCount] = await Promise.all([
    getDashboardData(user.id, premium, "Francais"),
    getDashboardData(user.id, premium, "Mathematiques"),
    getDiagnosticResult(user.id, "francais"),
    getCompletedFicheSlugs(user.id),
    getDueCount(user.id).catch(() => 0),
  ]);

  const hasMathData = mathData.totalSeries > 0;

  const firstFreeSeries =
    data.sessionProgress.sort((a, b) => a.recommendedOrder - b.recommendedOrder)[0] ?? null;

  // ── Smart plan (fiches + exercises mix) ──
  const combinedFiches = [...allFiches, ...(hasMathData ? allFichesMaths : [])];
  const smartPlan = buildSmartPlan(data, combinedFiches, completedFicheSlugs, srsDueCount, data.totalAttempts);

  // ── Fiche progress by domain ──
  const ficheProgressFr = getFicheProgressByDomain(allFiches, completedFicheSlugs);
  const ficheProgressMath = getFicheProgressByDomain(allFichesMaths, completedFicheSlugs);

  // ── Welcome back logic ──
  const daysSinceLastActivity = data.lastActivityDate
    ? Math.floor((Date.now() - new Date(data.lastActivityDate).getTime()) / (1000 * 60 * 60 * 24))
    : null;
  const showWelcomeBack =
    daysSinceLastActivity !== null && daysSinceLastActivity >= 3 && data.totalAttempts > 0;

  // ── Fiche suggestions for insights ──
  const ficheSuggestions = buildFicheSuggestions(
    [...data.priorityItems, ...data.fragileItems],
    combinedFiches,
    completedFicheSlugs,
  );

  // ── Mastered sessions for insights ──
  const masteredSessions = data.sessionProgress.filter((s) => s.status === "maitrisee");

  return (
    <div className="space-y-6">
      {/* ═══════════════════════════════════════════════════════
          Zone 0 — Bannières conditionnelles
          ═══════════════════════════════════════════════════════ */}
      <OnboardingTourWrapper completed={gamification.onboarding_completed} />
      <OnboardingBanner
        firstSeriesId={firstFreeSeries?.id ?? null}
        hasAttempts={data.totalAttempts > 0}
        diagnostic={diagnostic}
      />

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
        </div>
      )}

      {/* ═══════════════════════════════════════════════════════
          Zone 1 — Barre de statut compacte
          ═══════════════════════════════════════════════════════ */}
      <div data-tour="xp-card">
        <CompactStatusBar
          gamification={gamification}
          overallScore={data.overallCorrectRate}
          dailyProgress={data.attemptsToday}
          dailyGoal={gamification.daily_goal}
          isPremium={premium}
          masteredSessions={data.masteredSessions}
          totalSeries={data.totalSeries}
        />
      </div>

      {/* ═══════════════════════════════════════════════════════
          Zone 2 — "Prochaine étape" (fiches + exercices)
          ═══════════════════════════════════════════════════════ */}
      <SmartPlanSection
        planItems={smartPlan}
        totalAttempts={data.totalAttempts}
        ficheProgress={{
          completed: completedFicheSlugs.size,
          total: combinedFiches.length,
        }}
        exerciseProgress={{
          inProgress: data.sessionProgress.filter((s) => s.status === "en_cours").length,
          toReview: data.sessionProgress.filter((s) => s.status === "a_revoir").length,
          total: data.totalSeries,
        }}
      />

      {/* ═══════════════════════════════════════════════════════
          Zone 3 — Parcours par matière (onglets)
          ═══════════════════════════════════════════════════════ */}
      <section>
        <div className="mb-3">
          <p className="text-[0.7rem] font-bold uppercase tracking-[0.18em] text-[#476257]">
            Vos domaines
          </p>
          <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Parcours</h2>
        </div>

        <SubjectTabs
          hasMathData={hasMathData}
          frenchContent={
            <DomainGrid
              domains={data.domainDirectory}
              ficheProgress={ficheProgressFr}
              subjectTone="pine"
            />
          }
          mathContent={
            <DomainGrid
              domains={mathData.domainDirectory}
              ficheProgress={ficheProgressMath}
              subjectTone="accent"
            />
          }
        />
      </section>

      {/* ═══════════════════════════════════════════════════════
          Zone 4 — Insights détaillés (1 panneau, 4 onglets)
          ═══════════════════════════════════════════════════════ */}
      {data.totalAttempts > 0 && (
        <CollapsiblePanel
          title="Insights détaillés"
          description="Priorités, fragilités, erreurs fréquentes et acquis."
          tone="medium"
          badge={data.priorityItems.length + data.fragileItems.length + data.frequentMistakes.length}
          defaultOpen={false}
        >
          <InsightsTabs
            priorityItems={data.priorityItems}
            fragileItems={data.fragileItems}
            frequentMistakes={data.frequentMistakes}
            masteredSessions={masteredSessions}
            totalMastered={data.masteredSessions}
            ficheSuggestions={ficheSuggestions}
          />
        </CollapsiblePanel>
      )}

      {/* ═══════════════════════════════════════════════════════
          Zone 5 — Activité & engagement
          ═══════════════════════════════════════════════════════ */}
      {data.totalAttempts > 0 && (
        <div className="grid gap-4 2xl:grid-cols-2">
          {/* Heatmap */}
          <Panel data-tour="heatmap" className="p-3 sm:p-4">
            <div className="flex items-center justify-between gap-3 border-b border-border pb-2 mb-2">
              <p className="text-xs font-bold uppercase tracking-[0.14em] text-[#476257]">
                Activit&eacute;
              </p>
              <ButtonLink href="/progression" variant="secondary" size="sm">D&eacute;tail</ButtonLink>
            </div>
            <ActivityHeatmap dailyActivity={data.dailyActivity} />
          </Panel>

          {/* Dernières réponses */}
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
              <ButtonLink href="/historique" variant="secondary">Tout voir</ButtonLink>
            </div>

            {data.recentActivity.length === 0 ? (
              <div className="mt-4 flex items-center gap-3 rounded-xl border border-[#6B8F80]/20 bg-[rgba(107,143,128,0.05)] px-4 py-3">
                <span className="text-lg" aria-hidden>&#x1F4DA;</span>
                <p className="text-sm text-muted">
                  Votre historique appara&icirc;tra d&egrave;s vos premi&egrave;res r&eacute;ponses.
                </p>
              </div>
            ) : (
              <div className="mt-4 space-y-2">
                {data.recentActivity.slice(0, 4).map((activity) => (
                  <article
                    key={activity.attemptId}
                    className={cn(
                      "relative overflow-hidden rounded-xl border bg-paper pl-5 pr-4 py-3",
                      activity.isCorrect ? "border-[#6B8F80]/25" : "border-[#394E45]/25",
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
                        {activity.isCorrect ? "Correct" : "\u00C0 revoir"}
                      </Badge>
                      <Badge tone="accentSecondary">{activity.domainLabel}</Badge>
                    </div>
                    <p className="mt-1.5 text-sm font-medium leading-6 text-ink">
                      {activity.instruction}
                    </p>
                    <p className="mt-1 text-xs text-muted/70">
                      {activity.subdomainLabel} &middot; {formatDate(activity.answeredAt)}
                    </p>
                  </article>
                ))}
              </div>
            )}
          </Panel>
        </div>
      )}
    </div>
  );
}

// ── Domain grid helper ───────────────────────────────────────

function DomainGrid({
  domains,
  ficheProgress,
  subjectTone,
}: {
  domains: DashboardDomainDirectoryItem[];
  ficheProgress: Record<string, { total: number; completed: number }>;
  subjectTone: "pine" | "accent";
}) {
  return (
    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
      {domains.map((domain) => {
        const fp = ficheProgress[domain.key] ?? { total: 0, completed: 0 };
        return (
          <DomainProgressCard
            key={domain.key}
            domainKey={domain.key}
            label={domain.label}
            href={domain.href}
            totalSeries={domain.totalSeries}
            masteredSeries={domain.masteredSeries}
            correctRate={domain.correctRate}
            ficheTotal={fp.total}
            ficheCompleted={fp.completed}
            subjectTone={subjectTone}
          />
        );
      })}
    </div>
  );
}

// ── Fiche suggestions builder ────────────────────────────────

function buildFicheSuggestions(
  weakItems: Array<{ domain: string; domainLabel: string }>,
  fiches: typeof allFiches,
  completedSlugs: Set<string>,
): Array<{ domain: string; slug: string; title: string }> {
  const result: Array<{ domain: string; slug: string; title: string }> = [];
  const seenDomains = new Set<string>();

  for (const item of weakItems) {
    if (seenDomains.has(item.domain)) continue;

    const candidates = fiches
      .filter((f) => f.domaine === item.domain && !completedSlugs.has(f.slug))
      .sort((a, b) => {
        if (a.utilite !== b.utilite) return a.utilite === "haute" ? -1 : 1;
        if (a.model !== b.model) return a.model === "sprint" ? -1 : 1;
        return a.estimatedMinutes - b.estimatedMinutes;
      });

    if (candidates.length > 0) {
      result.push({
        domain: item.domain,
        slug: candidates[0].slug,
        title: candidates[0].title,
      });
      seenDomains.add(item.domain);
    }
  }

  return result;
}
