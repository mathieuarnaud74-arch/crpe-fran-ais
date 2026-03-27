import Link from "next/link";

import { cn } from "@/lib/utils";
import type { SmartPlanItem } from "@/lib/dashboard/build-smart-plan";

// ── Tone styles ─────────────────────────────────────────────

const TONE_STYLES = {
  warning: {
    tagBorder: "border-[#476257]/30 bg-[rgba(71,98,87,0.08)] text-[#476257]",
    cta: "bg-[#476257] text-paper hover:bg-[#3a5248]",
    ctaSecondary: "text-[#476257]",
  },
  warm: {
    tagBorder: "border-[#394E45]/30 bg-[rgba(57,78,69,0.08)] text-[#394E45]",
    cta: "bg-[#394E45] text-paper hover:bg-[#2d3f38]",
    ctaSecondary: "text-[#394E45]",
  },
  neutral: {
    tagBorder: "border-[#6B8F80]/30 bg-[rgba(107,143,128,0.08)] text-[#6B8F80]",
    cta: "bg-[#6B8F80] text-paper hover:bg-[#5a7a6c]",
    ctaSecondary: "text-[#6B8F80]",
  },
};

const ACTION_LABELS = {
  fiche: "Lire la fiche",
  exercise: "Lancer",
  resume: "Reprendre",
};

// ── Hero card (first action, full width) ─────────────────────

function HeroCard({ item }: { item: Extract<SmartPlanItem, { type: "action" }> }) {
  const t = TONE_STYLES[item.tone];

  return (
    <Link
      href={item.action.href}
      className="group block rounded-xl bg-card transition hover:shadow-subtle"
    >
      <div className="flex flex-col gap-3 px-5 py-5 sm:flex-row sm:items-center sm:justify-between sm:gap-6">
        <div className="min-w-0 flex-1 space-y-2">
          {/* Tag + domain combined */}
          <div className="flex flex-wrap items-center gap-2">
            <span className={cn("rounded-full border px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em]", t.tagBorder)}>
              {item.tag} &middot; {item.domain}
            </span>
          </div>

          {/* Reason */}
          <p className="text-xs italic text-muted">{item.reason}</p>

          {/* Title */}
          <p className="text-base font-semibold text-ink">{item.action.title}</p>

          {/* Subtitle (duration or question count) */}
          <p className="text-xs text-muted">{item.action.subtitle}</p>
        </div>

        {/* CTA */}
        <span className={cn(
          "inline-flex shrink-0 items-center justify-center rounded-full px-5 py-2.5 text-sm font-bold transition group-hover:shadow-subtle",
          t.cta,
        )}>
          {ACTION_LABELS[item.action.action]} &rarr;
        </span>
      </div>
    </Link>
  );
}

// ── Queue row (compact, one line per item) ───────────────────

function QueueRow({ item }: { item: Extract<SmartPlanItem, { type: "action" }> }) {
  const t = TONE_STYLES[item.tone];

  return (
    <Link
      href={item.action.href}
      className="group flex items-center justify-between gap-3 rounded-lg px-4 py-2.5 transition hover:bg-paper"
      title={item.reason}
    >
      <div className="flex min-w-0 items-center gap-3">
        <span className={cn("shrink-0 rounded-full border px-2 py-0.5 text-[0.55rem] font-bold uppercase tracking-[0.08em]", t.tagBorder)}>
          {item.tag}
        </span>
        <span className="truncate text-sm text-ink">{item.action.title}</span>
        <span className="hidden shrink-0 text-xs text-muted sm:inline">{item.action.subtitle}</span>
      </div>
      <span className={cn("shrink-0 text-xs font-bold group-hover:underline", t.ctaSecondary)}>
        {ACTION_LABELS[item.action.action]} &rarr;
      </span>
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
  const actionItems = planItems.filter((i): i is Extract<SmartPlanItem, { type: "action" }> => i.type === "action");

  const heroItem = actionItems[0] ?? null;
  const queueItems = actionItems.slice(1);

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

      <div className="bg-card px-4 py-4 sm:px-6 sm:py-5 space-y-3">
        {/* SRS banner */}
        {srsItem && <SrsBanner dueCount={srsItem.dueCount} />}

        {/* Hero card */}
        {heroItem ? (
          <>
            <HeroCard item={heroItem} />

            {/* Queue */}
            {queueItems.length > 0 && (
              <div className="space-y-0.5 rounded-xl border border-border/50 bg-paper/50 py-1">
                <p className="px-4 pt-1 pb-1 text-[0.6rem] font-bold uppercase tracking-[0.14em] text-muted">
                  Ensuite
                </p>
                {queueItems.map((item, i) => (
                  <QueueRow key={i} item={item} />
                ))}
              </div>
            )}

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
