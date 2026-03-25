import { memo } from "react";

import { Mocca } from "@/components/mascot/mocca";
import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { cn } from "@/lib/utils";
import type { RevisionSession } from "@/types/domain";
import type { SessionResult } from "./exercise-reducer";
import { ExerciseReviewCard } from "./exercise-review-card";

type ExerciseResultsPanelProps = {
  session: RevisionSession;
  results: Record<string, SessionResult>;
  score: number;
  correctPercent: number;
  weakAreas: Array<{ label: string; count: number }>;
  expandedReviewCard: string | null;
  onToggleReviewCard: (questionId: string) => void;
  onResetSession: () => void;
  nextSession: { id: string; title: string } | null;
  onNewSession?: () => void;
};

export const ExerciseResultsPanel = memo(function ExerciseResultsPanel({
  session,
  results,
  score,
  correctPercent,
  weakAreas,
  expandedReviewCard,
  onToggleReviewCard,
  onResetSession,
  nextSession,
  onNewSession,
}: ExerciseResultsPanelProps) {
  return (
    <Panel
      className={cn(
        "border-border bg-card",
        correctPercent >= MASTERY_THRESHOLD && "border-successBorder/50",
      )}
    >
      <div className="space-y-6">
        {correctPercent >= MASTERY_THRESHOLD && (
          <div className="animate-score-reveal flex items-center gap-3 rounded-[1.25rem] border border-successBorder bg-successBg px-5 py-4">
            <span className="text-2xl" aria-hidden="true">
              {score === session.questionCount ? "\uD83C\uDFC6" : "\uD83C\uDF1F"}
            </span>
            <div>
              <p className="text-sm font-bold text-pine">
                {score === session.questionCount
                  ? "Score parfait ! Vous ma\u00eetrisez ce sujet."
                  : "S\u00e9rie ma\u00eetris\u00e9e ! Beau travail."}
              </p>
              <p className="text-xs text-pine/70">
                {score === session.questionCount
                  ? "Toutes les r\u00e9ponses sont correctes. Impressionnant !"
                  : `${score}/${session.questionCount} bonnes r\u00e9ponses \u2014 vous avez d\u00e9pass\u00e9 le seuil de ${MASTERY_THRESHOLD}\u00a0%.`}
              </p>
            </div>
          </div>
        )}

        <div className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
          <div className="flex items-start gap-5">
            <Mocca
              variant={
                correctPercent >= 80
                  ? "happy"
                  : correctPercent >= 50
                    ? "neutral"
                    : "grumpy"
              }
              size="xl"
              className="hidden shrink-0 sm:block"
            />
            <div>
              <div className="flex flex-wrap items-center gap-2">
                <Badge tone={score === session.questionCount ? "success" : "accent"}>
                  S&eacute;rie termin&eacute;e
                </Badge>
                {correctPercent >= MASTERY_THRESHOLD ? (
                  <Badge tone="success" className="animate-mastery-shine">S&eacute;rie ma&icirc;tris&eacute;e ✓</Badge>
                ) : (
                  <Badge tone="neutral">
                    Objectif ma&icirc;trise&nbsp;: {MASTERY_THRESHOLD}&nbsp;%
                  </Badge>
                )}
              </div>
              <h2 className="animate-score-reveal mt-3 font-serif text-2xl font-semibold text-ink sm:text-3xl">
                Score final : {score} / {session.questionCount}
              </h2>
              <p className="mt-2 text-sm font-medium text-muted">
                {correctPercent >= 90
                  ? "Excellent ! Vous ma\u00eetrisez ce domaine. Continuez \u00e0 consolider vos acquis."
                  : correctPercent >= 80
                    ? "Tr\u00e8s bon travail ! Mocca est impressionn\u00e9. Quelques ajustements et ce sera parfait."
                    : correctPercent >= 60
                      ? "Bon effort ! Vous \u00eates sur la bonne voie. Retravaillez les points fragiles ci-dessous."
                      : correctPercent >= 40
                        ? "C\u2019est un d\u00e9but. Relisez les corrections et r\u00e9essayez \u2014 chaque erreur est une le\u00e7on."
                        : "Courage ! Ce sujet demande du travail, mais la persévérance paie. Mocca croit en vous."}
              </p>
              <p className="mt-2 max-w-2xl text-sm leading-7 text-muted">
                Retrouvez ci-dessous les corrections compl&egrave;tes, les erreurs
                fr&eacute;quentes et les points essentiels &agrave; retenir.
              </p>
            </div>
          </div>
          <div className="flex flex-wrap gap-3">
            {onNewSession && (
              <Button type="button" onClick={onNewSession} className="w-full sm:w-auto">
                Nouvelle s&eacute;rie al&eacute;atoire &rarr;
              </Button>
            )}
            {nextSession && (
              <ButtonLink href={`/exercices/${nextSession.id}`} className="w-full sm:w-auto">
                Série suivante &rarr;
              </ButtonLink>
            )}
            <Button type="button" onClick={onResetSession} variant="secondary" className="w-full sm:w-auto">
              Recommencer
            </Button>
          </div>
        </div>

        <div className="grid gap-4 lg:grid-cols-2">
          <div className="space-y-4">
            <div className="rounded-[1.5rem] border border-border bg-paper p-5">
              <h3 className="font-serif text-2xl font-semibold text-ink">Bilan de la s&eacute;rie</h3>
              <p className="mt-3 text-sm leading-7 text-muted">
                <span className="font-semibold text-ink">Comp&eacute;tence travaill&eacute;e :</span>{" "}
                {session.completionSummary.skill}
              </p>
              <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                {session.completionSummary.keyPoints.map((item) => (
                  <li key={item} className="rounded-xl border border-border bg-card px-4 py-3">
                    {item}
                  </li>
                ))}
              </ul>
              <p className="mt-4 text-sm leading-7 text-muted">
                <span className="font-semibold text-ink">Conseil de reprise :</span>{" "}
                {session.completionSummary.retryAdvice}
              </p>
            </div>
            <div className="rounded-[1.5rem] border border-border bg-paper p-5">
              <h3 className="font-serif text-2xl font-semibold text-ink">Axes de reprise</h3>
              {weakAreas.length === 0 ? (
                <div className="mt-3 flex items-center gap-3 rounded-xl border border-successBorder bg-successBg px-4 py-3">
                  <span className="text-lg" aria-hidden="true">&#x2728;</span>
                  <p className="text-sm leading-7 text-pine">
                    Z&eacute;ro erreur ! Vous pouvez passer &agrave; une
                    s&eacute;rie plus exigeante ou consolider avec une r&eacute;vision.
                  </p>
                </div>
              ) : (
                <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                  {weakAreas.map(({ label, count }) => (
                    <li key={label} className="rounded-xl border border-border bg-card px-4 py-3">
                      <span className="font-semibold text-ink">{label}</span>
                      <span className="ml-2 text-xs text-muted">
                        — {count} question{count > 1 ? "s" : ""} à retravailler
                      </span>
                    </li>
                  ))}
                </ul>
              )}
            </div>
          </div>
          <div className="space-y-4">
            {session.questions.map((question, index) => {
              const qResult = results[question.id];
              if (!qResult) return null;
              return (
                <ExerciseReviewCard
                  key={question.id}
                  question={question}
                  result={qResult}
                  index={index}
                  isExpanded={expandedReviewCard === question.id}
                  onToggle={() => onToggleReviewCard(question.id)}
                />
              );
            })}
          </div>
        </div>
      </div>
    </Panel>
  );
});
