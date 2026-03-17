import Link from "next/link";
import { ArrowRight } from "lucide-react";
import type { BlockRelated } from "@/features/fiches/types";

export function BlockRelated({ block }: { block: BlockRelated }) {
  const hasFiches = block.fiches && block.fiches.length > 0;
  const hasExercises = block.exercises && block.exercises.length > 0;

  if (!hasFiches && !hasExercises) return null;

  return (
    <div className="space-y-4">
      {hasFiches && (
        <div>
          <p className="mb-2 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            Fiches liées
          </p>
          <div className="flex flex-wrap gap-2">
            {block.fiches!.map((f) => (
              <Link
                key={f.slug}
                href={`/fiches/${f.slug}`}
                className="inline-flex items-center gap-1.5 rounded-full border border-border bg-paper px-3 py-1.5 text-xs font-medium text-ink transition hover:border-accent/30 hover:bg-card"
              >
                {f.label}
                <ArrowRight className="h-3 w-3 text-muted" aria-hidden="true" />
              </Link>
            ))}
          </div>
        </div>
      )}

      {hasExercises && (
        <div>
          <p className="mb-2 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            S'entraîner
          </p>
          <div className="flex flex-wrap gap-2">
            {block.exercises!.map((ex) => (
              <Link
                key={ex.topicKey}
                href={`/exercices?topic=${ex.topicKey}`}
                className="inline-flex items-center gap-1.5 rounded-full border border-accent/20 bg-secondary px-3 py-1.5 text-xs font-medium text-accentDark transition hover:bg-secondary/80"
              >
                {ex.label}
                <ArrowRight className="h-3 w-3 text-accent" aria-hidden="true" />
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
