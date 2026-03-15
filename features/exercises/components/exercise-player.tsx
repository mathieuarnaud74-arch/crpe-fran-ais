"use client";

import { useMemo, useState, useTransition } from "react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { Textarea } from "@/components/ui/textarea";
import { submitAttemptAction } from "@/features/exercises/server/actions";
import {
  evaluateExerciseAnswer,
  getAnswerValidationRule,
} from "@/features/exercises/shared/evaluation";
import {
  EXERCISE_TYPE_LABELS,
  SUBDOMAIN_LABELS,
  formatLevelLabel,
} from "@/lib/constants";
import { cn } from "@/lib/utils";
import { RevisionSession } from "@/types/domain";

type SessionResult = {
  answer: string;
  isCorrect: boolean;
  reason: "correct" | "incorrect" | "accent_only";
  expectedAnswerLabel: string;
  validationRule: string | null;
};

type ExercisePlayerProps = {
  session: RevisionSession;
  disabledReason?: string | null;
};

export function ExercisePlayer({
  session,
  disabledReason = null,
}: ExercisePlayerProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [draftAnswer, setDraftAnswer] = useState("");
  const [results, setResults] = useState<Record<string, SessionResult>>({});
  const [, startTransition] = useTransition();

  const currentQuestion = session.questions[currentIndex];
  const currentResult = currentQuestion ? results[currentQuestion.id] : undefined;
  const answeredCount = Object.keys(results).length;
  const completed = answeredCount === session.questions.length;
  const score = Object.values(results).filter((result) => result.isCorrect).length;
  const progressPercent = (answeredCount / session.questionCount) * 100;

  const weakAreas = useMemo(() => {
    const incorrectQuestions = session.questions.filter((question) => !results[question.id]?.isCorrect);
    return incorrectQuestions.map((question) => question.instruction);
  }, [results, session.questions]);

  if (!currentQuestion) {
    return null;
  }

  const validationHint =
    currentQuestion.expected_answer.mode === "text"
      ? getAnswerValidationRule(currentQuestion.exercise_type)
      : null;

  const expectedChoiceId = getExpectedChoiceId(currentQuestion.expected_answer);

  function submitCurrentQuestion() {
    if (!draftAnswer.trim()) {
      return;
    }

    const evaluation = evaluateExerciseAnswer(currentQuestion, draftAnswer);

    setResults((previous) => ({
      ...previous,
      [currentQuestion.id]: {
        answer: draftAnswer,
        isCorrect: evaluation.isCorrect,
        reason: evaluation.reason,
        expectedAnswerLabel: evaluation.expectedAnswerLabel,
        validationRule: evaluation.validationRule,
      },
    }));

    startTransition(async () => {
      const formData = new FormData();
      formData.append("exerciseId", currentQuestion.id);
      formData.append("answer", draftAnswer);
      formData.append("sessionId", session.id);
      await submitAttemptAction({ status: "idle" }, formData);
    });
  }

  function goToNextQuestion() {
    if (currentIndex < session.questions.length - 1) {
      const nextQuestion = session.questions[currentIndex + 1];
      setCurrentIndex((index) => index + 1);
      setDraftAnswer(results[nextQuestion.id]?.answer ?? "");
    }
  }

  function goToPreviousQuestion() {
    if (currentIndex > 0) {
      const previousQuestion = session.questions[currentIndex - 1];
      setCurrentIndex((index) => index - 1);
      setDraftAnswer(results[previousQuestion.id]?.answer ?? "");
    }
  }

  function retryCurrentQuestion() {
    setResults((previous) => {
      const next = { ...previous };
      delete next[currentQuestion.id];
      return next;
    });
  }

  function resetSession() {
    setResults({});
    setCurrentIndex(0);
    setDraftAnswer("");
  }

  function renderFeedbackTitle() {
    if (!currentResult) {
      return null;
    }

    if (currentResult.isCorrect) {
      return "Bonne r\u00e9ponse.";
    }

    if (currentResult.reason === "accent_only") {
      return "R\u00e9ponse presque correcte.";
    }

    return "R\u00e9ponse \u00e0 reprendre.";
  }

  function renderFeedbackBody() {
    if (!currentResult || currentResult.isCorrect) {
      return null;
    }

    if (currentResult.reason === "accent_only") {
      return (
        <>
          <p className="mt-2">
            Le fond est bon, mais cet exercice d&apos;orthographe exige une graphie exacte avec les
            accents attendus.
          </p>
          <p className="mt-2">
            <span className="font-semibold">Forme attendue :</span>{" "}
            {currentResult.expectedAnswerLabel}
          </p>
        </>
      );
    }

    return (
      <p className="mt-2">
        <span className="font-semibold">R&eacute;ponse attendue :</span>{" "}
        {currentResult.expectedAnswerLabel}
      </p>
    );
  }

  return (
    <div className="space-y-6">
      <Panel className="border-border bg-card">
        <div className="flex flex-col gap-5 lg:flex-row lg:items-start lg:justify-between">
          <div className="space-y-3">
            <div className="flex flex-wrap items-center gap-2">
              <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"}>
                {session.access_tier === "premium" ? "Premium" : "Gratuit"}
              </Badge>
              <Badge>{formatLevelLabel(session.level)}</Badge>
              <Badge>{session.questionCount} questions</Badge>
            </div>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">{session.title}</h1>
              <p className="mt-3 max-w-3xl text-base leading-8 text-muted">{session.summary}</p>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                <span className="font-semibold text-ink">Objectif :</span> {session.objective}
              </p>
              <p className="mt-2 max-w-3xl text-sm leading-7 text-muted">{session.introduction}</p>
            </div>
          </div>
          <div className="min-w-[220px] rounded-[1.5rem] border border-border bg-paper px-5 py-4">
            <p className="text-sm font-semibold text-ink" id="progress-label">
              Progression de la s&eacute;rie
            </p>
            <div
              role="progressbar"
              aria-labelledby="progress-label"
              aria-valuenow={answeredCount}
              aria-valuemin={0}
              aria-valuemax={session.questionCount}
              className="mt-4 h-3 overflow-hidden rounded-full bg-secondary"
            >
              <div
                className={cn(
                  "h-3 rounded-full bg-accent transition-[width,filter,transform] duration-300 ease-out",
                  currentResult?.isCorrect && "animate-progress-success",
                  currentResult?.reason === "accent_only" && "animate-progress-soft",
                )}
                style={{ width: `${progressPercent}%` }}
              />
            </div>
            <div className="mt-4 flex items-center justify-between text-sm text-muted">
              <span>
                Question {Math.min(currentIndex + 1, session.questionCount)} / {session.questionCount}
              </span>
              <span>{session.estimatedMinutes} min</span>
            </div>
          </div>
        </div>
      </Panel>

      {completed ? (
        <Panel className="border-border bg-card">
          <div className="space-y-6">
            <div className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
              <div>
                <Badge tone={score === session.questionCount ? "success" : "accent"}>
                  S&eacute;rie termin&eacute;e
                </Badge>
                <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">
                  Score final : {score} / {session.questionCount}
                </h2>
                <p className="mt-3 max-w-2xl text-sm leading-7 text-muted">
                  Retrouvez ci-dessous les corrections compl&egrave;tes, les erreurs
                  fr&eacute;quentes et les points essentiels &agrave; retenir.
                </p>
              </div>
              <Button type="button" onClick={resetSession} variant="secondary">
                Recommencer la s&eacute;rie
              </Button>
            </div>

            <div className="grid gap-4 lg:grid-cols-2">
              <div className="space-y-4">
                <div className="rounded-[1.5rem] border border-border bg-paper p-5">
                  <h3 className="font-serif text-2xl font-semibold text-ink">Bilan de la s&eacute;rie</h3>
                  <p className="mt-3 text-sm leading-7 text-muted">
                    <span className="font-semibold text-ink">Comp&eacute;tence travaill&eacute;e :</span>{" "}
                    {session.completionSummary.skill}
                  </p>
                  <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                    {session.completionSummary.keyPoints.map((item) => (
                      <li key={item} className="rounded-xl border border-border bg-card px-4 py-3">
                        {item}
                      </li>
                    ))}
                  </ul>
                  <p className="mt-4 text-sm leading-7 text-muted">
                    <span className="font-semibold text-ink">Conseil de reprise :</span>{" "}
                    {session.completionSummary.retryAdvice}
                  </p>
                </div>
                <div className="rounded-[1.5rem] border border-border bg-paper p-5">
                  <h3 className="font-serif text-2xl font-semibold text-ink">Axes de reprise</h3>
                  {weakAreas.length === 0 ? (
                    <p className="mt-3 text-sm leading-7 text-muted">
                      Aucune erreur dans cette s&eacute;rie. Vous pouvez passer &agrave; une
                      s&eacute;rie plus exigeante.
                    </p>
                  ) : (
                    <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                      {weakAreas.map((item) => (
                        <li key={item} className="rounded-xl border border-border bg-card px-4 py-3">
                          {item}
                        </li>
                      ))}
                    </ul>
                  )}
                </div>
              </div>
              <div className="space-y-4">
                {session.questions.map((question, index) => (
                  <div key={question.id} className="rounded-[1.5rem] border border-border bg-paper p-5">
                    <div className="flex flex-wrap items-center gap-3">
                      <Badge tone={results[question.id]?.isCorrect ? "success" : "warning"}>
                        {results[question.id]?.isCorrect ? "Correct" : "\u00c0 revoir"}
                      </Badge>
                      <span className="text-sm font-medium text-muted">Question {index + 1}</span>
                    </div>
                    <p className="mt-4 text-base font-medium leading-7 text-ink">
                      {question.instruction}
                    </p>
                    {question.support_text ? (
                      <div className="mt-4 rounded-xl border border-border bg-card px-4 py-4 text-sm leading-7 text-muted">
                        {question.support_text}
                      </div>
                    ) : null}
                    <p className="mt-4 text-sm leading-7 text-muted">
                      <span className="font-semibold text-ink">Votre r&eacute;ponse :</span>{" "}
                      {results[question.id]?.answer}
                    </p>
                    <p className="mt-2 text-sm leading-7 text-muted">
                      <span className="font-semibold text-ink">Correction :</span>{" "}
                      {question.detailed_explanation}
                    </p>
                    {question.common_mistake ? (
                      <p className="mt-2 text-sm leading-7 text-muted">
                        <span className="font-semibold text-ink">Erreur fr&eacute;quente :</span>{" "}
                        {question.common_mistake}
                      </p>
                    ) : null}
                  </div>
                ))}
              </div>
            </div>
          </div>
        </Panel>
      ) : (
        <Panel className="border-border bg-card">
          <div key={currentQuestion.id} className="animate-question-stage space-y-6">
            <div className="flex flex-wrap items-center gap-3">
              <Badge>{SUBDOMAIN_LABELS[currentQuestion.subdomain]}</Badge>
              <Badge>{EXERCISE_TYPE_LABELS[currentQuestion.exercise_type]}</Badge>
            </div>
            <div>
              <p className="text-sm font-semibold uppercase tracking-[0.14em] text-muted">
                Question {currentIndex + 1}
              </p>
              <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">
                {currentQuestion.instruction}
              </h2>
              {currentQuestion.support_text ? (
                <div className="mt-5 rounded-[1.5rem] border border-border bg-paper px-5 py-5 text-sm leading-7 text-muted">
                  {currentQuestion.support_text}
                </div>
              ) : null}
            </div>

            {currentQuestion.choices ? (
              <div className="space-y-3">
                {currentQuestion.choices.map((choice) => {
                  const isSelected = draftAnswer === choice.id;
                  const isExpected = expectedChoiceId === choice.id;
                  const showCorrect = Boolean(currentResult) && isExpected;
                  const showIncorrect = Boolean(currentResult && isSelected && !currentResult.isCorrect);

                  return (
                    <button
                      key={choice.id}
                      type="button"
                      aria-pressed={isSelected}
                      disabled={Boolean(disabledReason) || Boolean(currentResult)}
                      onClick={() => setDraftAnswer(choice.id)}
                      className={cn(
                        "flex w-full items-start gap-3 rounded-[1.25rem] border px-4 py-4 text-left transition-all duration-200",
                        !currentResult &&
                          (isSelected
                            ? "border-accent bg-secondary"
                            : "border-border bg-paper hover:border-accent"),
                        showCorrect && "border-successBorder bg-successBg shadow-subtle",
                        showIncorrect && "border-errorBorder bg-errorBg",
                        currentResult &&
                          !showCorrect &&
                          !showIncorrect &&
                          "border-border bg-paper/90",
                        (disabledReason || currentResult) && "cursor-default",
                      )}
                    >
                      <span
                        className={cn(
                          "mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full border text-xs font-semibold transition-colors duration-200",
                          !currentResult &&
                            (isSelected
                              ? "border-accent bg-accent text-paper"
                              : "border-border text-muted"),
                          showCorrect && "border-successBorder bg-card text-pine",
                          showIncorrect && "border-errorBorder bg-card text-error",
                          currentResult &&
                            !showCorrect &&
                            !showIncorrect &&
                            "border-border text-muted",
                        )}
                      >
                        {choice.id.toUpperCase()}
                      </span>
                      <span className="min-w-0 flex-1 text-sm leading-7 text-ink">{choice.label}</span>
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
            ) : (
              <label className="block space-y-2">
                <span className="text-sm font-semibold text-ink">Votre r&eacute;ponse</span>
                <Textarea
                  value={draftAnswer}
                  onChange={(event) => setDraftAnswer(event.target.value)}
                  disabled={Boolean(disabledReason) || Boolean(currentResult)}
                  rows={4}
                  className="leading-7"
                  placeholder={"Saisissez votre r\u00e9ponse"}
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

            <div aria-live="polite" aria-atomic="true">
              {currentResult ? (
                <div
                  className={cn(
                    "relative overflow-hidden rounded-[1.5rem] border px-5 py-5 text-sm leading-7 transition-colors duration-200",
                    currentResult.isCorrect
                      ? "animate-feedback-success border-successBorder bg-successBg text-ink shadow-subtle"
                      : currentResult.reason === "accent_only"
                        ? "animate-feedback-soft border-warningBorder bg-warningBg text-ink"
                        : "animate-feedback-soft border-errorBorder bg-errorBg text-ink",
                  )}
                >
                  <div
                    aria-hidden="true"
                    className={cn(
                      "absolute inset-y-4 left-0 w-1 rounded-r-full",
                      currentResult.isCorrect
                        ? "bg-successBorder"
                        : currentResult.reason === "accent_only"
                          ? "bg-warningBorder"
                          : "bg-errorBorder",
                    )}
                  />
                  <div className="flex items-start gap-3">
                    <span
                      aria-hidden="true"
                      className={cn(
                        "mt-0.5 flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-card",
                        currentResult.isCorrect
                          ? "animate-feedback-icon text-pine"
                          : currentResult.reason === "accent_only"
                            ? "animate-feedback-icon text-warning"
                            : "animate-feedback-icon text-error",
                      )}
                    >
                      <StatusGlyph
                        tone={
                          currentResult.isCorrect
                            ? "success"
                            : currentResult.reason === "accent_only"
                              ? "warning"
                              : "error"
                        }
                      />
                    </span>
                    <div className="min-w-0 flex-1">
                      <p
                        className={cn(
                          "font-semibold",
                          currentResult.isCorrect
                            ? "text-pine"
                            : currentResult.reason === "accent_only"
                              ? "text-warning"
                              : "text-error",
                        )}
                      >
                        {renderFeedbackTitle()}
                      </p>
                      {renderFeedbackBody()}
                      <p className="mt-3">{currentQuestion.detailed_explanation}</p>
                      {currentResult.validationRule ? (
                        <p className="mt-2">
                          <span className="font-semibold">R&egrave;gle de validation :</span>{" "}
                          {currentResult.validationRule}
                        </p>
                      ) : null}
                      {currentQuestion.common_mistake ? (
                        <p className="mt-2">
                          <span className="font-semibold">Erreur fr&eacute;quente :</span>{" "}
                          {currentQuestion.common_mistake}
                        </p>
                      ) : null}
                    </div>
                  </div>
                </div>
              ) : null}
            </div>

            <div className="flex flex-wrap items-center justify-between gap-3 border-t border-border pt-4">
              <Button
                type="button"
                variant="ghost"
                disabled={currentIndex === 0}
                onClick={goToPreviousQuestion}
              >
                Question pr&eacute;c&eacute;dente
              </Button>
              <div className="flex flex-wrap gap-3">
                {!currentResult ? (
                  <Button
                    type="button"
                    disabled={!draftAnswer.trim() || Boolean(disabledReason)}
                    onClick={submitCurrentQuestion}
                  >
                    Corriger cette question
                  </Button>
                ) : currentResult.isCorrect ? (
                  <Button type="button" onClick={goToNextQuestion}>
                    {currentIndex === session.questions.length - 1
                      ? "Voir le r\u00e9capitulatif"
                      : "Question suivante"}
                  </Button>
                ) : (
                  <>
                    <Button type="button" variant="secondary" onClick={retryCurrentQuestion}>
                      R&eacute;essayer
                    </Button>
                    <Button type="button" onClick={goToNextQuestion}>
                      {currentIndex === session.questions.length - 1
                        ? "Voir le r\u00e9capitulatif"
                        : "Passer \u00e0 la suivante"}
                    </Button>
                  </>
                )}
              </div>
            </div>
          </div>
        </Panel>
      )}
    </div>
  );
}

function getExpectedChoiceId(expectedAnswer: RevisionSession["questions"][number]["expected_answer"]) {
  if (expectedAnswer.mode === "single_choice") {
    return expectedAnswer.value;
  }

  if (expectedAnswer.mode === "boolean") {
    return String(expectedAnswer.value);
  }

  return null;
}

function StatusGlyph({ tone }: { tone: "success" | "warning" | "error" }) {
  if (tone === "success") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
        <path d="M4.75 10.25 8.25 13.75 15.25 6.75" strokeLinecap="round" strokeLinejoin="round" />
      </svg>
    );
  }

  if (tone === "warning") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
        <path d="M10 6.25v4.5" strokeLinecap="round" />
        <circle cx="10" cy="13.75" r="0.8" fill="currentColor" stroke="none" />
      </svg>
    );
  }

  return (
    <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
      <path d="m6.5 6.5 7 7" strokeLinecap="round" />
      <path d="m13.5 6.5-7 7" strokeLinecap="round" />
    </svg>
  );
}
