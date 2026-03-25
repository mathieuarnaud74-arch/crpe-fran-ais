import Link from "next/link";

import { cn } from "@/lib/utils";

type DomainRow = {
  key: string;
  label: string;
  href: string;
  totalSeries: number;
  masteredSeries: number;
  inProgressSeries: number;
  toReviewSeries: number;
  correctRate: number | null;
};

export function DomainDirectoryTable({
  domains,
  subjectLabel,
  subjectTone,
  viewHref,
}: {
  domains: DomainRow[];
  subjectLabel: string;
  subjectTone: "pine" | "accent";
  viewHref: string;
}) {
  const toneClass = subjectTone === "pine" ? "text-[#476257]" : "text-accent";

  return (
    <section>
      <div className="mb-3 flex items-end justify-between gap-4">
        <div>
          <p className={cn("text-[0.7rem] font-bold uppercase tracking-[0.18em]", toneClass)}>
            {subjectLabel}
          </p>
          <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">Domaines</h2>
        </div>
        <Link
          href={viewHref}
          className="inline-flex h-9 items-center gap-2 rounded-full border border-border bg-card px-4 text-sm font-semibold text-ink shadow-subtle transition-colors hover:bg-paper active:scale-[0.97]"
        >
          Vue matière
        </Link>
      </div>
      <div className="overflow-hidden rounded-2xl border border-border">
        {/* Desktop header */}
        <div className="hidden border-b border-border bg-secondary/50 px-5 py-2.5 md:grid md:grid-cols-[1fr_8rem_5rem_5rem_5rem_4.5rem_5rem] md:gap-3 md:items-center">
          <span className="text-xs font-semibold uppercase tracking-widest text-muted">Domaine</span>
          <span className="text-xs font-semibold uppercase tracking-widest text-muted">Progression</span>
          <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">Score</span>
          <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">En c.</span>
          <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">À rev.</span>
          <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">Maîtr.</span>
          <span />
        </div>
        {domains.map((domain, i) => {
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
                i < domains.length - 1 && "border-b border-border",
              )}
            >
              <div>
                <span className="text-sm font-semibold text-ink">{domain.label}</span>
                <span className="ml-2 text-xs text-muted md:hidden">{domain.totalSeries} séries</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="h-2 flex-1 overflow-hidden rounded-full bg-secondary">
                  <div
                    className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all"
                    style={{ width: `${pct}%` }}
                  />
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
              <span
                className={cn(
                  "text-sm tabular-nums md:text-center",
                  domain.toReviewSeries > 0 ? "font-semibold text-warning" : "text-muted",
                )}
              >
                <span className="text-xs font-normal text-muted md:hidden">À revoir : </span>
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
  );
}
