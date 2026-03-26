import type { Metadata } from "next";

import { isPremiumUser } from "@/features/billing/server/queries";
import { requireUser } from "@/features/auth/server/guards";
import { RandomExerciseWrapper } from "@/features/exercises/components/random-exercise-wrapper";
import { getRandomExercises, getAttemptsCountToday } from "@/features/exercises/server/queries";
import { getUserGamification } from "@/features/gamification/server/queries";
import { canSubmitAttempt } from "@/lib/freemium";

export const dynamic = "force-dynamic";

export const metadata: Metadata = {
  title: "Exercice aléatoire",
  description: "Entraînez-vous avec des questions piochées au hasard.",
};

export default async function RandomExercisePage() {
  const user = await requireUser();

  const [frenchQuestions, mathQuestions, attemptsToday, premium] = await Promise.all([
    getRandomExercises(10, "Francais"),
    getRandomExercises(10, "Mathematiques"),
    getAttemptsCountToday(user.id),
    isPremiumUser(user.id),
  ]);

  let initialXp = 0;
  try {
    const gamification = await getUserGamification(user.id);
    initialXp = gamification.xp;
  } catch {}

  const disabledReason = !canSubmitAttempt(attemptsToday, premium)
    ? "Votre quota gratuit du jour est atteint. Passez en premium pour continuer sans limite."
    : null;

  return (
    <RandomExerciseWrapper
      frenchQuestions={frenchQuestions}
      mathQuestions={mathQuestions}
      initialXp={initialXp}
      disabledReason={disabledReason}
    />
  );
}
