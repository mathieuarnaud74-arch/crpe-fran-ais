import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { DashboardSessionProgress } from "@/types/domain";

import { LearningStatusBadge } from "./learning-status-badge";

type SessionProgressCardProps = {
  session: DashboardSessionProgress;
  compact?: boolean;
};

function formatSessionMeta(session: DashboardSessionProgress) {
  const parts = [`${session.questionCount} questions`, session.level, `${session.estimatedMinutes} min`];

  if (session.correctRate !== null) {
    parts.push(`${session.correctRate} %`);
  }

  return parts.join(" · ");
}

export function SessionProgressCard({ session, compact = false }: SessionProgressCardProps) {
  return (
    <article className="rounded-[1.5rem] border border-border bg-paper p-5 shadow-subtle">
      <div className="flex flex-col gap-3 md:flex-row md:items-start md:justify-between">
        <div className="space-y-3">
          <div className="flex flex-wrap items-center gap-2">
            <Badge tone="accentSecondary" size="sm">
              {session.domainLabel}
            </Badge>
            <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"} size="sm">
              {session.access_tier === "premium" ? "Premium" : "Gratuit"}
            </Badge>
            <LearningStatusBadge status={session.status} />
          </div>
          <div>
            <p className="text-sm font-semibold text-muted">{session.topicLabel}</p>
            <h3 className="mt-1 text-lg font-semibold text-ink">{session.title}</h3>
            {!compact ? (
              <p className="mt-2 max-w-3xl text-sm leading-7 text-muted">{session.summary}</p>
            ) : null}
          </div>
        </div>
        <ButtonLink href={`/exercices/${session.id}`} variant="secondary">
          {session.status === "en_cours" ? "Reprendre" : "Ouvrir"}
        </ButtonLink>
      </div>

      <div className="mt-4 flex flex-wrap gap-4 text-sm text-muted">
        <p>{session.subdomainLabel}</p>
        <p>{formatSessionMeta(session)}</p>
        {session.answeredQuestions > 0 ? (
          <p>
            {session.answeredQuestions}/{session.questionCount} question
            {session.questionCount > 1 ? "s" : ""} traitée
            {session.answeredQuestions > 1 ? "s" : ""}
          </p>
        ) : null}
        {session.status === "a_revoir" && session.correctRate !== null ? (
          <p className="text-xs text-muted">
            Objectif maîtrise : {MASTERY_THRESHOLD} % — actuellement {session.correctRate} %
          </p>
        ) : null}
      </div>
    </article>
  );
}
