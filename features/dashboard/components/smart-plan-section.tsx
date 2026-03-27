import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";
import type { SmartPlanItem } from "@/lib/dashboard/build-smart-plan";
import type { DashboardSessionProgress } from "@/types/domain";

import { LearnThenPracticeCard } from "./learn-then-practice-card";

// ── Resume card (reused inline) ──────────────────────────────

function ResumeCard({ session, step, reason }: { session: DashboardSessionProgress; step: number; reason: string }) {
  return (
    <Link
      href={`/exercices/${session.id}`}
      className="group relative flex flex-col overflow-hidden rounded-xl bg-card transition hover:shadow-subtle"
    >
      <div className="flex flex-1 flex-col px-4 py-4">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-[#394E45] font-serif text-lg font-bold text-paper">
            {step}
          </div>
          <span className="rounded-full border border-[#394E45]/30 bg-[rgba(57,78,69,0.08)] px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em] text-[#394E45]">
            &Agrave; reprendre
          </span>
          <Badge tone="accentSecondary" size="sm">{session.subdomainLabel}</Badge>
        </div>
        {reason && <p className="mb-2 text-xs italic text-muted">{reason}</p>}
        <p className="flex-1 text-sm font-semibold leading-6 text-ink">{session.title}</p>
        <p className="mt-1.5 text-xs text-muted">
          {session.answeredQuestions}/{session.questionCount} questions &middot;{" "}
          {session.correctRate !== null ? `${session.correctRate}%` : "\u2014"}
        </p>
        <p className="mt-3 text-xs font-bold text-[#394E45] group-hover:underline">
          Reprendre &rarr;
        </p>
      </div>
    </Link>
  );
}

// ── Exercise-only card ───────────────────────────────────────

const TONE_STYLES = {
  warning: {
    border: "border-[#476257]/20 hover:border-[#476257]/50",
    bar: "bg-[#476257]",
    circle: "bg-[#476257]",
    tagBorder: "border-[#476257]/30 bg-[rgba(71,98,87,0.08)] text-[#476257]",
    cta: "text-[#476257]",
  },
  warm: {
    border: "border-[#394E45]/25 hover:border-[#394E45]/50",
    bar: "bg-[#394E45]",
    circle: "bg-[#394E45]",
    tagBorder: "border-[#394E45]/30 bg-[rgba(57,78,69,0.08)] text-[#394E45]",
    cta: "text-[#394E45]",
  },
  neutral: {
    border: "border-[#6B8F80]/25 hover:border-[#6B8F80]/50",
    bar: "bg-[#6B8F80]",
    circle: "bg-[#6B8F80]",
    tagBorder: "border-[#6B8F80]/30 bg-[rgba(107,143,128,0.08)] text-[#6B8F80]",
    cta: "text-[#6B8F80]",
  },
};

function ExerciseOnlyCard({
  item,
}: {
  item: Extract<SmartPlanItem, { type: "exercise-only" }>;
}) {
  const t = TONE_STYLES[item.tone];
  return (
    <Link
      href={`/exercices/${item.exercise.id}`}
      className={cn(
        "group relative flex flex-col overflow-hidden rounded-xl bg-card transition hover:shadow-subtle",
      )}
    >
      <div className="flex flex-1 flex-col px-4 py-4">
        <div className="mb-3 flex items-center gap-3">
          <div className={cn("flex h-9 w-9 shrink-0 items-center justify-center rounded-full font-serif text-lg font-bold text-paper", t.circle)}>
            {item.step}
          </div>
          <span className={cn("rounded-full border px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em]", t.tagBorder)}>
            {item.tag}
          </span>
          <Badge tone="accentSecondary" size="sm">{item.domain}</Badge>
        </div>
        {item.reason && <p className="mb-2 text-xs italic text-muted">{item.reason}</p>}
        <p className="flex-1 text-sm font-semibold leading-6 text-ink">{item.exercise.title}</p>
        <p className="mt-1.5 text-xs text-muted">{item.exercise.questionCount} questions</p>
        <p className={cn("mt-3 text-xs font-bold group-hover:underline", t.cta)}>
          Lancer &rarr;
        </p>
      </div>
    </Link>
  );
}

// ── Fiche-only card ──────────────────────────────────────────

const MODEL_LABELS: Record<string, string> = {
  sprint: "Sprint",
  reference: "Fiche complète",
  operatoire: "Fiche opératoire",
};

function FicheOnlyCard({
  item,
}: {
  item: Extract<SmartPlanItem, { type: "fiche-only" }>;
}) {
  return (
    <Link
      href={`/fiches/${item.fiche.slug}`}
      className="group relative flex flex-col overflow-hidden rounded-xl bg-card transition hover:shadow-subtle"
    >
      <div className="flex flex-1 flex-col px-4 py-4">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-[#6B8F80] font-serif text-lg font-bold text-paper">
            {item.step}
          </div>
          <span className="rounded-full border border-[#6B8F80]/30 bg-[rgba(107,143,128,0.08)] px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em] text-[#6B8F80]">
            {item.tag}
          </span>
          <Badge tone="accentSecondary" size="sm">{item.domain}</Badge>
        </div>
        {item.reason && <p className="mb-2 text-xs italic text-muted">{item.reason}</p>}
        <div className="flex items-center gap-2 mb-1.5">
          <span className="text-base" aria-hidden>&#x1F4D6;</span>
          <span className="text-[0.65rem] font-bold uppercase tracking-[0.14em] text-muted">Lire la fiche</span>
        </div>
        <p className="flex-1 text-sm font-semibold leading-6 text-ink">{item.fiche.title}</p>
        <p className="mt-1 text-xs text-muted">
          {MODEL_LABELS[item.fiche.model] ?? item.fiche.model} &middot; {item.fiche.estimatedMinutes} min
        </p>
        <p className="mt-3 text-xs font-bold text-[#6B8F80] group-hover:underline">
          Lire &rarr;
        </p>
      </div>
    </Link>
  );
}

// ── SRS banner ───────────────────────────────────────────────

function SrsBanner({ dueCount }: { dueCount: number }) {
  return (
    <Link
      href="/revision"
      className="group flex items-center justify-between gap-4 rounded-xl border border-accent/20 bg-[linear-gradient(135deg,rgba(74,110,143,0.08),rgba(253,249,243,1)_60%)] px-4 py-3 transition hover:border-accent/40 hover:shadow-subtle"
    >
      <div className="flex items-center gap-3">
        <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-accent/10">
          <span className="text-sm" aria-hidden>&#x1F9E0;</span>
        </div>
        <div>
          <p className="text-sm font-semibold text-ink">
            {dueCount} exercice{dueCount > 1 ? "s" : ""} &agrave; r&eacute;viser
          </p>
          <p className="text-xs text-muted">R&eacute;vision intelligente (FSRS)</p>
        </div>
      </div>
      <span className="text-xs font-bold text-accent group-hover:underline">
        Lancer &rarr;
      </span>
    </Link>
  );
}

// ── Main section ─────────────────────────────────────────────

type SmartPlanSectionProps = {
  planItems: SmartPlanItem[];
  totalAttempts: number;
  ficheProgress?: { completed: number; total: number };
  exerciseProgress?: { inProgress: number; toReview: number; total: number };
};

export function SmartPlanSection({
  planItems,
  totalAttempts,
  ficheProgress,
  exerciseProgress,
}: SmartPlanSectionProps) {
  if (totalAttempts === 0 && planItems.length === 0) return null;

  const srsItem = planItems.find((i) => i.type === "srs") as
    | Extract<SmartPlanItem, { type: "srs" }>
    | undefined;
  const actionItems = planItems.filter((i) => i.type !== "srs");

  const hasActionItems = actionItems.length > 0;

  return (
    <div className="overflow-hidden rounded-2xl border border-accentSecondary/25 shadow-subtle">
      <div className="border-b border-accentSecondary/20 bg-[linear-gradient(135deg,rgba(164,104,73,0.12),rgba(252,250,246,1)_60%)] px-4 py-3 sm:px-6 sm:py-4">
        <div className="flex flex-wrap items-center justify-between gap-4">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
              Votre parcours
            </p>
            <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Prochaine &eacute;tape</h2>
          </div>
          {(ficheProgress || exerciseProgress) && (
            <div className="flex flex-wrap items-center gap-3 text-xs text-muted">
              {ficheProgress && (
                <span className="rounded-full border border-border bg-paper px-2.5 py-1">
                  {ficheProgress.completed}/{ficheProgress.total} fiches lues
                </span>
              )}
              {exerciseProgress && exerciseProgress.inProgress > 0 && (
                <span className="rounded-full border border-border bg-paper px-2.5 py-1">
                  {exerciseProgress.inProgress} s&eacute;rie{exerciseProgress.inProgress > 1 ? "s" : ""} en cours
                </span>
              )}
              {exerciseProgress && exerciseProgress.toReview > 0 && (
                <span className="rounded-full border border-border bg-paper px-2.5 py-1">
                  {exerciseProgress.toReview} &agrave; revoir
                </span>
              )}
            </div>
          )}
        </div>
      </div>

      <div className="bg-card px-4 py-4 sm:px-6 sm:py-5 space-y-4">
        {/* SRS banner at top if due */}
        {srsItem && <SrsBanner dueCount={srsItem.dueCount} />}

        {/* Action items */}
        {hasActionItems ? (
          <>
            <div className="grid gap-3 xl:grid-cols-3">
              {actionItems.map((item) => {
                switch (item.type) {
                  case "learn-then-practice":
                    return (
                      <LearnThenPracticeCard
                        key={`ltp-${item.step}`}
                        step={item.step}
                        ficheTitle={item.fiche.title}
                        ficheSlug={item.fiche.slug}
                        ficheModel={item.fiche.model}
                        ficheMinutes={item.fiche.estimatedMinutes}
                        ficheRead={item.ficheRead}
                        ficheAccessTier={item.fiche.accessTier}
                        exerciseTitle={item.exercise.title}
                        exerciseId={item.exercise.id}
                        exerciseQuestionCount={item.exercise.questionCount}
                        domain={item.domain}
                        tone={item.tone}
                        tag={item.tag}
                        reason={item.reason}
                      />
                    );
                  case "exercise-only":
                    return <ExerciseOnlyCard key={`ex-${item.step}`} item={item} />;
                  case "resume":
                    return <ResumeCard key={`res-${item.step}`} session={item.session} step={item.step} reason={item.reason} />;
                  case "fiche-only":
                    return <FicheOnlyCard key={`fiche-${item.step}`} item={item} />;
                  default:
                    return null;
                }
              })}
            </div>
            <div className="flex justify-center gap-4 pt-1">
              <Link href="/fiches" className="text-xs font-semibold text-muted hover:text-ink hover:underline">
                Toutes les fiches &rarr;
              </Link>
              <Link href="/exercices" className="text-xs font-semibold text-muted hover:text-ink hover:underline">
                Tous les exercices &rarr;
              </Link>
            </div>
          </>
        ) : (
          <div className="rounded-xl border border-border bg-paper px-4 py-3">
            <p className="text-sm text-muted">
              Commencez une s&eacute;rie depuis la{" "}
              <Link href="/francais" className="font-semibold text-ink underline underline-offset-2">page Fran&ccedil;ais</Link>{" "}
              ou lisez une{" "}
              <Link href="/fiches" className="font-semibold text-ink underline underline-offset-2">fiche de r&eacute;vision</Link>{" "}
              pour que vos recommandations apparaissent ici.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
