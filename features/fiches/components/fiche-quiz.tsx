"use client";

import { useState, useCallback, useEffect } from "react";
import { CheckCircle2, XCircle, RotateCcw, Timer } from "lucide-react";
import { CountdownCircleTimer } from "react-countdown-circle-timer";
import CountUp from "react-countup";

import { cn } from "@/lib/utils";
import type { QuizItem } from "@/features/fiches/types";

type QuizState = "idle" | "correct" | "incorrect";

function QuizQuestion({
  item,
  index,
  timedMode,
  onAnswer,
  onTimeout,
}: {
  item: QuizItem;
  index: number;
  timedMode: boolean;
  onAnswer?: (correct: boolean) => void;
  onTimeout?: () => void;
}) {
  const [state, setState] = useState<QuizState>("idle");
  const [timerKey, setTimerKey] = useState(0);

  const handleAnswer = useCallback(
    (answeredCorrect: boolean) => {
      const newState = answeredCorrect ? "correct" : "incorrect";
      setState(newState);
      onAnswer?.(answeredCorrect);
    },
    [onAnswer],
  );

  return (
    <div className="rounded-[1.25rem] border border-border bg-paper p-5">
      <div className="flex items-start gap-3">
        <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-secondary text-xs font-semibold text-muted">
          {index + 1}
        </span>
        <div className="flex-1 space-y-3">
          <div className="flex items-start justify-between gap-3">
            <p className="font-serif text-sm font-medium leading-6 text-ink">
              {item.sentence}
            </p>
            {timedMode && state === "idle" && (
              <div className="shrink-0">
                <CountdownCircleTimer
                  key={timerKey}
                  isPlaying={state === "idle"}
                  duration={15}
                  colors={["#476257", "#4A6E8F", "#F5A623", "#DC2626"]}
                  colorsTime={[15, 10, 5, 0]}
                  size={36}
                  strokeWidth={3}
                  trailColor="#EAE4D8"
                  onComplete={() => {
                    handleAnswer(false);
                    onTimeout?.();
                    return { shouldRepeat: false };
                  }}
                >
                  {({ remainingTime }) => (
                    <span className="text-[10px] font-bold text-muted">{remainingTime}</span>
                  )}
                </CountdownCircleTimer>
              </div>
            )}
          </div>

          {state === "idle" && (
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() =>
                  handleAnswer(item.isCorrect)
                }
                className="rounded-full border border-successBorder bg-successBg px-4 py-2 text-xs font-semibold text-pine transition hover:opacity-80"
              >
                Correct ✓
              </button>
              <button
                type="button"
                onClick={() =>
                  handleAnswer(!item.isCorrect)
                }
                className="rounded-full border border-errorBorder bg-errorBg px-4 py-2 text-xs font-semibold text-error transition hover:opacity-80"
              >
                Incorrect ✗
              </button>
            </div>
          )}

          {state !== "idle" && (
            <div
              className={cn(
                "rounded-[1rem] border p-3",
                state === "correct"
                  ? "border-successBorder bg-successBg"
                  : "border-errorBorder bg-errorBg",
              )}
            >
              <div className="flex items-start gap-2">
                {state === "correct" ? (
                  <CheckCircle2
                    className="mt-0.5 h-4 w-4 shrink-0 text-pine"
                    aria-hidden="true"
                  />
                ) : (
                  <XCircle
                    className="mt-0.5 h-4 w-4 shrink-0 text-error"
                    aria-hidden="true"
                  />
                )}
                <div className="space-y-1">
                  <p
                    className={cn(
                      "text-xs font-semibold",
                      state === "correct" ? "text-pine" : "text-error",
                    )}
                  >
                    {state === "correct" ? "Bonne réponse !" : "Pas tout à fait."}
                  </p>
                  <p className="text-xs leading-5 text-ink/80">{item.explanation}</p>
                </div>
              </div>
              <button
                type="button"
                onClick={() => {
                  setState("idle");
                  setTimerKey((k) => k + 1);
                }}
                className="mt-2 flex items-center gap-1 text-xs text-muted transition hover:text-ink"
              >
                <RotateCcw className="h-3 w-3" aria-hidden="true" />
                Réessayer
              </button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export function FicheQuiz({ items }: { items: QuizItem[] }) {
  const [resetKey, setResetKey] = useState(0);
  const [timedMode, setTimedMode] = useState(false);
  const [score, setScore] = useState(0);
  const [answered, setAnswered] = useState(0);

  function handleAnswer(correct: boolean) {
    if (correct) setScore((s) => s + 1);
    setAnswered((a) => a + 1);
  }

  function reset() {
    setResetKey((k) => k + 1);
    setScore(0);
    setAnswered(0);
  }

  return (
    <div className="space-y-4" key={resetKey}>
      <div className="flex flex-wrap items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            {items.length} question{items.length > 1 ? "s" : ""}
          </p>
          {answered > 0 && (
            <span className="rounded-pill border border-border bg-card px-2.5 py-0.5 text-xs font-medium text-ink">
              <CountUp end={score} duration={0.5} />/{answered}
            </span>
          )}
        </div>
        <div className="flex items-center gap-2">
          <button
            type="button"
            onClick={() => setTimedMode(!timedMode)}
            className={cn(
              "flex items-center gap-1.5 rounded-full border px-3 py-1.5 text-xs font-medium transition",
              timedMode
                ? "border-accent bg-accent/10 text-accent"
                : "border-border bg-paper text-muted hover:bg-secondary hover:text-ink",
            )}
          >
            <Timer className="h-3 w-3" aria-hidden="true" />
            {timedMode ? "Chrono actif" : "Mode chrono"}
          </button>
          <button
            type="button"
            onClick={reset}
            className="flex items-center gap-1.5 rounded-full border border-border bg-paper px-3 py-1.5 text-xs font-medium text-muted transition hover:bg-secondary hover:text-ink"
          >
            <RotateCcw className="h-3 w-3" aria-hidden="true" />
            Réinitialiser
          </button>
        </div>
      </div>

      {items.map((item, i) => (
        <QuizQuestion
          key={`${resetKey}-${i}`}
          item={item}
          index={i}
          timedMode={timedMode}
          onAnswer={handleAnswer}
        />
      ))}

      {answered === items.length && (
        <div className={cn(
          "rounded-inner border p-4 text-center",
          score === items.length ? "border-successBorder bg-successBg" : "border-border bg-card",
        )}>
          <p className="font-serif text-lg font-semibold text-ink">
            Quiz terminé : <CountUp end={score} duration={1} />/{items.length}
          </p>
          <p className="mt-1 text-sm text-muted">
            {score === items.length
              ? "Parfait ! Vous maîtrisez cette fiche."
              : `${items.length - score} erreur${items.length - score > 1 ? "s" : ""} — relisez la fiche et réessayez.`}
          </p>
        </div>
      )}
    </div>
  );
}
