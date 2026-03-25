"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { LazyMotion, domAnimation, m, AnimatePresence, useMotionValue, useTransform } from "framer-motion";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
import { Button, ButtonLink } from "@/components/ui/button";
import { Confetti } from "@/components/ui/confetti";
import { Mocca } from "@/components/mascot/mocca";
import { Panel } from "@/components/ui/panel";
import { XpBar } from "@/components/ui/xp-bar";
import { XpPopup } from "@/components/ui/xp-popup";
import { useAttemptSubmit } from "@/features/exercises/hooks/use-attempt-submit";
import { evaluateExerciseAnswer } from "@/features/exercises/shared/evaluation";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { cn } from "@/lib/utils";
import { calculateXpEarned, getXpForNextLevel } from "@/lib/xp";
import type { RevisionSession } from "@/types/domain";

type SwipePlayerProps = {
  session: RevisionSession;
  initialXp?: number;
  nextSession?: { id: string; title: string } | null;
};

type SwipeResult = {
  questionId: string;
  isCorrect: boolean;
  userAnswer: string;
  expectedAnswer: string;
};

export function SwipePlayer({ session, initialXp = 0, nextSession = null }: SwipePlayerProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [results, setResults] = useState<SwipeResult[]>([]);
  const [feedback, setFeedback] = useState<"correct" | "incorrect" | null>(null);
  const [showConfetti, setShowConfetti] = useState(false);
  const [sessionXp, setSessionXp] = useState(0);
  const [lastXpEarned, setLastXpEarned] = useState(0);
  const [xpTrigger, setXpTrigger] = useState(0);
  const [runningXp, setRunningXp] = useState(initialXp);
  const [consecutiveCorrect, setConsecutiveCorrect] = useState(0);
  const [lastSwipeDirection, setLastSwipeDirection] = useState<"left" | "right">("right");
  const questionStartRef = useRef(Date.now());
  const isProcessingRef = useRef(false);
  const animationDoneRef = useRef(false);
  const networkDoneRef = useRef(false);
  const { playSound } = useGameSounds();
  const { submit: submitAttempt } = useAttemptSubmit({
    silent: true,
    onSettled: () => {
      networkDoneRef.current = true;
      if (animationDoneRef.current) isProcessingRef.current = false;
    },
  });

  const completed = currentIndex >= session.questions.length;
  const currentQuestion = session.questions[currentIndex];
  const score = results.filter((r) => r.isCorrect).length;
  const correctPercent = results.length > 0 ? (score / results.length) * 100 : 0;

  const x = useMotionValue(0);
  const rotate = useTransform(x, [-200, 200], [-15, 15]);
  const bgColor = useTransform(x, [-200, 0, 200], [
    "rgba(220, 38, 38, 0.15)",
    "rgba(0,0,0,0)",
    "rgba(34, 197, 94, 0.15)",
  ]);

  // Reset x position when question changes to prevent stale drag offset
  useEffect(() => {
    x.set(0);
  }, [currentIndex, x]);

  const handleSwipe = useCallback(
    (answer: "true" | "false") => {
      if (!currentQuestion || completed || isProcessingRef.current) return;
      isProcessingRef.current = true;
      animationDoneRef.current = false;
      networkDoneRef.current = false;

      setLastSwipeDirection(answer === "true" ? "right" : "left");

      let evaluation: { isCorrect: boolean; reason?: string };
      try {
        evaluation = evaluateExerciseAnswer(currentQuestion, answer);
      } catch {
        evaluation = { isCorrect: false };
      }
      const timeSpentMs = Date.now() - questionStartRef.current;
      const streak = evaluation.isCorrect ? consecutiveCorrect : 0;
      const xp = calculateXpEarned(evaluation.isCorrect, streak, timeSpentMs, "swipe", 60_000);

      const expectedValue = currentQuestion.expected_answer.mode === "boolean"
        ? String(currentQuestion.expected_answer.value)
        : "";

      setResults((prev) => [
        ...prev,
        {
          questionId: currentQuestion.id,
          isCorrect: evaluation.isCorrect,
          userAnswer: answer === "true" ? "Vrai" : "Faux",
          expectedAnswer: expectedValue === "true" ? "Vrai" : "Faux",
        },
      ]);

      setSessionXp((prev) => prev + xp);
      setLastXpEarned(xp);
      setXpTrigger((t) => t + 1);
      setRunningXp((prev) => prev + xp);

      if (evaluation.isCorrect) {
        setConsecutiveCorrect((c) => c + 1);
        playSound("correct");
      } else {
        setConsecutiveCorrect(0);
        playSound("incorrect");
      }

      setFeedback(evaluation.isCorrect ? "correct" : "incorrect");
      setTimeout(() => {
        setFeedback(null);
        setCurrentIndex((i) => i + 1);
        questionStartRef.current = Date.now();
        animationDoneRef.current = true;
        if (networkDoneRef.current) isProcessingRef.current = false;
      }, 600);

      // Persist to server
      submitAttempt({
        exerciseId: currentQuestion.id,
        answer,
        sessionId: session.id,
        timeSpentMs,
        exerciseMode: "swipe",
        streak,
      });
    },
    [currentQuestion, completed, consecutiveCorrect, playSound, session.id, submitAttempt],
  );

  useEffect(() => {
    if (completed && correctPercent >= MASTERY_THRESHOLD) {
      setShowConfetti(true);
    }
  }, [completed, correctPercent]);

  const xpInfo = getXpForNextLevel(runningXp);

  if (completed) {
    return (
      <div className="space-y-6">
        <Confetti trigger={showConfetti} />
        <Panel className="border-border bg-card">
          <div className="flex items-start gap-5">
            <Mocca
              variant={correctPercent >= 80 ? "happy" : correctPercent >= 50 ? "neutral" : "grumpy"}
              size="xl"
              className="hidden shrink-0 sm:block"
            />
            <div className="space-y-4">
              <h2 className="animate-score-reveal font-serif text-2xl font-semibold text-ink sm:text-3xl">
                Score : {score} / {session.questions.length}
              </h2>
              <p className="text-sm text-muted">
                +{sessionXp} XP gagnés en mode Swipe
              </p>
              <XpBar
                currentLevel={xpInfo.currentLevel}
                xpInCurrentLevel={xpInfo.xpInCurrentLevel}
                xpNeededForNext={xpInfo.xpNeededForNext}
                progress={xpInfo.progress}
                totalXp={runningXp}
                size="sm"
              />

              {/* Review */}
              <div className="space-y-2 pt-4">
                {results.map((r, i) => (
                  <div
                    key={r.questionId}
                    className={cn(
                      "flex items-center gap-2 rounded-inner border px-3 py-2 text-sm",
                      r.isCorrect ? "border-successBorder bg-successBg" : "border-errorBorder bg-errorBg",
                    )}
                  >
                    <span className="font-semibold text-ink">Q{i + 1}</span>
                    <span className={r.isCorrect ? "text-pine" : "text-error"}>
                      {r.isCorrect ? "✓" : `✗ (${r.userAnswer} → ${r.expectedAnswer})`}
                    </span>
                  </div>
                ))}
              </div>

              <div className="flex flex-wrap gap-3 pt-4">
                {nextSession && (
                  <ButtonLink href={`/exercices/${nextSession.id}`}>
                    Série suivante →
                  </ButtonLink>
                )}
                <Button
                  type="button"
                  variant="secondary"
                  onClick={() => {
                    setResults([]);
                    setCurrentIndex(0);
                    setSessionXp(0);
                    setConsecutiveCorrect(0);
                    setShowConfetti(false);
                    questionStartRef.current = Date.now();
                  }}
                >
                  Recommencer
                </Button>
              </div>
            </div>
          </div>
        </Panel>
      </div>
    );
  }

  return (
    <LazyMotion features={domAnimation}>
    <div className="space-y-6">
      {/* XP Bar */}
      <div className="relative">
        <XpBar
          currentLevel={xpInfo.currentLevel}
          xpInCurrentLevel={xpInfo.xpInCurrentLevel}
          xpNeededForNext={xpInfo.xpNeededForNext}
          progress={xpInfo.progress}
          totalXp={runningXp}
          size="sm"
        />
        <XpPopup xp={lastXpEarned} trigger={xpTrigger} />
      </div>

      {/* Progress */}
      <div className="flex items-center justify-between text-sm text-muted">
        <span>Question {currentIndex + 1} / {session.questions.length}</span>
        <span>{score} {score > 1 ? "correctes" : "correcte"}</span>
      </div>

      {/* Swipe area */}
      <div className="relative flex min-h-[320px] touch-none items-center justify-center">
        {/* Direction labels */}
        <div className="pointer-events-none absolute inset-x-0 top-2 flex justify-between px-6 text-sm font-bold">
          <span className="rounded-pill bg-errorBg px-3 py-1 text-error">← FAUX</span>
          <span className="rounded-pill bg-successBg px-3 py-1 text-pine">VRAI →</span>
        </div>

        {/* Feedback flash */}
        <AnimatePresence>
          {feedback && (
            <m.div
              initial={{ opacity: 0, scale: 0.8 }}
              animate={{ opacity: 1, scale: 1 }}
              exit={{ opacity: 0 }}
              className={cn(
                "absolute inset-0 z-20 flex items-center justify-center rounded-panel text-5xl font-bold",
                feedback === "correct" ? "bg-successBg/80 text-pine" : "bg-errorBg/80 text-error",
              )}
            >
              {feedback === "correct" ? "✓" : "✗"}
            </m.div>
          )}
        </AnimatePresence>

        {/* Card stack */}
        <AnimatePresence mode="popLayout">
          {currentQuestion && (
            <m.div
              key={currentQuestion.id}
              style={{ x, rotate, backgroundColor: bgColor }}
              drag="x"
              dragConstraints={{ left: 0, right: 0 }}
              dragElastic={0.8}
              onDragEnd={(_, info) => {
                if (info.offset.x > 100) {
                  handleSwipe("true");
                } else if (info.offset.x < -100) {
                  handleSwipe("false");
                }
              }}
              initial={{ scale: 0.95, opacity: 0, x: 0 }}
              animate={{ scale: 1, opacity: 1, x: 0 }}
              exit={{ x: lastSwipeDirection === "right" ? 300 : -300, opacity: 0, rotate: lastSwipeDirection === "right" ? 15 : -15 }}
              transition={{ type: "spring", stiffness: 300, damping: 30 }}
              className="w-full max-w-lg cursor-grab rounded-panel border border-border bg-card p-8 shadow-elevated active:cursor-grabbing"
            >
              <p className="text-center font-serif text-xl font-semibold leading-8 text-ink sm:text-2xl">
                {currentQuestion.instruction}
              </p>
              {currentQuestion.support_text && (
                <p className="mt-4 rounded-inner border border-border bg-paper p-4 text-sm text-muted">
                  {currentQuestion.support_text}
                </p>
              )}
            </m.div>
          )}
        </AnimatePresence>
      </div>

      {/* Accessibility buttons */}
      <div className="flex justify-center gap-4">
        <Button
          type="button"
          variant="destructive"
          onClick={() => handleSwipe("false")}
          className="w-32"
          aria-label="Répondre Faux"
        >
          Faux
        </Button>
        <Button
          type="button"
          onClick={() => handleSwipe("true")}
          className="w-32 bg-pine text-white hover:bg-pine/90"
          aria-label="Répondre Vrai"
        >
          Vrai
        </Button>
      </div>
    </div>
    </LazyMotion>
  );
}
