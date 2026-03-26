import { Mocca } from "@/components/mascot/mocca";
import { cn } from "@/lib/utils";
import type { ExerciseRecord } from "@/types/domain";
import { StatusGlyph } from "./status-glyph";
import type { SessionResult } from "./exercise-reducer";

type ExerciseFeedbackProps = {
  result: SessionResult;
  question: ExerciseRecord;
  questionIndex: number;
  consecutiveCorrect: number;
  showFullExplanation: boolean;
  onToggleExplanation: () => void;
};

function getFeedbackTitle(result: SessionResult, consecutiveCorrect: number, questionIndex: number): string {
  if (result.isCorrect) {
    if (consecutiveCorrect >= 5) return "Impressionnant, quelle s\u00e9rie !";
    if (consecutiveCorrect >= 3) return "Encore juste, bien jou\u00e9 !";
    const titles = ["Bonne r\u00e9ponse !", "Exactement !", "Bien vu !", "C\u2019est correct !"];
    return titles[questionIndex % titles.length];
  }
  if (result.reason === "accent_only") return "Presque ! L\u2019accent fait la diff\u00e9rence.";
  const titles = [
    "Pas tout \u00e0 fait. Regardons ensemble.",
    "Ce n\u2019est pas \u00e7a, mais c\u2019est formateur.",
    "Pas cette fois. Voyons pourquoi.",
  ];
  return titles[questionIndex % titles.length];
}

export function ExerciseFeedback({
  result,
  question,
  questionIndex,
  consecutiveCorrect,
  showFullExplanation,
  onToggleExplanation,
}: ExerciseFeedbackProps) {
  const tone: "success" | "warning" | "error" = result.isCorrect
    ? "success"
    : result.reason === "accent_only"
      ? "warning"
      : "error";

  return (
    <div
      className={cn(
        "relative overflow-hidden rounded-[1.5rem] border-2 px-6 py-6 text-base leading-7 transition-colors duration-200",
        tone === "success" && "animate-feedback-success border-successBorder bg-successBg text-ink shadow-panel",
        tone === "warning" && "animate-feedback-soft border-warningBorder bg-warningBg text-ink shadow-panel",
        tone === "error" && "animate-feedback-soft border-errorBorder bg-errorBg text-ink shadow-panel",
      )}
    >
      <div
        aria-hidden="true"
        className={cn(
          "absolute inset-y-0 left-0 w-1.5",
          tone === "success" && "bg-accent",
          tone === "warning" && "bg-warning",
          tone === "error" && "bg-error",
        )}
      />
      <div className="flex items-end gap-4">
        <span
          aria-hidden="true"
          className={cn(
            "mt-0.5 flex h-11 w-11 shrink-0 items-center justify-center rounded-full",
            tone === "success" && "animate-feedback-icon bg-accent/15 text-pine",
            tone === "warning" && "animate-feedback-icon bg-warning/15 text-warning",
            tone === "error" && "animate-feedback-icon bg-error/15 text-error",
          )}
        >
          <StatusGlyph tone={tone} size="lg" />
        </span>
        <div className="min-w-0 flex-1">
          <p
            className={cn(
              "text-base font-bold",
              tone === "success" && "text-pine",
              tone === "warning" && "text-warning",
              tone === "error" && "text-error",
            )}
          >
            {getFeedbackTitle(result, consecutiveCorrect, questionIndex)}
          </p>

          {!result.isCorrect && result.reason === "accent_only" ? (
            <>
              <p className="mt-2">
                Le raisonnement est bon ! Cet exercice exige cependant la graphie exacte avec les
                accents. C&apos;est un automatisme qui viendra avec la pratique.
              </p>
              <p className="mt-2">
                <span className="font-semibold">Forme attendue :</span>{" "}
                {result.expectedAnswerLabel}
              </p>
            </>
          ) : !result.isCorrect ? (
            <p className="mt-2">
              <span className="font-semibold">R&eacute;ponse attendue :</span>{" "}
              {result.expectedAnswerLabel}
            </p>
          ) : null}

          <div className="mt-4 flex items-start gap-3">
            <Mocca
              variant={tone === "success" ? "happy" : tone === "warning" ? "neutral" : "grumpy"}
              size="portrait"
              className="hidden shrink-0 sm:block"
            />
            <div className="relative flex-1 rounded-[1rem] border border-border/50 bg-card/60 px-4 py-3">
              <div className="absolute -left-2.5 top-5 hidden h-0 w-0 border-y-[8px] border-r-[10px] border-y-transparent border-r-card/60 sm:block" />
              <p className="text-xs font-semibold uppercase tracking-[0.12em] text-muted">Mocca t&apos;explique</p>
              <p className={cn("mt-1", !showFullExplanation && "line-clamp-3 sm:line-clamp-none")}>
                {question.detailed_explanation}
              </p>
              {result.validationRule ? (
                <p className={cn("mt-3 text-base", !showFullExplanation && "hidden sm:block")}>
                  <span className="font-semibold">R&egrave;gle :</span>{" "}
                  {result.validationRule}
                </p>
              ) : null}
              {question.common_mistake ? (
                <p className={cn("mt-2 text-base", !showFullExplanation && "hidden sm:block")}>
                  <span className="font-semibold">Erreur fr&eacute;quente :</span>{" "}
                  {question.common_mistake}
                </p>
              ) : null}
              <button
                type="button"
                onClick={onToggleExplanation}
                className="mt-2 text-xs font-semibold text-accent underline sm:hidden"
              >
                {showFullExplanation ? "Réduire \u25B4" : "Lire l'explication complète \u25BE"}
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
