"use server";

import { revalidatePath } from "next/cache";

import { isPremiumUser } from "@/features/billing/server/queries";
import {
  buildExpectedAnswerLabel,
  evaluateExerciseAnswer,
} from "@/features/exercises/shared/evaluation";
import {
  getAttemptsCountToday,
  getExerciseById,
} from "@/features/exercises/server/queries";
import { canSubmitAttempt } from "@/lib/freemium";
import { createSupabaseServerClient } from "@/lib/supabase/server";

type AttemptActionState = {
  status: "idle" | "success" | "error";
  message?: string;
  explanation?: string;
  isCorrect?: boolean;
  expectedAnswerLabel?: string;
};

export async function submitAttemptAction(
  _previousState: AttemptActionState,
  formData: FormData,
): Promise<AttemptActionState> {
  const exerciseId = String(formData.get("exerciseId") ?? "");
  const submittedValue = String(formData.get("answer") ?? "");
  const sessionId = String(formData.get("sessionId") ?? "");

  const supabase = await createSupabaseServerClient();
  const user = (await supabase.auth.getUser()).data.user;

  if (!user) {
    return {
      status: "error",
      message: "Vous devez être connecté pour répondre.",
    };
  }

  const exercise = await getExerciseById(exerciseId);

  if (!exercise) {
    return {
      status: "error",
      message: "Exercice introuvable ou non accessible.",
    };
  }

  const premium = await isPremiumUser(user.id);

  if (exercise.access_tier === "premium" && !premium) {
    return {
      status: "error",
      message: "Cet exercice est réservé aux abonnés premium.",
    };
  }

  const attemptsToday = await getAttemptsCountToday(user.id);

  if (!canSubmitAttempt(attemptsToday, premium)) {
    return {
      status: "error",
      message:
        "Votre quota gratuit du jour est atteint. Passez en premium pour continuer sans limite.",
    };
  }

  const evaluation = evaluateExerciseAnswer(exercise, submittedValue);

  const { error } = await supabase.from("attempts").insert({
    user_id: user.id,
    exercise_id: exercise.id,
    submitted_answer: { value: submittedValue },
    is_correct: evaluation.isCorrect,
    score: evaluation.isCorrect ? 1 : 0,
  });

  if (error) {
    return {
      status: "error",
      message: "Impossible d'enregistrer votre tentative.",
    };
  }

  revalidatePath("/tableau-de-bord");
  revalidatePath("/historique");
  if (sessionId) {
    revalidatePath(`/exercices/${sessionId}`);
  }

  return {
    status: "success",
    message: evaluation.isCorrect
      ? "Bonne réponse."
      : evaluation.reason === "accent_only"
        ? "Réponse presque correcte : il reste un accent à corriger."
        : "Réponse incorrecte.",
    explanation: exercise.detailed_explanation,
    isCorrect: evaluation.isCorrect,
    expectedAnswerLabel: buildExpectedAnswerLabel(exercise.expected_answer, exercise.choices),
  };
}
