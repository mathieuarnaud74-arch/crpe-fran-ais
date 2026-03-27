import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

const MODEL_LABELS: Record<string, string> = {
  sprint: "Sprint",
  reference: "Fiche complète",
  operatoire: "Fiche opératoire",
};

type LearnThenPracticeCardProps = {
  step: number;
  ficheTitle: string;
  ficheSlug: string;
  ficheModel: string;
  ficheMinutes: number;
  ficheRead: boolean;
  ficheAccessTier: string;
  exerciseTitle: string;
  exerciseId: string;
  exerciseQuestionCount: number;
  domain: string;
  tone: "warning" | "warm" | "neutral";
  tag: string;
  reason: string;
};

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

export function LearnThenPracticeCard({
  step,
  ficheTitle,
  ficheSlug,
  ficheModel,
  ficheMinutes,
  ficheRead,
  ficheAccessTier,
  exerciseTitle,
  exerciseId,
  exerciseQuestionCount,
  domain,
  tone,
  tag,
  reason,
}: LearnThenPracticeCardProps) {
  const t = TONE_STYLES[tone];

  return (
    <div
      className={cn(
        "group relative flex flex-col overflow-hidden rounded-xl bg-card transition hover:shadow-subtle",
      )}
    >
      <div className="flex flex-1 flex-col px-4 py-4">
        {/* Header: step + tag + domain */}
        <div className="mb-3 flex items-center gap-3">
          <div className={cn("flex h-9 w-9 shrink-0 items-center justify-center rounded-full font-serif text-lg font-bold text-paper", t.circle)}>
            {step}
          </div>
          <span className={cn("rounded-full border px-2.5 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.10em]", t.tagBorder)}>
            {tag}
          </span>
          <Badge tone="accentSecondary" size="sm">{domain}</Badge>
        </div>
        {reason && (
          <p className="mb-3 text-xs italic text-muted">{reason}</p>
        )}

        {/* Fiche section */}
        <div>
          <div className="flex items-center gap-2">
            <span className="text-base" aria-hidden>&#x1F4D6;</span>
            <span className="text-[0.65rem] font-bold uppercase tracking-[0.14em] text-muted">
              {ficheRead ? "Relire la fiche" : "Lire la fiche"}
            </span>
            {ficheAccessTier === "premium" && (
              <Badge tone="accentSecondary" size="sm">Premium</Badge>
            )}
          </div>
          <p className="mt-1.5 text-sm font-semibold text-ink">{ficheTitle}</p>
          <p className="mt-1 text-xs text-muted">
            {MODEL_LABELS[ficheModel] ?? ficheModel} &middot; {ficheMinutes} min
          </p>
          <Link
            href={`/fiches/${ficheSlug}`}
            className={cn("mt-2 inline-block text-xs font-bold hover:underline", t.cta)}
          >
            {ficheRead ? "Relire" : "Lire"} &rarr;
          </Link>
        </div>

        {/* Mini-progression connector */}
        <div className="my-2.5 flex items-center gap-3">
          <div className="flex items-center gap-1.5">
            <span className={cn("flex h-5 w-5 items-center justify-center rounded-full text-[0.6rem]", ficheRead ? "bg-[#476257] text-paper" : "border border-border bg-paper text-muted")}>
              {ficheRead ? "\u2713" : "1"}
            </span>
            <span className="text-[0.55rem] font-semibold uppercase tracking-[0.08em] text-muted">{ficheRead ? "Lu" : "Lire"}</span>
          </div>
          <span className="h-px flex-1 bg-border/60" />
          <div className="flex items-center gap-1.5">
            <span className="flex h-5 w-5 items-center justify-center rounded-full border border-border bg-paper text-[0.6rem] text-muted">2</span>
            <span className="text-[0.55rem] font-semibold uppercase tracking-[0.08em] text-muted">S&apos;exercer</span>
          </div>
        </div>

        {/* Exercise section */}
        <div>
          <div className="flex items-center gap-2">
            <span className="text-base" aria-hidden>&#x270F;&#xFE0F;</span>
            <span className="text-[0.65rem] font-bold uppercase tracking-[0.14em] text-muted">
              S&apos;exercer
            </span>
          </div>
          <p className="mt-1.5 text-sm font-semibold text-ink">{exerciseTitle}</p>
          <p className="mt-1 text-xs text-muted">{exerciseQuestionCount} questions</p>
          <Link
            href={`/exercices/${exerciseId}`}
            className={cn(
              "mt-2 inline-block text-xs font-bold hover:underline",
              ficheRead ? t.cta : "text-muted",
            )}
          >
            Lancer &rarr;
          </Link>
        </div>
      </div>
    </div>
  );
}
