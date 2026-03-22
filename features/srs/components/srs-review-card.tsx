import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { SUBDOMAIN_LABELS } from "@/lib/constants";
import type { ExerciseSubdomain } from "@/types/domain";

type DueExercise = {
  exerciseId: string;
  subdomain: string | null;
  topicLabel: string | null;
  level: string | null;
  state: number;
  lapses: number;
};

export function SrsReviewCard({
  dueCount,
  exercises,
}: {
  dueCount: number;
  exercises: DueExercise[];
}) {
  if (dueCount === 0) return null;

  const subdomainCounts = new Map<string, number>();
  for (const ex of exercises) {
    if (ex.subdomain) {
      subdomainCounts.set(ex.subdomain, (subdomainCounts.get(ex.subdomain) ?? 0) + 1);
    }
  }

  const lapsedCount = exercises.filter((e) => e.lapses > 0).length;

  return (
    <div className="overflow-hidden rounded-2xl border border-accent/25 shadow-subtle">
      <div className="border-b border-accent/20 bg-[linear-gradient(135deg,rgba(74,110,143,0.12),rgba(252,250,246,1)_60%)] px-4 py-3 sm:px-6 sm:py-4">
        <div className="flex flex-wrap items-center justify-between gap-4">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accent">
              Répétition espacée
            </p>
            <h2 className="mt-1 font-serif text-2xl font-semibold text-ink">
              Révision intelligente
            </h2>
          </div>
          <div className="flex items-center gap-3">
            <span className="flex h-10 w-10 items-center justify-center rounded-full bg-accent/10 font-serif text-xl font-bold text-accent">
              {dueCount}
            </span>
            <span className="text-sm font-medium text-muted">
              exercice{dueCount > 1 ? "s" : ""} à réviser
            </span>
          </div>
        </div>
      </div>

      <div className="bg-card px-4 py-4 sm:px-6 sm:py-5">
        <p className="mb-4 text-sm leading-relaxed text-muted">
          Ces exercices sont programmés par l&apos;algorithme FSRS selon votre mémoire.
          {lapsedCount > 0 && (
            <span className="text-accentSecondary font-medium">
              {" "}
              {lapsedCount} exercice{lapsedCount > 1 ? "s" : ""} déjà oublié
              {lapsedCount > 1 ? "s" : ""} auparavant.
            </span>
          )}
        </p>

        {subdomainCounts.size > 0 && (
          <div className="mb-4 flex flex-wrap gap-2">
            {Array.from(subdomainCounts.entries()).map(([subdomain, count]) => (
              <Badge key={subdomain} tone="accent">
                {SUBDOMAIN_LABELS[subdomain as ExerciseSubdomain] ?? subdomain} ({count})
              </Badge>
            ))}
          </div>
        )}

        <div className="flex flex-wrap items-center gap-3">
          <ButtonLink href="/revision" variant="primary">
            Lancer la révision
          </ButtonLink>
          <Link
            href="/exercices"
            className="text-sm font-medium text-muted underline underline-offset-2 hover:text-ink"
          >
            Voir le catalogue
          </Link>
        </div>
      </div>
    </div>
  );
}
