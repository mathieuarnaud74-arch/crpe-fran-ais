import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { DashboardDomainDirectoryItem } from "@/types/domain";
import { cn } from "@/lib/utils";

type DomainSummaryCardProps = {
  domain: DashboardDomainDirectoryItem;
};

export function DomainSummaryCard({ domain }: DomainSummaryCardProps) {
  const pct =
    domain.totalSeries > 0
      ? Math.round((domain.masteredSeries / domain.totalSeries) * 100)
      : 0;

  const scoreColor =
    domain.correctRate === null ? null
    : domain.correctRate >= 80 ? "high"
    : domain.correctRate >= 50 ? "mid"
    : "low";

  return (
    <article className="overflow-hidden rounded-shell border border-border shadow-panel flex flex-col">
      {/* Colored header */}
      <div className="relative bg-[linear-gradient(135deg,#476257,#394E45)] px-5 pt-5 pb-6 overflow-hidden">
        {/* Decorative circle */}
        <span
          aria-hidden
          className="pointer-events-none absolute -right-6 -top-6 h-32 w-32 rounded-full bg-paper/[0.05] select-none"
        />
        <span
          aria-hidden
          className="pointer-events-none absolute -right-1 -bottom-8 h-20 w-20 rounded-full bg-paper/[0.04] select-none"
        />

        <p className="text-[0.65rem] font-bold uppercase tracking-[0.18em] text-paper/50">
          Domaine
        </p>
        <div className="mt-1.5 flex items-start justify-between gap-3">
          <h2 className="font-serif text-2xl font-semibold text-paper leading-tight">{domain.label}</h2>
          {domain.correctRate !== null ? (
            <p
              className={cn(
                "shrink-0 font-serif text-5xl font-bold leading-none",
                scoreColor === "high" && "text-[#A3BDB5]",
                scoreColor === "mid" && "text-[#C8DDD8]",
                scoreColor === "low" && "text-paper/60",
              )}
            >
              {domain.correctRate}<span className="text-2xl font-semibold opacity-70"> %</span>
            </p>
          ) : null}
        </div>
        <div className="mt-4">
          <div className="h-2 w-full overflow-hidden rounded-full bg-paper/20">
            <div
              className={cn(
                "h-2 rounded-full transition-all duration-500",
                pct === 100
                  ? "bg-[linear-gradient(90deg,#A3D9C1,#6EC4A4)]"
                  : "bg-[linear-gradient(90deg,#F5F1E8,#A46849)]",
              )}
              style={{ width: `${pct}%` }}
              role="presentation"
            />
          </div>
          <p className="mt-1.5 text-xs text-paper/60">
            <span className="font-semibold text-paper">{domain.masteredSeries}</span>/{domain.totalSeries} séries terminées
          </p>
        </div>
      </div>

      {/* Content */}
      <div
        className={cn(
          "flex-1 bg-card px-5 py-4 border-l-4",
          scoreColor === "high" && "border-l-[#394E45]",
          scoreColor === "mid" && "border-l-[#6B8F80]",
          scoreColor === "low" && "border-l-[#A3BDB5]",
          scoreColor === null && "border-l-border",
        )}
      >
        {(domain.inProgressSeries > 0 || domain.toReviewSeries > 0 || domain.notStartedSeries > 0) && (
          <div className="mb-4 flex flex-wrap gap-x-4 gap-y-1 text-xs text-muted">
            {domain.inProgressSeries > 0 ? (
              <span className="flex items-center gap-1">
                <span className="h-1.5 w-1.5 rounded-full bg-accent inline-block" />
                {domain.inProgressSeries} en cours
              </span>
            ) : null}
            {domain.toReviewSeries > 0 ? (
              <span className="flex items-center gap-1 font-semibold text-warning">
                <span className="h-1.5 w-1.5 rounded-full bg-warning inline-block" />
                {domain.toReviewSeries} à revoir
              </span>
            ) : null}
            {domain.notStartedSeries > 0 ? (
              <span className="flex items-center gap-1">
                <span className="h-1.5 w-1.5 rounded-full bg-border inline-block" />
                {domain.notStartedSeries} non commencée{domain.notStartedSeries > 1 ? "s" : ""}
              </span>
            ) : null}
          </div>
        )}

        <div className="flex items-center justify-between gap-3">
          {domain.subdomainLabels.length > 0 ? (
            <div className="flex flex-wrap gap-1.5">
              {domain.subdomainLabels.map((label) => (
                <span
                  key={label}
                  className="rounded-full border border-border bg-paper px-2.5 py-0.5 text-[0.65rem] font-semibold uppercase tracking-[0.12em] text-muted"
                >
                  {label}
                </span>
              ))}
            </div>
          ) : <div />}
          <ButtonLink href={domain.href} variant="secondary" className="shrink-0 py-2 text-xs">
            Explorer
          </ButtonLink>
        </div>
      </div>
    </article>
  );
}
