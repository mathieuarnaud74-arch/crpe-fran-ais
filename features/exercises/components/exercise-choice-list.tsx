import { cn } from "@/lib/utils";
import type { ExerciseChoice, ExerciseType, ExpectedAnswer } from "@/types/domain";
import { StatusGlyph } from "./status-glyph";
import type { SessionResult } from "./exercise-reducer";

type ExerciseChoiceListProps = {
  choices: ExerciseChoice[];
  exerciseType: ExerciseType;
  expectedChoiceId: string | null;
  draftAnswer: string;
  onSelect: (choiceId: string) => void;
  result: SessionResult | undefined;
  disabled: boolean;
};

export function getExpectedChoiceId(expectedAnswer: ExpectedAnswer): string | null {
  if (expectedAnswer.mode === "single_choice") return expectedAnswer.value;
  if (expectedAnswer.mode === "boolean") return String(expectedAnswer.value);
  return null;
}

export function ExerciseChoiceList({
  choices,
  exerciseType,
  expectedChoiceId,
  draftAnswer,
  onSelect,
  result,
  disabled,
}: ExerciseChoiceListProps) {
  return (
    <div className="space-y-3">
      {choices.map((choice) => {
        const isSelected = draftAnswer === choice.id;
        const isExpected = expectedChoiceId === choice.id;
        const showCorrect = Boolean(result) && isExpected;
        const showIncorrect = Boolean(result && isSelected && !result.isCorrect);

        return (
          <button
            key={choice.id}
            type="button"
            aria-pressed={isSelected}
            disabled={disabled}
            onClick={() => onSelect(choice.id)}
            className={cn(
              "flex w-full items-start gap-3 rounded-[1.25rem] border px-4 py-4 text-left transition-all duration-200",
              !result &&
                (isSelected
                  ? "border-accent bg-secondary"
                  : "border-border bg-paper hover:border-accent"),
              showCorrect && "border-successBorder bg-successBg shadow-subtle",
              showIncorrect && "border-errorBorder bg-errorBg",
              result && !showCorrect && !showIncorrect && "border-border bg-paper/90",
              disabled && "cursor-default",
            )}
          >
            {exerciseType !== "vrai_faux" && (
              <span
                className={cn(
                  "mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full border text-xs font-semibold transition-colors duration-200",
                  !result &&
                    (isSelected
                      ? "border-accent bg-accent text-paper"
                      : "border-border text-muted"),
                  showCorrect && "border-successBorder bg-card text-pine",
                  showIncorrect && "border-errorBorder bg-card text-error",
                  result && !showCorrect && !showIncorrect && "border-border text-muted",
                )}
              >
                {choice.id.toUpperCase()}
              </span>
            )}
            <span
              className={cn(
                "min-w-0 flex-1 text-sm leading-7 text-ink",
                exerciseType === "vrai_faux" && "font-semibold",
              )}
            >
              {choice.label}
            </span>
            {showCorrect ? (
              <span
                aria-hidden="true"
                className="animate-feedback-icon mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-card text-pine"
              >
                <StatusGlyph tone="success" />
              </span>
            ) : showIncorrect ? (
              <span
                aria-hidden="true"
                className="animate-feedback-icon mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-card text-error"
              >
                <StatusGlyph tone="error" />
              </span>
            ) : null}
          </button>
        );
      })}
    </div>
  );
}
