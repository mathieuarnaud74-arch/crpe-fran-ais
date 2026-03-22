"use client";

import dynamic from "next/dynamic";
import { useState } from "react";

import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import { ModeSelector, FAST_MODE_TYPES } from "@/features/exercises/components/mode-selector";
import type { ExerciseMode, RevisionSession } from "@/types/domain";

/** Filter session questions to only those compatible with the selected mode */
function filterSessionForMode(session: RevisionSession, mode: ExerciseMode): RevisionSession {
  if (mode === "standard") return session;

  const filtered = mode === "swipe"
    ? session.questions.filter((q) => q.exercise_type === "vrai_faux")
    : session.questions.filter((q) => FAST_MODE_TYPES.has(q.exercise_type));

  return { ...session, questions: filtered, questionCount: filtered.length };
}

const SprintPlayer = dynamic(
  () =>
    import("@/features/exercises/components/sprint-player").then(
      (mod) => mod.SprintPlayer,
    ),
  {
    ssr: false,
    loading: () => (
      <div className="h-[400px] w-full animate-pulse rounded-card bg-secondary" />
    ),
  },
);

const SwipePlayer = dynamic(
  () =>
    import("@/features/exercises/components/swipe-player").then(
      (mod) => mod.SwipePlayer,
    ),
  {
    ssr: false,
    loading: () => (
      <div className="h-[400px] w-full animate-pulse rounded-card bg-secondary" />
    ),
  },
);

type ExerciseSessionWrapperProps = {
  session: RevisionSession;
  disabledReason?: string | null;
  nextSession?: { id: string; title: string } | null;
  initialXp?: number;
  personalBest?: number | null;
  initialMode?: ExerciseMode;
};

export function ExerciseSessionWrapper({
  session,
  disabledReason = null,
  nextSession = null,
  initialXp = 0,
  personalBest = null,
  initialMode,
}: ExerciseSessionWrapperProps) {
  const [selectedMode, setSelectedMode] = useState<ExerciseMode | null>(initialMode ?? null);
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

  const filteredSession = filterSessionForMode(session, selectedMode);

  if (selectedMode === "swipe") {
    return (
      <SwipePlayer
        session={filteredSession}
        initialXp={initialXp}
        nextSession={nextSession}
      />
    );
  }

  if (selectedMode === "sprint") {
    return (
      <SprintPlayer
        session={filteredSession}
        initialXp={initialXp}
        personalBest={personalBest}
        nextSession={nextSession}
      />
    );
  }

  return (
    <ExercisePlayer
      session={filteredSession}
      disabledReason={disabledReason}
      nextSession={nextSession}
      mode={selectedMode}
      timerDuration={timerDuration}
      initialXp={initialXp}
    />
  );
}
