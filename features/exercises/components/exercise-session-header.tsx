import { Badge } from "@/components/ui/badge";
import { Panel } from "@/components/ui/panel";
import { cn } from "@/lib/utils";
import type { RevisionSession } from "@/types/domain";

type ExerciseSessionHeaderProps = {
  session: RevisionSession;
  currentIndex: number;
  answeredCount: number;
  score: number;
  incorrectCount: number;
  remainingCount: number;
  correctPercent: number;
  incorrectPercent: number;
  consecutiveCorrect: number;
  completed: boolean;
  showSessionDetails: boolean;
  onToggleSessionDetails: () => void;
};

export function ExerciseSessionHeader({
  session,
  currentIndex,
  answeredCount,
  score,
  incorrectCount,
  remainingCount,
  correctPercent,
  incorrectPercent,
  consecutiveCorrect,
  completed,
  showSessionDetails,
  onToggleSessionDetails,
}: ExerciseSessionHeaderProps) {
  return (
    <Panel className="border-border bg-card">
      <div className="flex flex-col gap-5 lg:flex-row lg:items-start lg:justify-between">
        <div className="space-y-3">
          <div className="flex flex-wrap items-center gap-2">
            <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"}>
              {session.access_tier === "premium" ? "Premium" : "Gratuit"}
            </Badge>
            <Badge>{session.level}</Badge>
            <Badge>{session.questionCount} questions</Badge>
            {consecutiveCorrect >= 3 && !completed && (
              <span className={cn(
                "inline-flex items-center gap-1 rounded-full border px-2.5 py-0.5 text-[0.65rem] font-bold uppercase tracking-[0.10em]",
                consecutiveCorrect >= 5
                  ? "animate-fire-glow border-accentSecondary/40 bg-accentSecondarySoft text-accentSecondaryDark"
                  : "border-accent/25 bg-accent/10 text-accent",
              )}>
                <span aria-hidden="true">{consecutiveCorrect >= 5 ? "\uD83D\uDD25" : "\u26A1"}</span>
                {consecutiveCorrect} d&apos;affilée
              </span>
            )}
          </div>
          <div>
            <h1 className="break-words font-serif text-2xl font-semibold text-ink sm:text-4xl">
              {session.title}
            </h1>
            <button
              type="button"
              onClick={onToggleSessionDetails}
              className="mt-2 flex items-center gap-1 text-xs font-semibold text-accent underline lg:hidden"
            >
              {showSessionDetails ? "Masquer les détails ▴" : "Voir les détails ▾"}
            </button>
            <div className={cn("space-y-2", !showSessionDetails && "hidden lg:block")}>
              <p className="mt-3 max-w-3xl text-base leading-8 text-muted">{session.summary}</p>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                <span className="font-semibold text-ink">Objectif :</span> {session.objective}
              </p>
              <p className="mt-2 max-w-3xl text-sm leading-7 text-muted">{session.introduction}</p>
            </div>
          </div>
        </div>
        <div className="w-full rounded-[1.5rem] border border-border bg-paper px-4 py-3 sm:min-w-[220px] sm:w-auto sm:px-5 sm:py-4">
          <p className="text-sm font-semibold text-ink" id="progress-label">
            Progression de la série
          </p>
          <div
            role="progressbar"
            aria-labelledby="progress-label"
            aria-valuenow={answeredCount}
            aria-valuemin={0}
            aria-valuemax={session.questionCount}
            className="mt-4 flex h-3 overflow-hidden rounded-full bg-secondary"
          >
            <div
              className="h-3 rounded-l-full bg-accent transition-[width] duration-300 ease-out"
              style={{ width: `${correctPercent}%` }}
            />
            <div
              className="h-3 bg-error/70 transition-[width] duration-300 ease-out"
              style={{ width: `${incorrectPercent}%` }}
            />
          </div>
          <div className="mt-4 flex items-center justify-between gap-2">
            <span className="text-sm text-muted">
              Question {Math.min(currentIndex + 1, session.questionCount)} / {session.questionCount}
            </span>
            <div className="flex items-center gap-3 text-xs text-muted">
              {score > 0 && (
                <span className="flex items-center gap-1">
                  <span className="inline-block h-2 w-2 rounded-full bg-accent" />
                  {score}
                </span>
              )}
              {incorrectCount > 0 && (
                <span className="flex items-center gap-1">
                  <span className="inline-block h-2 w-2 rounded-full bg-error/70" />
                  {incorrectCount}
                </span>
              )}
              {remainingCount > 0 && (
                <span className="flex items-center gap-1">
                  <span className="inline-block h-2 w-2 rounded-full bg-secondary" />
                  {remainingCount}
                </span>
              )}
            </div>
          </div>
        </div>
      </div>
    </Panel>
  );
}
