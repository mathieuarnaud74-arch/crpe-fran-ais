"use client";

import { useState } from "react";
import { CheckCircle2, XCircle, RotateCcw } from "lucide-react";
import { cn } from "@/lib/utils";
import type { QuizItem } from "@/features/fiches/types";

type QuizState = "idle" | "correct" | "incorrect";

function QuizQuestion({
  item,
  index,
}: {
  item: QuizItem;
  index: number;
}) {
  const [state, setState] = useState<QuizState>("idle");

  return (
    <div className="rounded-[1.25rem] border border-border bg-paper p-5">
      <div className="flex items-start gap-3">
        <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-secondary text-xs font-semibold text-muted">
          {index + 1}
        </span>
        <div className="flex-1 space-y-3">
          <p className="font-serif text-sm font-medium leading-6 text-ink">
            {item.sentence}
          </p>

          {state === "idle" && (
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() =>
                  setState(item.isCorrect ? "correct" : "incorrect")
                }
                className="rounded-full border border-successBorder bg-successBg px-4 py-2 text-xs font-semibold text-pine transition hover:opacity-80"
              >
                Correct ✓
              </button>
              <button
                type="button"
                onClick={() =>
                  setState(!item.isCorrect ? "correct" : "incorrect")
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
                onClick={() => setState("idle")}
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

  return (
    <div className="space-y-4" key={resetKey}>
      <div className="flex items-center justify-between gap-4">
        <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
          {items.length} question{items.length > 1 ? "s" : ""}
        </p>
        <button
          type="button"
          onClick={() => setResetKey((k) => k + 1)}
          className="flex items-center gap-1.5 rounded-full border border-border bg-paper px-3 py-1.5 text-xs font-medium text-muted transition hover:bg-secondary hover:text-ink"
        >
          <RotateCcw className="h-3 w-3" aria-hidden="true" />
          Tout réinitialiser
        </button>
      </div>

      {items.map((item, i) => (
        <QuizQuestion key={`${resetKey}-${i}`} item={item} index={i} />
      ))}
    </div>
  );
}
