"use client";

import { useCallback, useEffect, useRef, useTransition } from "react";
import { toast } from "sonner";

import { submitAttemptAction } from "@/features/exercises/server/actions";
import type { ExerciseMode } from "@/types/domain";

type SubmitParams = {
  exerciseId: string;
  answer: string;
  sessionId: string;
  timeSpentMs: number;
  exerciseMode: ExerciseMode;
  streak: number;
};

type UseAttemptSubmitOptions = {
  onLevelUp?: (newLevel: number) => void;
  onError?: () => void;
  /** Called after submit completes (success or error). Useful for releasing UI locks. */
  onSettled?: () => void;
  /** When true, suppresses error and streak toasts (used by sprint/swipe). */
  silent?: boolean;
};

export function useAttemptSubmit(options?: UseAttemptSubmitOptions) {
  const [isPending, startTransition] = useTransition();
  const submittingRef = useRef(false);

  // Store callbacks in a ref so `submit` stays stable across renders
  const optionsRef = useRef(options);
  useEffect(() => {
    optionsRef.current = options;
  });

  const submit = useCallback(
    (params: SubmitParams) => {
      if (submittingRef.current) return;
      submittingRef.current = true;

      startTransition(async () => {
        const formData = new FormData();
        formData.append("exerciseId", params.exerciseId);
        formData.append("answer", params.answer);
        formData.append("sessionId", params.sessionId);
        formData.append("timeSpentMs", String(params.timeSpentMs));
        formData.append("exerciseMode", params.exerciseMode);
        formData.append("streak", String(params.streak));

        try {
          const result = await submitAttemptAction({ status: "idle" }, formData);
          const opts = optionsRef.current;

          if (result.status === "error") {
            opts?.onError?.();
            if (!opts?.silent) {
              toast.error(result.message ?? "Votre réponse n'a pas pu être enregistrée.");
            }
            return;
          }

          if (result.previousLevel && result.newLevel && result.newLevel > result.previousLevel) {
            opts?.onLevelUp?.(result.newLevel);
          }

          if (!opts?.silent && result.dailyStreakIncremented && result.newDailyStreak) {
            const { isStreakMilestone } = await import("@/lib/daily-streak");
            if (isStreakMilestone(result.newDailyStreak)) {
              toast(`🔥 ${result.newDailyStreak} jours d'affilée !`, {
                description: "Votre régularité paie, continuez comme ça !",
                duration: 4000,
              });
            }
          }
        } catch (err) {
          console.error("[useAttemptSubmit] submitAttemptAction failed:", err);
          optionsRef.current?.onError?.();
          if (!optionsRef.current?.silent) {
            toast.error("Votre réponse n'a pas pu être enregistrée.");
          }
        } finally {
          submittingRef.current = false;
          optionsRef.current?.onSettled?.();
        }
      });
    },
    [startTransition],
  );

  return { submit, isPending };
}
