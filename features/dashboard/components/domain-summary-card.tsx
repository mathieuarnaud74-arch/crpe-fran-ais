import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { DashboardDomainDirectoryItem } from "@/types/domain";

type DomainSummaryCardProps = {
  domain: DashboardDomainDirectoryItem;
};

export function DomainSummaryCard({ domain }: DomainSummaryCardProps) {
  const pct =
    domain.totalSeries > 0
      ? Math.round((domain.masteredSeries / domain.totalSeries) * 100)
      : 0;

  return (
    <article className="rounded-shell border border-border bg-card p-5 shadow-panel">
      <div className="flex items-center justify-between gap-3">
        <div>
          <Badge tone="accentSecondary" size="sm">
            Domaine
          </Badge>
          <h2 className="mt-3 font-serif text-xl font-semibold text-ink">{domain.label}</h2>
        </div>
        <ButtonLink href={domain.href} variant="secondary" className="shrink-0 py-2 text-xs">
          Explorer
        </ButtonLink>
      </div>

      <div className="mt-4">
        <div className="mb-1.5 flex items-center justify-between text-xs text-muted">
          <span>
            <span className="font-semibold text-ink">{domain.masteredSeries}</span>/{domain.totalSeries} terminées
          </span>
          {domain.correctRate !== null ? (
            <span>
              <span className="font-semibold text-ink">{domain.correctRate}&thinsp;%</span> de réussite
            </span>
          ) : null}
        </div>
        <div className="h-2 w-full overflow-hidden rounded-full bg-secondary">
          <div
            className="h-2 rounded-full bg-[linear-gradient(90deg,#476257,#A46849)] transition-all duration-300"
            style={{ width: `${pct}%` }}
            role="presentation"
          />
        </div>
      </div>

      {(domain.inProgressSeries > 0 || domain.toReviewSeries > 0 || domain.notStartedSeries > 0) && (
        <div className="mt-3 flex flex-wrap gap-x-3 gap-y-1 text-xs text-muted">
          {domain.inProgressSeries > 0 ? <span>{domain.inProgressSeries} en cours</span> : null}
          {domain.toReviewSeries > 0 ? (
            <span className="font-medium text-warning">{domain.toReviewSeries} à revoir</span>
          ) : null}
          {domain.notStartedSeries > 0 ? (
            <span>
              {domain.notStartedSeries} non commencée{domain.notStartedSeries > 1 ? "s" : ""}
            </span>
          ) : null}
        </div>
      )}

      {domain.subdomainLabels.length > 0 ? (
        <div className="mt-4 flex flex-wrap gap-1.5">
          {domain.subdomainLabels.map((label) => (
            <span
              key={label}
              className="rounded-full border border-border bg-paper px-2.5 py-0.5 text-[0.65rem] font-medium uppercase tracking-[0.12em] text-muted"
            >
              {label}
            </span>
          ))}
        </div>
      ) : null}
    </article>
  );
}
