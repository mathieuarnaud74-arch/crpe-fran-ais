"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { isPremiumUser } from "@/features/billing/server/queries";
import {
  buildExpectedAnswerLabel,
  evaluateExerciseAnswer,
} from "@/features/exercises/shared/evaluation";
import {
  getAttemptsCountToday,
  getExerciseById,
} from "@/features/exercises/server/queries";
import { getUserGamification, updateUserXp } from "@/features/gamification/server/queries";
import { recordSrsReview } from "@/features/srs/server/queries";
import { canSubmitAttempt } from "@/lib/freemium";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { calculateXpEarned } from "@/lib/xp";
import type { ExerciseMode } from "@/types/domain";

const attemptFormSchema = z.object({
  exerciseId: z.string().min(1),
  answer: z.string(),
  sessionId: z.string(),
  timeSpentMs: z.coerce.number().nullable().catch(null),
  exerciseMode: z.enum(["standard", "timed", "sprint", "swipe"]).catch("standard"),
  streak: z.coerce.number().int().min(0).max(10).catch(0),
});

type AttemptActionState = {
  status: "idle" | "success" | "error";
  message?: string;
  explanation?: string;
  isCorrect?: boolean;
  expectedAnswerLabel?: string;
  xpEarned?: number;
  newLevel?: number;
  previousLevel?: number;
  dailyStreakIncremented?: boolean;
  newDailyStreak?: number;
  streakFreezeUsed?: boolean;
  xpUpdateFailed?: boolean;
  srsUpdateFailed?: boolean;
};

export async function submitAttemptAction(
  _previousState: AttemptActionState,
  formData: FormData,
): Promise<AttemptActionState> {
  try {
    return await submitAttemptActionInner(formData);
  } catch (err) {
    console.error("[submitAttemptAction] Unhandled error:", err);
    return {
      status: "error",
      message: "Une erreur inattendue est survenue.",
    };
  }
}

async function submitAttemptActionInner(
  formData: FormData,
): Promise<AttemptActionState> {
  const parsed = attemptFormSchema.safeParse({
    exerciseId: formData.get("exerciseId") ?? "",
    answer: formData.get("answer") ?? "",
    sessionId: formData.get("sessionId") ?? "",
    timeSpentMs: formData.get("timeSpentMs") ?? null,
    exerciseMode: formData.get("exerciseMode") ?? "standard",
    streak: formData.get("streak") ?? 0,
  });

  if (!parsed.success) {
    return { status: "error", message: "Données du formulaire invalides." };
  }

  const { exerciseId, answer: submittedValue, sessionId, timeSpentMs, exerciseMode, streak } = parsed.data;

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
  const attemptsToday = await getAttemptsCountToday(user.id);

  if (!canSubmitAttempt(attemptsToday, premium)) {
    return {
      status: "error",
      message:
        "Votre quota du jour est atteint. Revenez demain ou passez en premium pour continuer sans limite.",
    };
  }

  const evaluation = evaluateExerciseAnswer(exercise, submittedValue);

  // Fetch gamification for daily streak multiplier + XP update
  let userGamification: Awaited<ReturnType<typeof getUserGamification>> | null = null;
  let currentDailyStreak = 0;
  let previousLevel: number | undefined;
  try {
    userGamification = await getUserGamification(user.id);
    currentDailyStreak = userGamification.daily_streak;
    previousLevel = userGamification.level;
  } catch (e) {
    console.warn("[submitAttempt] gamification fetch failed:", e);
  }

  // Calculate XP with daily streak multiplier
  const xpEarned = calculateXpEarned(
    evaluation.isCorrect,
    streak,
    timeSpentMs,
    exerciseMode,
    60_000,
    currentDailyStreak,
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

  let dailyStreakIncremented: boolean | undefined;
  let newDailyStreak: number | undefined;
  let streakFreezeUsed: boolean | undefined;
  let xpUpdateFailed = false;
  let srsUpdateFailed = false;

  try {
    if (!userGamification) throw new Error("Gamification data unavailable");
    const result = await updateUserXp(user.id, xpEarned, currentStreak, userGamification);
    newLevel = result.newLevel;
    dailyStreakIncremented = result.dailyStreakInfo.justIncremented;
    newDailyStreak = result.dailyStreakInfo.newDailyStreak;
    streakFreezeUsed = result.dailyStreakInfo.freezeUsed;
  } catch (e) {
    console.warn("[submitAttempt] XP update failed:", e);
    xpUpdateFailed = true;
  }

  // Update SRS card for spaced repetition scheduling
  try {
    await recordSrsReview(user.id, exerciseId, evaluation.isCorrect, timeSpentMs);
  } catch (e) {
    console.warn("[submitAttempt] SRS update failed:", e);
    srsUpdateFailed = true;
  }

  // Only revalidate the dashboard for real sessions — skip for random/virtual sessions
  // to avoid refetching the force-dynamic page with new random questions.
  // /historique and /exercices/[id] don't need revalidation: historique can use ISR,
  // and exercise content is static between attempts.
  const isVirtualSession = !sessionId.startsWith("session-");
  if (!isVirtualSession) {
    revalidatePath("/tableau-de-bord");
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
    dailyStreakIncremented,
    newDailyStreak,
    streakFreezeUsed,
    xpUpdateFailed: xpUpdateFailed || undefined,
    srsUpdateFailed: srsUpdateFailed || undefined,
  };
}
