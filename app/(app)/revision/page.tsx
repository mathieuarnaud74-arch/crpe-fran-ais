import type { Metadata } from "next";
import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { ExerciseSessionWrapper } from "@/features/exercises/components/exercise-session-wrapper";
import { getExerciseById } from "@/features/exercises/server/queries";
import { getUserGamification } from "@/features/gamification/server/queries";
import { getDueExercises, getDueCount } from "@/features/srs/server/queries";
import { SUBDOMAIN_LABELS } from "@/lib/constants";
import type { ExerciseRecord, ExerciseSubdomain, RevisionSession } from "@/types/domain";

export const metadata: Metadata = {
  title: "Révision intelligente",
  description: "Révisez les exercices que vous êtes sur le point d'oublier.",
};

export default async function RevisionPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);

  const [dueItems, dueCount] = await Promise.all([
    getDueExercises(user.id, 20),
    getDueCount(user.id),
  ]);

  let gamification = { xp: 0, personal_best_sprint_time: null as number | null };
  try {
    const g = await getUserGamification(user.id);
    gamification = { xp: g.xp, personal_best_sprint_time: g.personal_best_sprint_time };
  } catch {
    // fail gracefully
  }

  if (dueItems.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-6 py-12 text-center">
        <Panel>
          <div className="space-y-4 py-8">
            <p className="font-serif text-3xl font-semibold text-ink">
              Rien à réviser pour l&apos;instant
            </p>
            <p className="text-sm leading-relaxed text-muted">
              L&apos;algorithme de répétition espacée n&apos;a aucun exercice à vous
              proposer aujourd&apos;hui. Continuez à pratiquer — les révisions
              apparaîtront automatiquement au bon moment.
            </p>
            <ButtonLink href="/exercices" variant="primary">
              Faire des exercices
            </ButtonLink>
          </div>
        </Panel>
      </div>
    );
  }

  // Fetch full exercise records for due items (filter out premium for free users)
  const exercises: ExerciseRecord[] = [];
  for (const item of dueItems) {
    const ex = await getExerciseById(item.exercise_id);
    if (ex && (ex.access_tier === "free" || premium)) exercises.push(ex);
  }

  if (exercises.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-6 py-12 text-center">
        <Panel>
          <div className="space-y-4 py-8">
            <p className="font-serif text-2xl font-semibold text-ink">
              Exercices introuvables
            </p>
            <p className="text-sm text-muted">
              Les exercices programmés ne sont plus disponibles.
            </p>
            <ButtonLink href="/exercices" variant="primary">
              Retour aux exercices
            </ButtonLink>
          </div>
        </Panel>
      </div>
    );
  }

  // Build a virtual RevisionSession from SRS-due exercises
  const primarySubdomain = exercises[0].subdomain;
  const session: RevisionSession = {
    id: "srs-revision",
    title: "Révision intelligente",
    summary: `${exercises.length} exercice${exercises.length > 1 ? "s" : ""} à réviser selon votre courbe d'oubli.`,
    objective: "Consolider les notions que vous êtes sur le point d'oublier.",
    introduction:
      "Ces exercices ont été sélectionnés par l'algorithme de répétition espacée (FSRS). " +
      "Ils ciblent précisément les notions que votre mémoire est en train de perdre.",
    subdomain: primarySubdomain as ExerciseSubdomain,
    topicKey: "srs-revision",
    topicLabel: "Révision espacée",
    level: "Mixte",
    exerciseTypeLabel: "Mixte",
    questionCount: exercises.length,
    estimatedMinutes: Math.max(exercises.length * 2, 5),
    access_tier: "free",
    recommendedOrder: 0,
    questions: exercises,
    completionSummary: {
      skill: "Consolider les notions fragiles grâce à la révision espacée.",
      keyPoints: [
        "Les exercices ratés reviendront plus fréquemment.",
        "Les exercices réussis seront espacés dans le temps.",
        "Révisez régulièrement pour optimiser votre mémorisation.",
      ],
      retryAdvice:
        "Reprenez les exercices ratés en relisant attentivement l'explication avant de répondre.",
    },
  };

  // Collect subdomain stats for the header
  const subdomainCounts = new Map<string, number>();
  for (const ex of exercises) {
    subdomainCounts.set(ex.subdomain, (subdomainCounts.get(ex.subdomain) ?? 0) + 1);
  }

  return (
    <div className="mx-auto max-w-4xl space-y-6 px-6 py-6">
      <div>
        <Link
          href="/tableau-de-bord"
          className="text-sm font-medium text-muted underline underline-offset-2 hover:text-ink"
        >
          &larr; Tableau de bord
        </Link>
      </div>

      <div className="rounded-[1.5rem] border border-accent/20 bg-[linear-gradient(135deg,rgba(74,110,143,0.08),rgba(253,249,243,1)_60%)] px-5 py-5 shadow-subtle">
        <Badge tone="accent">Répétition espacée</Badge>
        <h1 className="mt-2 font-serif text-3xl font-semibold text-ink">
          Révision intelligente
        </h1>
        <p className="mt-2 text-sm leading-relaxed text-muted">
          {dueCount} exercice{dueCount > 1 ? "s" : ""} programmé
          {dueCount > 1 ? "s" : ""} par l&apos;algorithme FSRS.
          Répondez pour repousser la prochaine révision.
        </p>
        <div className="mt-3 flex flex-wrap gap-2">
          {Array.from(subdomainCounts.entries()).map(([sub, count]) => (
            <Badge key={sub} tone="neutral">
              {SUBDOMAIN_LABELS[sub as ExerciseSubdomain] ?? sub} ({count})
            </Badge>
          ))}
        </div>
      </div>

      <ExerciseSessionWrapper
        session={session}
        initialXp={gamification.xp}
        personalBest={gamification.personal_best_sprint_time}
      />
    </div>
  );
}
