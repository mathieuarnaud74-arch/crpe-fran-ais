"use client";

import { useCallback, useEffect, useRef, useState, useTransition } from "react";
import { motion, AnimatePresence } from "framer-motion";
import CountUp from "react-countup";
import { toast } from "sonner";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import { Confetti } from "@/components/ui/confetti";
import { Mocca } from "@/components/mascot/mocca";
import { Panel } from "@/components/ui/panel";
import { XpBar } from "@/components/ui/xp-bar";
import { submitAttemptAction } from "@/features/exercises/server/actions";
import { evaluateExerciseAnswer } from "@/features/exercises/shared/evaluation";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { cn } from "@/lib/utils";
import { calculateXpEarned, getXpForNextLevel } from "@/lib/xp";
import type { RevisionSession } from "@/types/domain";

type SprintPlayerProps = {
  session: RevisionSession;
  initialXp?: number;
  personalBest?: number | null;
  nextSession?: { id: string; title: string } | null;
};

type SprintResult = {
  questionId: string;
  isCorrect: boolean;
  timeMs: number;
};

export function SprintPlayer({
  session,
  initialXp = 0,
  personalBest = null,
  nextSession = null,
}: SprintPlayerProps) {
  const [phase, setPhase] = useState<"countdown" | "playing" | "done">("countdown");
  const [countdownValue, setCountdownValue] = useState(3);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [draftAnswer, setDraftAnswer] = useState("");
  const [results, setResults] = useState<SprintResult[]>([]);
  const [, startTransition] = useTransition();
  const [totalElapsedMs, setTotalElapsedMs] = useState(0);
  const [sessionXp, setSessionXp] = useState(0);
  const [runningXp, setRunningXp] = useState(initialXp);
  const [consecutiveCorrect, setConsecutiveCorrect] = useState(0);
  const [flash, setFlash] = useState<"correct" | "incorrect" | null>(null);
  const [showConfetti, setShowConfetti] = useState(false);
  const [isNewRecord, setIsNewRecord] = useState(false);
  const startTimeRef = useRef(0);
  const questionStartRef = useRef(0);
  const timerRef = useRef<ReturnType<typeof setInterval>>(undefined);
  const { playSound } = useGameSounds();

  const currentQuestion = session.questions[currentIndex];
  const score = results.filter((r) => r.isCorrect).length;
  const correctPercent = results.length > 0 ? (score / results.length) * 100 : 0;

  // Countdown
  useEffect(() => {
    if (phase !== "countdown") return;
    if (countdownValue === 0) {
      setPhase("playing");
      startTimeRef.current = Date.now();
      questionStartRef.current = Date.now();
      return;
    }
    const timer = setTimeout(() => setCountdownValue((v) => v - 1), 1000);
    return () => clearTimeout(timer);
  }, [phase, countdownValue]);

  // Timer
  useEffect(() => {
    if (phase !== "playing") return;
    timerRef.current = setInterval(() => {
      setTotalElapsedMs(Date.now() - startTimeRef.current);
    }, 100);
    return () => clearInterval(timerRef.current);
  }, [phase]);

  const formatTime = (ms: number) => {
    const s = Math.floor(ms / 1000);
    const m = Math.floor(s / 60);
    const rem = s % 60;
    const tenths = Math.floor((ms % 1000) / 100);
    return `${m}:${rem.toString().padStart(2, "0")}.${tenths}`;
  };

  const submitAnswer = useCallback(
    (answer: string) => {
      if (!currentQuestion || phase !== "playing") return;

      const evaluation = evaluateExerciseAnswer(currentQuestion, answer);
      const timeMs = Date.now() - questionStartRef.current;
      const streak = evaluation.isCorrect ? consecutiveCorrect : 0;
      const xp = calculateXpEarned(evaluation.isCorrect, streak, timeMs, "sprint");

      setResults((prev) => [...prev, { questionId: currentQuestion.id, isCorrect: evaluation.isCorrect, timeMs }]);
      setSessionXp((prev) => prev + xp);
      setRunningXp((prev) => prev + xp);

      if (evaluation.isCorrect) {
        setConsecutiveCorrect((c) => c + 1);
        playSound("correct");
      } else {
        setConsecutiveCorrect(0);
        playSound("incorrect");
      }

      setFlash(evaluation.isCorrect ? "correct" : "incorrect");

      // Persist
      startTransition(async () => {
        const formData = new FormData();
        formData.append("exerciseId", currentQuestion.id);
        formData.append("answer", answer);
        formData.append("sessionId", session.id);
        formData.append("timeSpentMs", String(timeMs));
        formData.append("exerciseMode", "sprint");
        formData.append("streak", String(streak));
        try {
          await submitAttemptAction({ status: "idle" }, formData);
        } catch {}
      });

      // Move to next question
      setTimeout(() => {
        setFlash(null);
        setDraftAnswer("");
        if (currentIndex + 1 >= session.questions.length) {
          clearInterval(timerRef.current);
          setTotalElapsedMs(Date.now() - startTimeRef.current);
          setPhase("done");
          const finalTime = Date.now() - startTimeRef.current;
          if (!personalBest || finalTime < personalBest) {
            setIsNewRecord(true);
            // Persist personal best to server
            fetch("/api/gamification/sprint-best", {
              method: "POST",
              headers: { "Content-Type": "application/json" },
              body: JSON.stringify({ timeMs: finalTime }),
            }).catch(() => {});
          }
        } else {
          setCurrentIndex((i) => i + 1);
          questionStartRef.current = Date.now();
        }
      }, 400);
    },
    [currentQuestion, phase, consecutiveCorrect, currentIndex, session, playSound, personalBest, startTransition],
  );

  useEffect(() => {
    if (phase === "done" && correctPercent >= MASTERY_THRESHOLD) {
      setShowConfetti(true);
    }
  }, [phase, correctPercent]);

  const xpInfo = getXpForNextLevel(runningXp);

  // Countdown screen
  if (phase === "countdown") {
    return (
      <div className="flex min-h-[400px] flex-col items-center justify-center gap-6">
        <Mocca variant="happy" size="xl" />
        <h2 className="font-serif text-2xl font-semibold text-ink">Mode Sprint</h2>
        <p className="text-sm text-muted">{session.questionCount} questions le plus vite possible</p>
        <AnimatePresence mode="wait">
          <motion.div
            key={countdownValue}
            initial={{ scale: 2, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            exit={{ scale: 0.5, opacity: 0 }}
            transition={{ duration: 0.3 }}
            className="font-serif text-7xl font-bold text-accent"
          >
            {countdownValue || "GO!"}
          </motion.div>
        </AnimatePresence>
      </div>
    );
  }

  // Done screen
  if (phase === "done") {
    return (
      <div className="space-y-6">
        <Confetti trigger={showConfetti} />
        <Panel className="border-border bg-card">
          <div className="space-y-6">
            <div className="flex items-start gap-5">
              <Mocca
                variant={correctPercent >= 80 ? "happy" : correctPercent >= 50 ? "neutral" : "grumpy"}
                size="xl"
                className="hidden shrink-0 sm:block"
              />
              <div className="space-y-4 flex-1">
                <h2 className="animate-score-reveal font-serif text-2xl font-semibold text-ink sm:text-3xl">
                  Sprint terminé !
                </h2>

                {isNewRecord && (
                  <motion.div
                    initial={{ scale: 0.8, opacity: 0 }}
                    animate={{ scale: 1, opacity: 1 }}
                    className="inline-flex items-center gap-2 rounded-pill bg-accentSecondarySoft px-4 py-2 text-sm font-bold text-accentSecondaryDark"
                  >
                    🏆 Nouveau record personnel !
                  </motion.div>
                )}

                <div className="grid grid-cols-2 gap-4 sm:grid-cols-4">
                  <div className="rounded-card border border-border bg-paper p-4 text-center">
                    <p className="text-xs text-muted">Temps</p>
                    <p className="font-serif text-2xl font-bold text-ink">
                      {formatTime(totalElapsedMs)}
                    </p>
                  </div>
                  <div className="rounded-card border border-border bg-paper p-4 text-center">
                    <p className="text-xs text-muted">Score</p>
                    <p className="font-serif text-2xl font-bold text-ink">
                      <CountUp end={score} duration={1} />/{session.questionCount}
                    </p>
                  </div>
                  <div className="rounded-card border border-border bg-paper p-4 text-center">
                    <p className="text-xs text-muted">Précision</p>
                    <p className="font-serif text-2xl font-bold text-accent">
                      <CountUp end={Math.round(correctPercent)} duration={1} />%
                    </p>
                  </div>
                  <div className="rounded-card border border-border bg-paper p-4 text-center">
                    <p className="text-xs text-muted">XP gagnés</p>
                    <p className="font-serif text-2xl font-bold text-accentSecondary">
                      <CountUp end={sessionXp} duration={1.5} />
                    </p>
                  </div>
                </div>

                {personalBest && (
                  <p className="text-sm text-muted">
                    Record précédent : {formatTime(personalBest)}
                  </p>
                )}

                <XpBar
                  currentLevel={xpInfo.currentLevel}
                  xpInCurrentLevel={xpInfo.xpInCurrentLevel}
                  xpNeededForNext={xpInfo.xpNeededForNext}
                  progress={xpInfo.progress}
                  totalXp={runningXp}
                  size="sm"
                />

                <div className="flex flex-wrap gap-3 pt-2">
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
                      setDraftAnswer("");
                      setShowConfetti(false);
                      setIsNewRecord(false);
                      setPhase("countdown");
                      setCountdownValue(3);
                    }}
                  >
                    Recommencer le sprint
                  </Button>
                </div>
              </div>
            </div>
          </div>
        </Panel>
      </div>
    );
  }

  // Playing
  return (
    <div className="space-y-4">
      {/* Timer + Score bar */}
      <div className="flex items-center justify-between rounded-card border border-border bg-card px-5 py-3">
        <div className="flex items-center gap-3">
          <span className="font-serif text-2xl font-bold tabular-nums text-ink">
            {formatTime(totalElapsedMs)}
          </span>
          <Badge tone="accent">Sprint</Badge>
        </div>
        <div className="flex items-center gap-4 text-sm">
          <span className="text-pine font-semibold">{score} ✓</span>
          <span className="text-muted">
            {currentIndex + 1}/{session.questionCount}
          </span>
        </div>
      </div>

      {/* Question card */}
      <div className="relative">
        <AnimatePresence>
          {flash && (
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              className={cn(
                "absolute inset-0 z-10 flex items-center justify-center rounded-panel text-4xl font-bold",
                flash === "correct" ? "bg-successBg/90 text-pine" : "bg-errorBg/90 text-error",
              )}
            >
              {flash === "correct" ? "✓" : "✗"}
            </motion.div>
          )}
        </AnimatePresence>

        <Panel className="border-border bg-card">
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            Question {currentIndex + 1}
          </p>
          <h2 className="mt-2 font-serif text-xl font-semibold text-ink sm:text-2xl">
            {currentQuestion?.instruction}
          </h2>
          {currentQuestion?.support_text && (
            <p className="mt-3 rounded-inner border border-border bg-paper p-3 text-sm text-muted">
              {currentQuestion.support_text}
            </p>
          )}

          {/* Answer options */}
          {currentQuestion?.choices ? (
            <div className="mt-4 grid gap-2 sm:grid-cols-2">
              {currentQuestion.choices.map((choice) => (
                <button
                  key={choice.id}
                  type="button"
                  onClick={() => submitAnswer(choice.id)}
                  disabled={Boolean(flash)}
                  className="rounded-inner border border-border bg-paper px-4 py-3 text-left text-sm font-medium text-ink transition-colors hover:border-accent hover:bg-secondary disabled:opacity-50"
                >
                  {currentQuestion.exercise_type !== "vrai_faux" && (
                    <span className="mr-2 font-semibold text-muted">{choice.id.toUpperCase()}</span>
                  )}
                  {choice.label}
                </button>
              ))}
            </div>
          ) : (
            <div className="mt-4 flex gap-2">
              <input
                type="text"
                value={draftAnswer}
                onChange={(e) => setDraftAnswer(e.target.value)}
                onKeyDown={(e) => {
                  if (e.key === "Enter" && draftAnswer.trim()) submitAnswer(draftAnswer);
                }}
                disabled={Boolean(flash)}
                placeholder="Votre réponse…"
                className="flex-1 rounded-inner border border-border bg-paper px-4 py-2 text-sm text-ink"
              />
              <Button
                type="button"
                onClick={() => submitAnswer(draftAnswer)}
                disabled={!draftAnswer.trim() || Boolean(flash)}
              >
                OK
              </Button>
            </div>
          )}
        </Panel>
      </div>
    </div>
  );
}
