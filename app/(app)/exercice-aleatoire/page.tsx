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

  const [questions, attemptsToday, premium] = await Promise.all([
    getRandomExercises(10),
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
    <div className="mx-auto max-w-2xl space-y-6">
      <div>
        <h1 className="font-serif text-3xl font-semibold text-ink">
          Exercice aléatoire
        </h1>
        <p className="mt-2 text-sm leading-7 text-muted">
          10 questions piochées au hasard dans tous les domaines du français.
          Choisissez votre mode et testez vos connaissances !
        </p>
      </div>
      {questions.length > 0 ? (
        <RandomExerciseWrapper
          questions={questions}
          initialXp={initialXp}
          disabledReason={disabledReason}
        />
      ) : (
        <p className="text-sm text-muted">Aucune question disponible pour le moment.</p>
      )}
    </div>
  );
}
