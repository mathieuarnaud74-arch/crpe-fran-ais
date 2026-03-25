import { cn } from "@/lib/utils";
import type { RevisionSession } from "@/types/domain";

type ExerciseSessionHeaderProps = {
  session: RevisionSession;
  currentIndex: number;
  answeredCount: number;
  score: number;
  incorrectCount: number;
  correctPercent: number;
  incorrectPercent: number;
  consecutiveCorrect: number;
  completed: boolean;
};

export function ExerciseSessionHeader({
  session,
  currentIndex,
  score,
  incorrectCount,
  correctPercent,
  incorrectPercent,
  consecutiveCorrect,
  completed,
}: ExerciseSessionHeaderProps) {
  return (
    <div className="space-y-2">
      <div className="flex items-center justify-between gap-3">
        <h1 className="min-w-0 truncate font-serif text-lg font-semibold text-ink sm:text-xl">
          {session.title}
        </h1>
        <div className="flex shrink-0 items-center gap-2">
          {consecutiveCorrect >= 3 && !completed && (
            <span className={cn(
              "inline-flex items-center gap-1 rounded-full border px-2 py-0.5 text-[0.6rem] font-bold uppercase tracking-[0.08em]",
              consecutiveCorrect >= 5
                ? "animate-fire-glow border-accentSecondary/40 bg-accentSecondarySoft text-accentSecondaryDark"
                : "border-accent/25 bg-accent/10 text-accent",
            )}>
              <span aria-hidden="true">{consecutiveCorrect >= 5 ? "\uD83D\uDD25" : "\u26A1"}</span>
              {consecutiveCorrect}
            </span>
          )}
          <span className="text-xs tabular-nums text-muted">
            {Math.min(currentIndex + 1, session.questionCount)}/{session.questionCount}
          </span>
        </div>
      </div>
      <div className="flex items-center gap-3">
        <div
          role="progressbar"
          aria-label="Progression de la série"
          aria-valuenow={score + incorrectCount}
          aria-valuemin={0}
          aria-valuemax={session.questionCount}
          className="flex h-1.5 flex-1 overflow-hidden rounded-full bg-secondary"
        >
          <div
            className="h-full rounded-l-full bg-accent transition-[width] duration-300 ease-out"
            style={{ width: `${correctPercent}%` }}
          />
          <div
            className="h-full bg-error/70 transition-[width] duration-300 ease-out"
            style={{ width: `${incorrectPercent}%` }}
          />
        </div>
        <div className="flex shrink-0 items-center gap-2 text-xs tabular-nums text-muted">
          {score > 0 && (
            <span className="flex items-center gap-1">
              <span className="inline-block h-1.5 w-1.5 rounded-full bg-accent" />
              {score}
            </span>
          )}
          {incorrectCount > 0 && (
            <span className="flex items-center gap-1">
              <span className="inline-block h-1.5 w-1.5 rounded-full bg-error/70" />
              {incorrectCount}
            </span>
          )}
        </div>
      </div>
    </div>
  );
}
