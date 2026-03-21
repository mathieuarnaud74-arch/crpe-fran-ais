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
import { updateUserXp } from "@/features/gamification/server/queries";
import { canSubmitAttempt } from "@/lib/freemium";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { calculateXpEarned, type ExerciseMode } from "@/lib/xp";

type AttemptActionState = {
  status: "idle" | "success" | "error";
  message?: string;
  explanation?: string;
  isCorrect?: boolean;
  expectedAnswerLabel?: string;
  xpEarned?: number;
  newLevel?: number;
  previousLevel?: number;
};

export async function submitAttemptAction(
  _previousState: AttemptActionState,
  formData: FormData,
): Promise<AttemptActionState> {
  const exerciseId = String(formData.get("exerciseId") ?? "");
  const submittedValue = String(formData.get("answer") ?? "");
  const sessionId = String(formData.get("sessionId") ?? "");
  const timeSpentMs = formData.get("timeSpentMs") ? Number(formData.get("timeSpentMs")) : null;
  const exerciseMode = (formData.get("exerciseMode") as ExerciseMode) ?? "standard";
  const streak = formData.get("streak") ? Number(formData.get("streak")) : 0;

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

  // Calculate XP
  const xpEarned = calculateXpEarned(
    evaluation.isCorrect,
    streak,
    timeSpentMs,
    exerciseMode,
  );

  const { error } = await supabase.from("attempts").insert({
    user_id: user.id,
    exercise_id: exercise.id,
    submitted_answer: { value: submittedValue },
    is_correct: evaluation.isCorrect,
    score: evaluation.isCorrect ? 1 : 0,
    time_spent_ms: timeSpentMs,
    xp_earned: xpEarned,
    exercise_mode: exerciseMode,
  });

  if (error) {
    return {
      status: "error",
      message: "Impossible d'enregistrer votre tentative.",
    };
  }

  // Update XP & streak in gamification table
  const currentStreak = evaluation.isCorrect ? streak + 1 : 0;
  let newLevel: number | undefined;
  let previousLevel: number | undefined;

  try {
    const { getLevelForXp } = await import("@/lib/xp");
    const gamification = await import("@/features/gamification/server/queries");
    const userGamification = await gamification.getUserGamification(user.id);
    previousLevel = userGamification.level;
    const result = await updateUserXp(user.id, xpEarned, currentStreak);
    newLevel = result.newLevel;
  } catch {
    // Gamification table may not exist yet, fail gracefully
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
    xpEarned,
    newLevel,
    previousLevel,
  };
}
