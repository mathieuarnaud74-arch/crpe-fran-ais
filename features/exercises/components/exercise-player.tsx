"use client";

import { useCallback, useEffect, useMemo, useReducer, useRef } from "react";
import { toast } from "sonner";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
import { Confetti } from "@/components/ui/confetti";
import {
  buildExpectedAnswerLabel,
  evaluateExerciseAnswer,
} from "@/features/exercises/shared/evaluation";
import { useAttemptSubmit } from "@/features/exercises/hooks/use-attempt-submit";
import { SUBDOMAIN_LABELS } from "@/lib/constants";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { calculateXpEarned } from "@/lib/xp";
import type { RevisionSession, ExerciseMode } from "@/types/domain";

import { exerciseReducer, createInitialState } from "./exercise-reducer";
import { ExerciseXpHeader } from "./exercise-xp-header";
import { ExerciseSessionHeader } from "./exercise-session-header";
import { ExerciseResultsPanel } from "./exercise-results-panel";
import { ExerciseQuestionPanel } from "./exercise-question-panel";

type ExercisePlayerProps = {
  session: RevisionSession;
  disabledReason?: string | null;
  nextSession?: { id: string; title: string } | null;
  mode?: ExerciseMode;
  timerDuration?: number;
  initialXp?: number;
  onNewSession?: () => void;
};

export function ExercisePlayer({
  session,
  disabledReason = null,
  nextSession = null,
  mode = "standard",
  timerDuration = 60,
  initialXp = 0,
  onNewSession,
}: ExercisePlayerProps) {
  const [state, dispatch] = useReducer(exerciseReducer, initialXp, createInitialState);
  const consecutiveCorrectRef = useRef(0);
  const prevResultsCount = useRef(0);
  const lastSubmitTime = useRef(0);
  const timerFiredRef = useRef(false);
  const containerRef = useRef<HTMLDivElement>(null);
  const feedbackRef = useRef<HTMLDivElement>(null);
  const pendingXpRef = useRef(0);
  const { playSound } = useGameSounds();
  const { submit: submitAttempt } = useAttemptSubmit({
    onLevelUp: (newLevel) => {
      playSound("levelUp");
      toast.success(`🎉 Niveau ${newLevel} atteint !`, { duration: 3000 });
    },
    onError: () => {
      dispatch({ type: "ROLLBACK_XP", xp: pendingXpRef.current });
    },
  });

  const {
    currentIndex, draftAnswer, results, showFullExplanation, showSessionDetails,
    expandedReviewCard, triResetKey, consecutiveCorrect, showConfetti,
    streakCelebration, sessionXp, lastXpEarned, xpTrigger, runningXp, questionStartTime,
  } = state;

  const currentQuestion = session.questions[currentIndex];
  const currentResult = currentQuestion ? results[currentQuestion.id] : undefined;
  const answeredCount = Object.keys(results).length;
  const completed = answeredCount === session.questions.length;
  const score = Object.values(results).filter((r) => r.isCorrect).length;
  const incorrectCount = answeredCount - score;
  const remainingCount = session.questionCount - answeredCount;
  const correctPercent = (score / session.questionCount) * 100;
  const incorrectPercent = (incorrectCount / session.questionCount) * 100;

  const weakAreas = useMemo(() => {
    const incorrectQuestions = session.questions.filter((q) => !results[q.id]?.isCorrect);
    const groups = new Map<string, number>();
    for (const q of incorrectQuestions) {
      const label = SUBDOMAIN_LABELS[q.subdomain] ?? q.subdomain;
      groups.set(label, (groups.get(label) ?? 0) + 1);
    }
    return Array.from(groups.entries()).map(([label, count]) => ({ label, count }));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [results, session.id]);

  useEffect(() => {
    dispatch({ type: "TICK_QUESTION_START" });
    timerFiredRef.current = false;
  }, [currentQuestion?.id]);

  useEffect(() => {
    if (completed) scrollToContainer();
  }, [completed]);

  useEffect(() => {
    const currentCount = Object.keys(results).length;
    if (currentCount <= prevResultsCount.current) {
      prevResultsCount.current = currentCount;
      return;
    }
    prevResultsCount.current = currentCount;

    const orderedResults = session.questions
      .filter((q) => results[q.id])
      .map((q) => results[q.id]);
    const lastResult = orderedResults[orderedResults.length - 1];

    let celebrationTimer: ReturnType<typeof setTimeout> | null = null;

    if (lastResult?.isCorrect) {
      consecutiveCorrectRef.current++;
      const newStreak = consecutiveCorrectRef.current;
      dispatch({ type: "SET_CONSECUTIVE_CORRECT", value: newStreak });
      if (newStreak === 5 || newStreak === 10) {
        dispatch({ type: "SET_STREAK_CELEBRATION", streak: newStreak });
        playSound("streak");
        celebrationTimer = setTimeout(() => dispatch({ type: "SET_STREAK_CELEBRATION", streak: null }), 2500);
      }
      playSound("correct");
    } else {
      consecutiveCorrectRef.current = 0;
      dispatch({ type: "SET_CONSECUTIVE_CORRECT", value: 0 });
      if (lastResult) playSound("incorrect");
    }

    if (currentCount === session.questionCount) {
      const finalScore = Object.values(results).filter((r) => r.isCorrect).length;
      const finalPercent = (finalScore / session.questionCount) * 100;
      if (finalPercent >= MASTERY_THRESHOLD) {
        dispatch({ type: "SET_CONFETTI", show: true });
        playSound("streak");
      }
      if (finalPercent === 100) playSound("levelUp");
    }

    return () => {
      if (celebrationTimer) clearTimeout(celebrationTimer);
    };
    // session.id is stable; session.questions is an array recreated each render
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [results, session.id, session.questionCount, playSound]);

  const handleToggleReviewCard = useCallback((id: string) => {
    dispatch({ type: "TOGGLE_REVIEW_CARD", questionId: id });
  }, []);

  const resetSession = useCallback(() => {
    dispatch({ type: "RESET_SESSION" });
    consecutiveCorrectRef.current = 0;
    prevResultsCount.current = 0;
    scrollToContainer();
  }, []);

  if (!currentQuestion) return null;

  function scrollToContainer() {
    setTimeout(() => {
      containerRef.current?.scrollIntoView({ behavior: "smooth", block: "start" });
    }, 80);
  }

  function scrollToFeedback() {
    setTimeout(() => {
      feedbackRef.current?.scrollIntoView({ behavior: "smooth", block: "nearest" });
    }, 150);
  }

  function submitCurrentQuestion() {
    if (!draftAnswer.trim()) return;
    lastSubmitTime.current = Date.now();

    const evaluation = evaluateExerciseAnswer(currentQuestion, draftAnswer);
    const timeSpentMs = Date.now() - questionStartTime;
    const streak = evaluation.isCorrect ? consecutiveCorrectRef.current : 0;
    const xp = calculateXpEarned(evaluation.isCorrect, streak, timeSpentMs, mode);

    dispatch({
      type: "SUBMIT_ANSWER",
      questionId: currentQuestion.id,
      result: {
        answer: draftAnswer,
        isCorrect: evaluation.isCorrect,
        reason: evaluation.reason,
        expectedAnswerLabel: evaluation.expectedAnswerLabel,
        validationRule: evaluation.validationRule,
      },
      xp,
    });

    scrollToFeedback();
    pendingXpRef.current = xp;
    submitAttempt({
      exerciseId: currentQuestion.id,
      answer: draftAnswer,
      sessionId: session.id,
      timeSpentMs,
      exerciseMode: mode,
      streak,
    });
  }

  function goToNextQuestion() {
    if (Date.now() - lastSubmitTime.current < 600) return;
    if (currentIndex < session.questions.length - 1) {
      const nextIdx = currentIndex + 1;
      dispatch({
        type: "GO_TO_NEXT",
        nextIndex: nextIdx,
        draftAnswer: results[session.questions[nextIdx].id]?.answer ?? "",
      });
      scrollToContainer();
    } else {
      const firstUnansweredIndex = session.questions.findIndex((q) => !results[q.id]);
      if (firstUnansweredIndex !== -1) {
        dispatch({ type: "GO_TO_NEXT", nextIndex: firstUnansweredIndex, draftAnswer: "" });
        scrollToContainer();
      }
    }
  }

  function goToPreviousQuestion() {
    if (currentIndex > 0) {
      const prevIdx = currentIndex - 1;
      dispatch({
        type: "GO_TO_PREVIOUS",
        prevIndex: prevIdx,
        draftAnswer: results[session.questions[prevIdx].id]?.answer ?? "",
      });
      scrollToContainer();
    }
  }

  function retryCurrentQuestion() {
    dispatch({ type: "RETRY_QUESTION", questionId: currentQuestion.id });
  }

  function handleTimerComplete() {
    if (timerFiredRef.current) return;
    timerFiredRef.current = true;
    if (currentResult) return;
    if (draftAnswer.trim()) {
      submitCurrentQuestion();
    } else {
      dispatch({
        type: "TIMER_TIMEOUT",
        questionId: currentQuestion.id,
        expectedAnswerLabel: buildExpectedAnswerLabel(
          currentQuestion.expected_answer,
          currentQuestion.choices,
        ),
      });
      playSound("incorrect");
      consecutiveCorrectRef.current = 0;
      const capturedIndex = currentIndex;
      setTimeout(() => {
        dispatch({
          type: "TIMER_ADVANCE",
          fromIndex: capturedIndex,
          maxIndex: session.questions.length - 1,
        });
        scrollToContainer();
      }, 800);
    }
  }

  const canGoPrevious =
    currentIndex > 0 &&
    session.questions.slice(0, currentIndex).some((q) => results[q.id]);

  return (
    <div ref={containerRef} className="scroll-mt-20 space-y-6">
      <Confetti trigger={showConfetti} />

      <ExerciseXpHeader
        runningXp={runningXp}
        lastXpEarned={lastXpEarned}
        xpTrigger={xpTrigger}
        sessionXp={sessionXp}
      />

      <ExerciseSessionHeader
        session={session}
        currentIndex={currentIndex}
        answeredCount={answeredCount}
        score={score}
        incorrectCount={incorrectCount}
        correctPercent={correctPercent}
        incorrectPercent={incorrectPercent}
        consecutiveCorrect={consecutiveCorrect}
        completed={completed}
      />

      {completed ? (
        <ExerciseResultsPanel
          session={session}
          results={results}
          score={score}
          correctPercent={correctPercent}
          weakAreas={weakAreas}
          expandedReviewCard={expandedReviewCard}
          onToggleReviewCard={handleToggleReviewCard}
          onResetSession={resetSession}
          nextSession={nextSession}
          onNewSession={onNewSession}
        />
      ) : (
        <ExerciseQuestionPanel
          question={currentQuestion}
          result={currentResult}
          questionIndex={currentIndex}
          questionCount={session.questionCount}
          answeredCount={answeredCount}
          draftAnswer={draftAnswer}
          onDraftChange={(v) => dispatch({ type: "SET_DRAFT", value: v })}
          triResetKey={triResetKey}
          mode={mode}
          timerDuration={timerDuration}
          disabledReason={disabledReason}
          consecutiveCorrect={consecutiveCorrect}
          streakCelebration={streakCelebration}
          showFullExplanation={showFullExplanation}
          onToggleExplanation={() => dispatch({ type: "TOGGLE_EXPLANATION" })}
          feedbackRef={feedbackRef}
          canGoPrevious={canGoPrevious}
          onSubmit={submitCurrentQuestion}
          onNext={goToNextQuestion}
          onPrevious={goToPreviousQuestion}
          onRetry={retryCurrentQuestion}
          onTimerComplete={handleTimerComplete}
          onTimerWarning={() => playSound("timerWarning")}
        />
      )}
    </div>
  );
}
