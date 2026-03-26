"use client";

import { useRouter } from "next/navigation";
import { useMemo, useState } from "react";

import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import { RandomModePicker } from "@/features/exercises/components/random-mode-picker";
import { RandomSubjectPicker } from "@/features/exercises/components/random-subject-picker";
import type { ExerciseMode, ExerciseRecord, RevisionSession } from "@/types/domain";

function buildVirtualSession(
  questions: ExerciseRecord[],
  subject: "Francais" | "Mathematiques",
): RevisionSession {
  const isFrench = subject === "Francais";

  return {
    id: "random-session",
    title: `Exercice aléatoire — ${isFrench ? "Français" : "Mathématiques"}`,
    summary: `Questions piochées aléatoirement dans toutes les séries de ${isFrench ? "français" : "mathématiques"}.`,
    objective: "Réviser des notions variées en mode aléatoire.",
    introduction: isFrench
      ? "Les questions suivantes couvrent différents domaines du français. Répondez avec méthode."
      : "Les questions suivantes couvrent différents domaines des mathématiques. Répondez avec méthode.",
    subdomain: questions[0]?.subdomain ?? (isFrench ? "grammaire" : "nombres_calcul"),
    topicKey: "random",
    topicLabel: "Aléatoire",
    exerciseTypeLabel: "Mixte",
    questionCount: questions.length,
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
  frenchQuestions: ExerciseRecord[];
  mathQuestions: ExerciseRecord[];
  initialXp?: number;
  disabledReason?: string | null;
};

export function RandomExerciseWrapper({
  frenchQuestions,
  mathQuestions,
  initialXp = 0,
  disabledReason = null,
}: RandomExerciseWrapperProps) {
  const router = useRouter();
  const [selectedSubject, setSelectedSubject] = useState<"Francais" | "Mathematiques" | null>(null);
  const [selectedMode, setSelectedMode] = useState<ExerciseMode | null>(null);

  const questions = useMemo(
    () => (selectedSubject === "Mathematiques" ? mathQuestions : frenchQuestions),
    [selectedSubject, mathQuestions, frenchQuestions],
  );

  const session = useMemo(
    () => (selectedSubject ? buildVirtualSession(questions, selectedSubject) : null),
    [questions, selectedSubject],
  );

  // Step 1: Subject picker
  if (!selectedSubject) {
    return (
      <RandomSubjectPicker
        frenchCount={frenchQuestions.length}
        mathCount={mathQuestions.length}
        onSelect={setSelectedSubject}
      />
    );
  }

  // Step 2: Mode picker
  if (!selectedMode) {
    return (
      <div className="mx-auto max-w-2xl space-y-6">
        <div>
          <button
            type="button"
            onClick={() => setSelectedSubject(null)}
            className="mb-1 text-sm font-medium text-accent hover:text-accentDark transition-colors"
          >
            ← Changer de matière
          </button>
          <h1 className="font-serif text-3xl font-semibold text-ink">
            Exercice aléatoire — {selectedSubject === "Francais" ? "Français" : "Mathématiques"}
          </h1>
          <p className="mt-2 text-sm leading-7 text-muted">
            {questions.length} questions piochées au hasard. Choisissez votre mode !
          </p>
        </div>
        {questions.length > 0 ? (
          <RandomModePicker onSelect={setSelectedMode} />
        ) : (
          <p className="text-sm text-muted">
            Aucune question disponible pour cette matière pour le moment.
          </p>
        )}
      </div>
    );
  }

  // Step 3: Exercise player
  if (!session || questions.length === 0) {
    return (
      <p className="mx-auto max-w-2xl text-sm text-muted">
        Aucune question disponible pour le moment.
      </p>
    );
  }

  return (
    <ExercisePlayer
      session={session}
      mode={selectedMode}
      timerDuration={60}
      initialXp={initialXp}
      disabledReason={disabledReason}
      onNewSession={() => router.refresh()}
    />
  );
}
