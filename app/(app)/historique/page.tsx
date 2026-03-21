import type { Metadata } from "next";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { EmptyState } from "@/components/empty-state";

export const metadata: Metadata = {
  title: "Historique",
  description: "Historique de vos sessions d'entraînement.",
};
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getAttemptsForHistory } from "@/features/exercises/server/queries";
import { SUBDOMAIN_LABELS } from "@/lib/constants";
import { ExerciseSubdomain } from "@/types/domain";
import { formatDate } from "@/lib/utils";

type HistoryAttempt = Awaited<ReturnType<typeof getAttemptsForHistory>>[number];

export default async function HistoryPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const attempts = await getAttemptsForHistory(user.id, premium ? undefined : 20);

  return (
    <div className="space-y-6">
      <div>
        <Badge tone={premium ? "accent" : "neutral"}>
          {premium ? "Historique complet" : "Historique simple"}
        </Badge>
        <h1 className="mt-2 font-serif text-3xl font-semibold text-ink">Historique des résultats</h1>
        <p className="mt-2 text-sm text-muted">
          {premium
            ? "Ensemble de vos tentatives corrigées."
            : "Les 20 dernières tentatives sont visibles avec l'accès gratuit."}
        </p>
      </div>

      {attempts.length === 0 ? (
        <EmptyState
          title="Pas encore de résultats"
          description="Répondez à quelques exercices pour alimenter votre historique."
          action={<ButtonLink href="/exercices">Commencer un exercice</ButtonLink>}
        />
      ) : (
        <div className="space-y-3">
          {attempts.map((attempt: HistoryAttempt) => {
            const exercise = Array.isArray(attempt.exercises)
              ? attempt.exercises[0]
              : attempt.exercises;

            const subdomainLabel = exercise?.subdomain
              ? (SUBDOMAIN_LABELS[exercise.subdomain as ExerciseSubdomain] ?? exercise.subdomain)
              : null;

            const submittedValue = (attempt.submitted_answer as { value?: string })?.value;

            return (
              <Panel key={attempt.id} className="p-4">
                <div className="flex items-start justify-between gap-4">
                  <div className="min-w-0 flex-1">
                    <p className="text-sm font-medium text-ink line-clamp-2">{exercise?.instruction}</p>
                    {subdomainLabel ? (
                      <p className="mt-1 text-xs text-muted">{subdomainLabel}</p>
                    ) : null}
                  </div>
                  <div className="flex shrink-0 flex-col items-end gap-1">
                    <Badge tone={attempt.is_correct ? "success" : "warning"} size="sm">
                      {attempt.is_correct ? "Correct" : "Incorrect"}
                    </Badge>
                    <p className="text-xs text-muted">{formatDate(attempt.answered_at)}</p>
                  </div>
                </div>
                {submittedValue ? (
                  <p className="mt-2 text-xs text-muted">
                    Réponse : <span className="font-medium text-ink">{submittedValue}</span>
                  </p>
                ) : null}
              </Panel>
            );
          })}
        </div>
      )}
    </div>
  );
}
