"use client";

import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import type { RevisionSession } from "@/types/domain";

type ExerciseSessionWrapperProps = {
  session: RevisionSession;
  disabledReason?: string | null;
  nextSession?: { id: string; title: string } | null;
  initialXp?: number;
};

export function ExerciseSessionWrapper({
  session,
  disabledReason = null,
  nextSession = null,
  initialXp = 0,
}: ExerciseSessionWrapperProps) {
  return (
    <ExercisePlayer
      session={session}
      disabledReason={disabledReason}
      nextSession={nextSession}
      mode="standard"
      initialXp={initialXp}
    />
  );
}
