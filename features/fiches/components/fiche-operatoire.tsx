import { Panel } from "@/components/ui/panel";
import { BlockDecisionTree } from "./blocks/block-decision-tree";
import { FicheQuiz } from "./fiche-quiz";
import type { FicheContentOperatoire } from "@/features/fiches/types";

export function FicheOperatoire({ content }: { content: FicheContentOperatoire }) {
  return (
    <div className="space-y-8">
      <Panel className="bg-accent text-paper">
        <p className="text-xs font-semibold uppercase tracking-[0.18em] text-paper/60">
          Premier réflexe en situation d&apos;examen
        </p>
        <p className="mt-2 font-serif text-xl font-semibold leading-8 text-paper">
          {content.startingQuestion}
        </p>
      </Panel>

      <section className="space-y-4">
        <h2 className="font-serif text-2xl font-semibold text-ink">
          Arbre de décision
        </h2>
        <p className="text-base leading-7 text-muted">
          Parcours l&apos;arbre à voix haute ou mentalement pour chaque participe que
          tu rencontres, jusqu&apos;à ce que le chemin devienne automatique.
        </p>
        <BlockDecisionTree
          block={{ kind: "decision-tree", root: content.decisionTree }}
        />
      </section>

      <section className="space-y-4">
        <h2 className="font-serif text-2xl font-semibold text-ink">
          Exemple fil rouge
        </h2>
        <div className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel">
          <p className="font-serif text-base font-medium text-ink">
            {content.workedExample.phrase}
          </p>
          <div className="mt-5 space-y-2">
            {content.workedExample.steps.map((step, i) => (
              <div key={i} className="flex items-start gap-3">
                <span className="mt-0.5 flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-accent text-[0.6rem] font-bold text-paper">
                  {i + 1}
                </span>
                <p className="text-base leading-6 text-ink">{step}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {content.didacticNote && (
        <section className="space-y-4">
          <h2 className="font-serif text-xl font-semibold text-ink">
            Enseigner ce raisonnement
          </h2>
          <div className="rounded-[1.25rem] border border-accentSecondary/25 bg-accentSecondarySoft px-5 py-4">
            <p className="text-base leading-7 text-accentSecondaryDark">
              {content.didacticNote}
            </p>
          </div>
        </section>
      )}

      {content.quiz.length > 0 && (
        <section className="space-y-4">
          <h2 className="font-serif text-2xl font-semibold text-ink">
            Entraînement procédural
          </h2>
          <p className="text-base leading-7 text-muted">
            Pour chaque phrase, trace mentalement le chemin dans l&apos;arbre AVANT de
            répondre. Le feedback t&apos;indique si tu as suivi le bon raisonnement.
          </p>
          <FicheQuiz items={content.quiz} />
        </section>
      )}
    </div>
  );
}
