"use client";

import { useMemo, useState } from "react";

import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import { RandomModePicker } from "@/features/exercises/components/random-mode-picker";
import type { ExerciseMode, ExerciseRecord, RevisionSession } from "@/types/domain";

function buildVirtualSession(questions: ExerciseRecord[]): RevisionSession {
  return {
    id: "random-session",
    title: "Exercice aléatoire",
    summary: "Questions piochées aléatoirement dans toutes les séries.",
    objective: "Réviser des notions variées en mode aléatoire.",
    introduction: "Les questions suivantes couvrent différents domaines du français. Répondez avec méthode.",
    subdomain: questions[0]?.subdomain ?? "grammaire",
    topicKey: "random",
    topicLabel: "Aléatoire",
    level: "Mixte",
    exerciseTypeLabel: "Mixte",
    questionCount: questions.length,
    estimatedMinutes: Math.max(questions.length * 2, 5),
    access_tier: "free",
    recommendedOrder: 0,
    questions,
    completionSummary: {
      skill: "Consolider vos connaissances par la pratique variée.",
      keyPoints: [
        "Relisez les corrections pour comprendre vos erreurs.",
        "Identifiez les domaines où vous hésitez le plus.",
        "Refaites un exercice aléatoire pour mesurer votre progression.",
      ],
      retryAdvice: "Relancez un exercice aléatoire pour travailler d'autres questions.",
    },
  };
}

type RandomExerciseWrapperProps = {
  questions: ExerciseRecord[];
  initialXp?: number;
  disabledReason?: string | null;
};

export function RandomExerciseWrapper({
  questions,
  initialXp = 0,
  disabledReason = null,
}: RandomExerciseWrapperProps) {
  const [selectedMode, setSelectedMode] = useState<ExerciseMode | null>(null);

  // Memoize so that ExercisePlayer always receives the same reference
  const session = useMemo(() => buildVirtualSession(questions), [questions]);

  if (!selectedMode) {
    return <RandomModePicker onSelect={(mode) => setSelectedMode(mode)} />;
  }

  return (
    <ExercisePlayer
      session={session}
      mode={selectedMode}
      timerDuration={60}
      initialXp={initialXp}
      disabledReason={disabledReason}
    />
  );
}
