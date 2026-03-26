import Link from "next/link";

import { cn } from "@/lib/utils";

type DomainProgressCardProps = {
  domainKey: string;
  label: string;
  href: string;
  totalSeries: number;
  masteredSeries: number;
  correctRate: number | null;
  ficheTotal: number;
  ficheCompleted: number;
  subjectTone: "pine" | "accent";
};

export function DomainProgressCard({
  label,
  href,
  totalSeries,
  masteredSeries,
  correctRate,
  ficheTotal,
  ficheCompleted,
  subjectTone,
}: DomainProgressCardProps) {
  const masteryPct = totalSeries > 0 ? Math.round((masteredSeries / totalSeries) * 100) : 0;
  const toneGradient =
    subjectTone === "pine"
      ? "from-accent to-pine"
      : "from-accent to-accentDark";

  return (
    <Link
      href={href}
      className="group flex flex-col gap-3 rounded-xl border border-border bg-card px-4 py-4 transition-colors hover:bg-paper hover:shadow-subtle"
    >
      <div className="flex items-center justify-between gap-3">
        <h3 className="text-sm font-semibold text-ink">{label}</h3>
        {correctRate !== null && (
          <span className="text-xs font-bold tabular-nums text-muted">{correctRate}%</span>
        )}
      </div>

      {/* Mastery bar */}
      <div className="flex items-center gap-2">
        <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
          <div
            className={cn("h-full rounded-full bg-gradient-to-r transition-all", toneGradient)}
            style={{ width: `${masteryPct}%` }}
          />
        </div>
        <span className="w-8 text-right text-xs tabular-nums text-muted">{masteryPct}%</span>
      </div>

      {/* Fiche + Series counts */}
      <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-muted">
        {ficheTotal > 0 && (
          <span>
            <span aria-hidden>&#x1F4D6;</span> Fiches : {ficheCompleted}/{ficheTotal}
          </span>
        )}
        <span>
          <span aria-hidden>&#x270F;&#xFE0F;</span> S&eacute;ries : {masteredSeries}/{totalSeries}
        </span>
      </div>

      <span className="text-xs font-semibold text-accent opacity-0 transition-opacity group-hover:opacity-100">
        Explorer &rarr;
      </span>
    </Link>
  );
}
