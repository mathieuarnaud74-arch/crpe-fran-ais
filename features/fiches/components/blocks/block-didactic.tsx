import { BookOpen, AlertCircle, CheckCircle2, XCircle } from "lucide-react";
import type { BlockDidactic } from "@/features/fiches/types";

export function BlockDidactic({ block }: { block: BlockDidactic }) {
  return (
    <div className="space-y-5">
      <div className="rounded-[1.25rem] border border-accentSecondary/25 bg-accentSecondarySoft p-5">
        <div className="mb-4 flex items-center gap-2">
          <BookOpen className="h-4 w-4 shrink-0 text-accentSecondary" aria-hidden="true" />
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondaryDark">
            Progressivité dans les programmes
          </p>
        </div>
        <div className="space-y-3">
          {block.cycleEntries.map((entry) => (
            <div key={entry.cycle} className="grid gap-2 sm:grid-cols-[140px_1fr]">
              <p className="text-xs font-semibold text-accentSecondaryDark">{entry.cycle}</p>
              <p className="text-xs leading-5 text-accentSecondaryDark/80">{entry.content}</p>
            </div>
          ))}
        </div>
      </div>

      <div className="rounded-[1.25rem] border border-warningBorder bg-warningBg p-5">
        <div className="mb-3 flex items-center gap-2">
          <AlertCircle className="h-4 w-4 shrink-0 text-warning" aria-hidden="true" />
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-warning">
            Représentations erronées fréquentes chez les élèves
          </p>
        </div>
        <ul className="space-y-1.5">
          {block.studentErrors.map((err, i) => (
            <li key={i} className="flex items-start gap-2 text-xs leading-5 text-ink/80">
              <span className="mt-0.5 shrink-0 text-warning">—</span>
              {err}
            </li>
          ))}
        </ul>
      </div>

      <div className="rounded-[1.25rem] border border-successBorder bg-successBg p-5">
        <div className="mb-3 flex items-center gap-2">
          <CheckCircle2 className="h-4 w-4 shrink-0 text-pine" aria-hidden="true" />
          <p className="text-xs font-semibold uppercase tracking-[0.14em] text-pine">
            Activités recommandées
          </p>
        </div>
        <ul className="space-y-1.5">
          {block.activities.map((act, i) => (
            <li key={i} className="flex items-start gap-2 text-xs leading-5 text-pine/80">
              <span className="mt-0.5 shrink-0 text-pine">—</span>
              {act}
            </li>
          ))}
        </ul>
      </div>

      {block.toAvoid && block.toAvoid.length > 0 && (
        <div className="rounded-[1.25rem] border border-errorBorder bg-errorBg p-5">
          <div className="mb-3 flex items-center gap-2">
            <XCircle className="h-4 w-4 shrink-0 text-error" aria-hidden="true" />
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-error">
              À éviter
            </p>
          </div>
          <ul className="space-y-1.5">
            {block.toAvoid.map((item, i) => (
              <li key={i} className="flex items-start gap-2 text-xs leading-5 text-error/80">
                <span className="mt-0.5 shrink-0 text-error">—</span>
                {item}
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}
