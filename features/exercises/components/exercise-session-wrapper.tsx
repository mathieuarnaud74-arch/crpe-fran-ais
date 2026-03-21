"use client";

import { useState } from "react";

import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import { ModeSelector } from "@/features/exercises/components/mode-selector";
import { SprintPlayer } from "@/features/exercises/components/sprint-player";
import { SwipePlayer } from "@/features/exercises/components/swipe-player";
import type { ExerciseMode, RevisionSession } from "@/types/domain";

type ExerciseSessionWrapperProps = {
  session: RevisionSession;
  disabledReason?: string | null;
  nextSession?: { id: string; title: string } | null;
  initialXp?: number;
  personalBest?: number | null;
};

export function ExerciseSessionWrapper({
  session,
  disabledReason = null,
  nextSession = null,
  initialXp = 0,
  personalBest = null,
}: ExerciseSessionWrapperProps) {
  const [selectedMode, setSelectedMode] = useState<ExerciseMode | null>(null);
  const [timerDuration, setTimerDuration] = useState(60);

  if (!selectedMode) {
    return (
      <ModeSelector
        session={session}
        onSelect={(mode, options) => {
          setSelectedMode(mode);
          if (options?.timerDuration) setTimerDuration(options.timerDuration);
        }}
      />
    );
  }

  if (selectedMode === "swipe") {
    return (
      <SwipePlayer
        session={session}
        initialXp={initialXp}
        nextSession={nextSession}
      />
    );
  }

  if (selectedMode === "sprint") {
    return (
      <SprintPlayer
        session={session}
        initialXp={initialXp}
        personalBest={personalBest}
        nextSession={nextSession}
      />
    );
  }

  return (
    <ExercisePlayer
      session={session}
      disabledReason={disabledReason}
      nextSession={nextSession}
      mode={selectedMode}
      timerDuration={timerDuration}
      initialXp={initialXp}
    />
  );
}
