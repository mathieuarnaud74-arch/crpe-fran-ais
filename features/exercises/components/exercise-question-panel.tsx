import { Mocca } from "@/components/mascot/mocca";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { Textarea } from "@/components/ui/textarea";
import { ExerciseTimer } from "@/features/exercises/components/exercise-timer";
import { HighlightPropositionsInput } from "@/features/exercises/components/highlight-propositions-input";
import { TriCategoriesInput } from "@/features/exercises/components/tri-categories-input";
import { getAnswerValidationRule } from "@/features/exercises/shared/evaluation";
import { EXERCISE_TYPE_LABELS, SUBDOMAIN_LABELS } from "@/lib/constants";
import { cn } from "@/lib/utils";
import type { ExerciseMode, ExerciseRecord } from "@/types/domain";
import type { SessionResult } from "./exercise-reducer";
import { ExerciseChoiceList, getExpectedChoiceId } from "./exercise-choice-list";
import { ExerciseFeedback } from "./exercise-feedback";

type ExerciseQuestionPanelProps = {
  question: ExerciseRecord;
  result: SessionResult | undefined;
  questionIndex: number;
  questionCount: number;
  answeredCount: number;
  draftAnswer: string;
  onDraftChange: (value: string) => void;
  triResetKey: number;
  mode: ExerciseMode;
  timerDuration: number;
  disabledReason: string | null;
  consecutiveCorrect: number;
  streakCelebration: number | null;
  showFullExplanation: boolean;
  onToggleExplanation: () => void;
  feedbackRef: React.RefObject<HTMLDivElement | null>;
  canGoPrevious: boolean;
  onSubmit: () => void;
  onNext: () => void;
  onPrevious: () => void;
  onRetry: () => void;
  onTimerComplete: () => void;
  onTimerWarning: () => void;
};

function getMoccaEncouragement(
  result: SessionResult | undefined,
  questionCount: number,
  answeredCount: number,
  consecutiveCorrect: number,
): string | null {
  if (result) return null;
  const remaining = questionCount - answeredCount;
  if (remaining === 1) return "Derni\u00e8re question, donnez tout !";
  if (remaining === 2) return "Plus que 2 questions, vous y \u00eates presque !";
  if (remaining === 3) return "Plus que 3 ! La fin est proche.";
  if (consecutiveCorrect >= 5) return "S\u00e9rie en or ! Continuez comme \u00e7a.";
  if (consecutiveCorrect >= 3) return "Vous \u00eates en forme ! Continuez.";
  if (answeredCount === Math.floor(questionCount / 2) && answeredCount > 0) {
    return "Mi-parcours ! Vous avancez bien.";
  }
  return null;
}

export function ExerciseQuestionPanel({
  question,
  result,
  questionIndex,
  questionCount,
  answeredCount,
  draftAnswer,
  onDraftChange,
  triResetKey,
  mode,
  timerDuration,
  disabledReason,
  consecutiveCorrect,
  streakCelebration,
  showFullExplanation,
  onToggleExplanation,
  feedbackRef,
  canGoPrevious,
  onSubmit,
  onNext,
  onPrevious,
  onRetry,
  onTimerComplete,
  onTimerWarning,
}: ExerciseQuestionPanelProps) {
  const moccaEncouragement = getMoccaEncouragement(result, questionCount, answeredCount, consecutiveCorrect);
  const isLastQuestion = questionIndex === questionCount - 1;
  const validationHint =
    question.expected_answer.mode === "text"
      ? getAnswerValidationRule(question.exercise_type)
      : null;
  const expectedChoiceId = getExpectedChoiceId(question.expected_answer);
  const inputDisabled = Boolean(disabledReason) || Boolean(result);

  return (
    <Panel className="border-border bg-card">
      {streakCelebration !== null && (
        <div className="animate-score-reveal mb-4 flex items-center gap-3 rounded-[1.25rem] border border-accentSecondary/30 bg-accentSecondarySoft px-4 py-3">
          <Mocca variant="happy" size="sm" className="shrink-0" />
          <p className="text-sm font-semibold text-accentSecondaryDark">
            {streakCelebration >= 10
              ? "\uD83C\uDF1F Incroyable ! 10 bonnes r\u00e9ponses cons\u00e9cutives !"
              : "\uD83D\uDD25 5 bonnes r\u00e9ponses d\u2019affil\u00e9e ! Tu g\u00e8res !"}
          </p>
        </div>
      )}

      {moccaEncouragement && !result && (
        <div className="animate-question-stage mb-4 flex items-center gap-2.5 rounded-xl border border-accent/15 bg-accent/5 px-4 py-2.5">
          <Mocca variant={consecutiveCorrect >= 3 ? "happy" : "neutral"} size="sm" className="shrink-0" />
          <p className="text-sm font-medium text-accent">{moccaEncouragement}</p>
        </div>
      )}

      <div key={question.id} className="animate-question-stage space-y-6">
        <div className="flex flex-wrap items-center justify-between gap-3">
          <div className="flex flex-wrap items-center gap-3">
            <Badge>{SUBDOMAIN_LABELS[question.subdomain]}</Badge>
            <Badge>{EXERCISE_TYPE_LABELS[question.exercise_type]}</Badge>
            {mode === "timed" && <Badge tone="accent">Chrono</Badge>}
          </div>
          {mode === "timed" && !result && (
            <ExerciseTimer
              key={question.id}
              duration={timerDuration}
              isPlaying={!result}
              size={60}
              onComplete={onTimerComplete}
              onWarning={onTimerWarning}
            />
          )}
        </div>

        <div>
          <p className="text-sm font-semibold uppercase tracking-[0.14em] text-muted">
            Question {questionIndex + 1}
          </p>
          <h2 className="mt-3 break-words font-serif text-2xl font-semibold text-ink sm:text-3xl">
            {question.instruction}
          </h2>
          {question.support_text ? (
            <div className="mt-5 rounded-[1.5rem] border border-border bg-paper px-5 py-5 text-sm leading-7 text-muted">
              {question.support_text}
            </div>
          ) : null}
        </div>

        {question.exercise_type === "surlignage_propositions" &&
        question.expected_answer.mode === "highlight_groups" ? (
          <HighlightPropositionsInput
            key={`${question.id}-${triResetKey}`}
            segments={question.choices ?? []}
            groups={question.expected_answer.groups}
            onChange={onDraftChange}
            result={result}
            expectedMapping={question.expected_answer.mapping}
            disabled={inputDisabled}
          />
        ) : question.exercise_type === "tri_categories" &&
          question.expected_answer.mode === "categorization" ? (
          <TriCategoriesInput
            key={`${question.id}-${triResetKey}`}
            items={question.choices ?? []}
            categories={question.expected_answer.categories}
            onChange={onDraftChange}
            result={result}
            expectedMapping={question.expected_answer.mapping}
            disabled={inputDisabled}
          />
        ) : question.choices ? (
          <ExerciseChoiceList
            choices={question.choices}
            exerciseType={question.exercise_type}
            expectedChoiceId={expectedChoiceId}
            draftAnswer={draftAnswer}
            onSelect={onDraftChange}
            result={result}
            disabled={inputDisabled}
          />
        ) : (
          <label className="block space-y-2">
            <span className="text-sm font-semibold text-ink">Votre r&eacute;ponse</span>
            <Textarea
              value={draftAnswer}
              onChange={(event) => onDraftChange(event.target.value)}
              onKeyDown={(e) => {
                if ((e.ctrlKey || e.metaKey) && e.key === "Enter") {
                  e.preventDefault();
                  if (draftAnswer.trim()) onSubmit();
                }
              }}
              disabled={inputDisabled}
              rows={4}
              className="leading-7"
              placeholder={"Saisissez votre r\u00e9ponse (Ctrl+Entr\u00e9e pour valider)"}
            />
            {validationHint ? (
              <p className="text-xs leading-6 text-muted">{validationHint}</p>
            ) : null}
          </label>
        )}

        {disabledReason ? (
          <div className="rounded-[1.25rem] border border-border bg-secondary px-4 py-4 text-sm leading-7 text-ink">
            {disabledReason}
          </div>
        ) : null}

        <div ref={feedbackRef} aria-live="polite" aria-atomic="true">
          {result ? (
            <ExerciseFeedback
              result={result}
              question={question}
              questionIndex={questionIndex}
              consecutiveCorrect={consecutiveCorrect}
              showFullExplanation={showFullExplanation}
              onToggleExplanation={onToggleExplanation}
            />
          ) : null}
        </div>

        <div className="flex flex-col-reverse gap-3 border-t border-border pt-4 sm:flex-row sm:flex-wrap sm:items-center sm:justify-between">
          <Button
            type="button"
            variant="ghost"
            disabled={!canGoPrevious}
            onClick={onPrevious}
            className="w-full sm:w-auto"
          >
            Question pr&eacute;c&eacute;dente
          </Button>
          <div className="flex flex-col gap-3 sm:flex-row sm:flex-wrap">
            {!result ? (
              <Button
                type="button"
                disabled={!draftAnswer.trim() || Boolean(disabledReason)}
                onClick={onSubmit}
                className="w-full sm:w-auto"
              >
                Corriger cette question
              </Button>
            ) : result.isCorrect ? (
              <Button type="button" onClick={onNext} className="w-full sm:w-auto">
                {isLastQuestion
                  ? "Terminer la s\u00e9rie"
                  : "Question suivante"}
              </Button>
            ) : (
              <>
                <Button type="button" variant="secondary" onClick={onRetry} className="w-full sm:w-auto">
                  R&eacute;essayer
                </Button>
                <Button type="button" onClick={onNext} className="w-full sm:w-auto">
                  {isLastQuestion
                    ? "Terminer la s\u00e9rie"
                    : "Passer \u00e0 la suivante"}
                </Button>
              </>
            )}
          </div>
        </div>
      </div>
    </Panel>
  );
}
