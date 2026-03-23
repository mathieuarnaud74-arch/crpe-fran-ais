import { Badge } from "@/components/ui/badge";
import type { ExerciseRecord } from "@/types/domain";
import type { SessionResult } from "./exercise-reducer";

type ExerciseReviewCardProps = {
  question: ExerciseRecord;
  result: SessionResult;
  index: number;
  isExpanded: boolean;
  onToggle: () => void;
};

export function ExerciseReviewCard({ question, result, index, isExpanded, onToggle }: ExerciseReviewCardProps) {
  return (
    <button
      type="button"
      onClick={onToggle}
      className="w-full rounded-[1.5rem] border border-border bg-paper p-5 text-left transition-colors hover:bg-card"
    >
      <div className="flex items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-3">
          <Badge tone={result.isCorrect ? "success" : "warning"}>
            {result.isCorrect ? "Correct" : "\u00c0 revoir"}
          </Badge>
          <span className="text-sm font-medium text-muted">Question {index + 1}</span>
        </div>
        <span className="text-xs text-muted">{isExpanded ? "\u25B4" : "\u25BE"}</span>
      </div>
      <p className="mt-3 text-sm font-medium leading-7 text-ink line-clamp-2">
        {question.instruction}
      </p>
      {isExpanded && (
        <div className="mt-4 space-y-2 border-t border-border pt-4">
          {question.support_text ? (
            <div className="rounded-xl border border-border bg-card px-4 py-4 text-sm leading-7 text-muted">
              {question.support_text}
            </div>
          ) : null}
          <p className="text-sm leading-7 text-muted">
            <span className="font-semibold text-ink">Votre r&eacute;ponse :</span>{" "}
            {question.exercise_type === "tri_categories" || question.exercise_type === "surlignage_propositions"
              ? "Classement soumis"
              : result.answer}
          </p>
          <p className="text-sm leading-7 text-muted">
            <span className="font-semibold text-ink">Correction :</span>{" "}
            {question.detailed_explanation}
          </p>
          {question.common_mistake ? (
            <p className="text-sm leading-7 text-muted">
              <span className="font-semibold text-ink">Erreur fr&eacute;quente :</span>{" "}
              {question.common_mistake}
            </p>
          ) : null}
        </div>
      )}
    </button>
  );
}
