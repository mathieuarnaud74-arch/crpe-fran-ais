import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";

import { Badge } from "@/components/ui/badge";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { ExerciseSessionWrapper } from "@/features/exercises/components/exercise-session-wrapper";
import {
  getAttemptsCountToday,
  getSessionList,
  getExerciseSessionById,
} from "@/features/exercises/server/queries";
import { getUserGamification } from "@/features/gamification/server/queries";
import { env } from "@/lib/env";
import { canSubmitAttempt } from "@/lib/freemium";

import { getSubjectFromSubdomain } from "@/lib/constants";
import { ExerciseSubdomain } from "@/types/domain";


const CRPE_CONTEXT: Partial<Record<ExerciseSubdomain, string>> = {
  didactique_francais:
    "La didactique du français (enseigner la lecture, l'écriture, la grammaire, le vocabulaire) est un domaine explicitement évalué dans l'épreuve de Français du CRPE, au même titre que la maîtrise de la langue.",
  comprehension_texte:
    "La compréhension de texte est centrale dans l'épreuve du CRPE : analyser un texte littéraire ou documentaire, identifier ses niveaux de sens et répondre à des questions de compréhension fine.",
  analyse_langue:
    "L'analyse syntaxique et morphologique est évaluée dans la partie « étude de la langue » du CRPE. Maîtriser les manipulations syntaxiques est indispensable pour répondre aux questions d'analyse grammaticale.",
};

export async function generateMetadata({
  params,
}: {
  params: Promise<{ id: string }>;
}): Promise<Metadata> {
  const { id } = await params;
  const session = await getExerciseSessionById(id);
  if (!session) {
    return { title: "Exercice introuvable" };
  }
  return {
    title: `Exercice — ${session.title}`,
    description: session.summary || `Série d'exercices : ${session.title}`,
  };
}

export default async function ExerciseDetailPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id } = await params;
  const user = await requireUser();

  // Parallelize: all 4 only need user.id or id, no interdependence
  const [premium, session, gamification] = await Promise.all([
    isPremiumUser(user.id),
    getExerciseSessionById(id),
    getUserGamification(user.id).catch(() => ({ xp: 0 })),
  ]);

  if (!session) {
    notFound();
  }

  const [attemptsToday, allSessions] = await Promise.all([
    getAttemptsCountToday(user.id),
    getSessionList({ subdomain: session.subdomain, subject: getSubjectFromSubdomain(session.subdomain as ExerciseSubdomain) }),
  ]);
  const crpeContext = CRPE_CONTEXT[session.subdomain as ExerciseSubdomain] ?? null;

  const nextSession =
    allSessions
      .filter(
        (s) =>
          s.subdomain === session.subdomain &&
          s.recommendedOrder > session.recommendedOrder,
      )
      .sort((a, b) => a.recommendedOrder - b.recommendedOrder)[0] ?? null;

  const remainingFreeQuestions = Math.max(env.freeDailyQuestionLimit - attemptsToday, 0);

  let disabledReason: string | null = null;

  if (!canSubmitAttempt(attemptsToday, premium)) {
    disabledReason = `Votre quota du jour est atteint (${env.freeDailyQuestionLimit} questions). Revenez demain ou passez en premium.`;
  }

  return (
    <div className="space-y-5">
      <div className="flex flex-wrap items-center gap-3">
        <Badge>{session.questionCount} questions</Badge>
      </div>
      {crpeContext ? (
        <Panel className="border-accentSecondary/20 bg-accentSecondarySoft">
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
            Lien avec le CRPE
          </p>
          <p className="mt-2 text-sm leading-7 text-muted">{crpeContext}</p>
        </Panel>
      ) : null}
      {!premium ? (
        <Panel className="border-border bg-secondary">
          {remainingFreeQuestions > 0 ? (
            <p className="text-sm leading-7 text-ink">
              Il vous reste{" "}
              <span className="font-semibold">
                {remainingFreeQuestions} question
                {remainingFreeQuestions > 1 ? "s" : ""} gratuites
              </span>{" "}
              aujourd&apos;hui —{" "}
              <Link href="/abonnement" className="underline underline-offset-2">
                accès illimité dès 0,99 €
              </Link>
              .
            </p>
          ) : (
            <p className="text-sm leading-7 text-ink">
              Séance gratuite du jour terminée — {env.freeDailyQuestionLimit} questions corrigées. Votre quota se
              réinitialise demain matin. Pour continuer maintenant :{" "}
              <Link href="/abonnement" className="font-semibold underline underline-offset-2">
                accès 24 h pour 0,99 €
              </Link>
              .
            </p>
          )}
        </Panel>
      ) : null}
      <ExerciseSessionWrapper
        session={session}
        disabledReason={disabledReason}
        nextSession={nextSession ? { id: nextSession.id, title: nextSession.title } : null}
        initialXp={gamification.xp}
      />
    </div>
  );
}
