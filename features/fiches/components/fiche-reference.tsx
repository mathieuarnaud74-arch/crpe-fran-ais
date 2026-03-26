import { Panel } from "@/components/ui/panel";
import { FicheBlockRenderer } from "./fiche-block-renderer";
import { FicheQuiz } from "./fiche-quiz";
import type { FicheContentReference } from "@/features/fiches/types";

export function FicheReference({ content }: { content: FicheContentReference }) {
  return (
    <div className="space-y-8">
      <Panel>
        <p className="text-base leading-7 text-muted">{content.intro}</p>
      </Panel>

      {content.sections.map((section) => (
        <section key={section.id} id={section.id} className="scroll-mt-6 space-y-4">
          <div className="flex flex-wrap items-center gap-3">
            <h2 className="font-serif text-2xl font-semibold text-ink">
              {section.title}
            </h2>
            {section.badge && (
              <span className="rounded-full border border-border bg-paper px-3 py-1 text-xs font-medium text-muted">
                {section.badge}
              </span>
            )}
          </div>

          {section.collapsible ? (
            <details className="group rounded-[1.25rem] border border-border bg-card shadow-panel sm:rounded-[1.75rem]">
              <summary className="cursor-pointer list-none px-4 py-4 sm:px-6 sm:py-5">
                <div className="flex items-center justify-between gap-4">
                  <p className="text-base font-medium text-muted">
                    Cliquer pour afficher les cas avancés
                  </p>
                  <span className="text-xs text-muted group-open:hidden">Afficher</span>
                  <span className="hidden text-xs text-muted group-open:inline">Masquer</span>
                </div>
              </summary>
              <div className="space-y-4 px-6 pb-6">
                {section.blocks.map((block, i) => (
                  <FicheBlockRenderer key={i} block={block} />
                ))}
              </div>
            </details>
          ) : (
            <div className="space-y-4">
              {section.blocks.map((block, i) => (
                <FicheBlockRenderer key={i} block={block} />
              ))}
            </div>
          )}
        </section>
      ))}

      {content.keyPoints.length > 0 && (
        <Panel className="bg-secondary">
          <p className="mb-4 text-xs font-semibold uppercase tracking-[0.16em] text-muted">
            Points clés à retenir
          </p>
          <ul className="space-y-2">
            {content.keyPoints.map((point, i) => (
              <li key={i} className="flex items-start gap-3">
                <span className="mt-1 flex h-4 w-4 shrink-0 items-center justify-center rounded-full bg-accent text-[0.6rem] font-bold text-paper">
                  {i + 1}
                </span>
                <p className="text-base leading-6 text-ink">{point}</p>
              </li>
            ))}
          </ul>
        </Panel>
      )}

      {content.quiz.length > 0 && (
        <section id="quiz" className="scroll-mt-6 space-y-4">
          <h2 className="font-serif text-2xl font-semibold text-ink">
            Test de compréhension
          </h2>
          <p className="text-base leading-7 text-muted">
            Chaque phrase est-elle correcte ou incorrecte ? Un feedback explicatif
            s&apos;affiche après ta réponse.
          </p>
          <FicheQuiz items={content.quiz} />
        </section>
      )}
    </div>
  );
}
