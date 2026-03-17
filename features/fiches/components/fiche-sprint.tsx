import Link from "next/link";
import { AlertTriangle, ArrowRight } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { FicheQuiz } from "./fiche-quiz";
import type { FicheContentSprint } from "@/features/fiches/types";

export function FicheSprint({ content }: { content: FicheContentSprint }) {
  return (
    <div className="space-y-5">
      <div className="rounded-[1.25rem] border border-warningBorder bg-warningBg px-5 py-4">
        <div className="flex items-start gap-2">
          <AlertTriangle className="mt-0.5 h-4 w-4 shrink-0 text-warning" aria-hidden="true" />
          <p className="text-xs leading-5 text-ink/80">
            <span className="font-semibold">Révision rapide uniquement. </span>
            {content.disclaimer}
            {content.linkToReference && (
              <>
                {" "}
                <Link
                  href={`/fiches/${content.linkToReference}`}
                  className="inline-flex items-center gap-1 font-semibold text-accentDark underline underline-offset-2"
                >
                  Fiche complète
                  <ArrowRight className="h-3 w-3" aria-hidden="true" />
                </Link>
              </>
            )}
          </p>
        </div>
      </div>

      <div className="rounded-[1.75rem] bg-accent px-7 py-8 text-center shadow-elevated">
        <p className="text-xs font-semibold uppercase tracking-[0.18em] text-paper/60">
          La règle essentielle
        </p>
        <p className="mt-3 font-serif text-lg font-semibold leading-8 text-paper sm:text-xl">
          {content.oneLiner}
        </p>
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        <div className="rounded-[1.25rem] border-2 border-successBorder bg-successBg p-5">
          <p className="mb-1.5 text-xs font-semibold uppercase tracking-[0.12em] text-pine">
            ✓ Correct
          </p>
          <p className="font-serif text-sm font-medium leading-6 text-ink">
            {content.exampleCorrect.sentence}
          </p>
          <p className="mt-2 text-xs leading-5 text-pine/80">
            {content.exampleCorrect.explanation}
          </p>
        </div>

        <div className="rounded-[1.25rem] border-2 border-errorBorder bg-errorBg p-5">
          <p className="mb-1.5 text-xs font-semibold uppercase tracking-[0.12em] text-error">
            ✗ Incorrect
          </p>
          <p className="font-serif text-sm font-medium leading-6 text-ink">
            {content.exampleWrong.sentence}
          </p>
          <p className="mt-2 text-xs leading-5 text-error/80">
            {content.exampleWrong.explanation}
          </p>
        </div>
      </div>

      <div className="rounded-[1.25rem] border border-warningBorder bg-warningBg px-5 py-4">
        <div className="flex items-start gap-3">
          <Badge tone="warning" size="sm">Piège CRPE</Badge>
          <p className="text-sm leading-6 text-ink">{content.mainTrap}</p>
        </div>
      </div>

      {content.quiz.length > 0 && (
        <div className="space-y-4">
          <h2 className="font-serif text-xl font-semibold text-ink">
            Test d'activation
          </h2>
          <p className="text-xs leading-5 text-muted">
            Ces questions valident que la notion est activée en mémoire. Réponds
            sans relire la règle ci-dessus.
          </p>
          <FicheQuiz items={content.quiz} />
        </div>
      )}
    </div>
  );
}
