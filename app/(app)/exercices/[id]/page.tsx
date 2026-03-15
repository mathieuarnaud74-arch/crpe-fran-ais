import Link from "next/link";
import { notFound } from "next/navigation";

import { Badge } from "@/components/ui/badge";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { ExercisePlayer } from "@/features/exercises/components/exercise-player";
import {
  getAttemptsCountToday,
  getExerciseSessionById,
} from "@/features/exercises/server/queries";
import { env } from "@/lib/env";
import { canSubmitAttempt } from "@/lib/freemium";
import { formatLevelLabel } from "@/lib/constants";
import { ExerciseSubdomain } from "@/types/domain";

const CRPE_CONTEXT: Partial<Record<ExerciseSubdomain, string>> = {
  didactique_francais:
    "La didactique du français (enseigner la lecture, l'écriture, la grammaire, le vocabulaire) est un domaine explicitement évalué dans l'épreuve de Français du CRPE, au même titre que la maîtrise de la langue.",
  comprehension_texte:
    "La compréhension de texte est centrale dans l'épreuve du CRPE : analyser un texte littéraire ou documentaire, identifier ses niveaux de sens et répondre à des questions de compréhension fine.",
  analyse_langue:
    "L'analyse syntaxique et morphologique est évaluée dans la partie « étude de la langue » du CRPE. Maîtriser les manipulations syntaxiques est indispensable pour répondre aux questions d'analyse grammaticale.",
};

export default async function ExerciseDetailPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id } = await params;
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const session = await getExerciseSessionById(id);

  if (!session) {
    notFound();
  }

  const attemptsToday = await getAttemptsCountToday(user.id);
  const crpeContext = CRPE_CONTEXT[session.subdomain as ExerciseSubdomain] ?? null;

  let disabledReason: string | null = null;

  if (session.access_tier === "premium" && !premium) {
    disabledReason = "Cette série fait partie du catalogue premium.";
  } else if (!canSubmitAttempt(attemptsToday, premium)) {
    disabledReason = `Votre quota gratuit du jour est atteint (${env.freeDailyQuestionLimit} questions).`;
  }

  return (
    <div className="space-y-5">
      <div className="flex flex-wrap items-center gap-3">
        <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"}>
          {session.access_tier === "premium" ? "Premium" : "Gratuit"}
        </Badge>
        <Badge>{formatLevelLabel(session.level)}</Badge>
        <Badge>{session.questionCount} questions</Badge>
        <Badge>{session.estimatedMinutes} min</Badge>
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
          <p className="text-sm leading-7 text-ink">
            Quota gratuit restant aujourd&apos;hui :{" "}
            <span className="font-semibold">
              {Math.max(env.freeDailyQuestionLimit - attemptsToday, 0)}
            </span>
            {" "}—{" "}
            <Link href="/abonnement" className="underline underline-offset-2">
              passer en premium
            </Link>{" "}
            pour un accès illimité.
          </p>
        </Panel>
      ) : null}
      <ExercisePlayer session={session} disabledReason={disabledReason} />
    </div>
  );
}
