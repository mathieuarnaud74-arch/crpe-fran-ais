import Link from "next/link";
import { Clock, ChevronRight } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import type { Fiche } from "@/features/fiches/types";

export const DOMAINE_LABELS: Record<string, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Compréhension",
  analyse_langue: "Analyse",
  didactique_francais: "Didactique",
};

export const MODEL_LABELS: Record<string, string> = {
  reference: "Référence",
  sprint: "Sprint",
  operatoire: "Opératoire",
};

const DIFFICULTE_LABELS: Record<string, string> = {
  debutant: "Débutant",
  intermediaire: "Intermédiaire",
  avance: "Avancé",
};

export function FicheRow({ fiche }: { fiche: Fiche }) {
  return (
    <Link
      href={`/fiches/${fiche.slug}`}
      className="group flex items-center gap-4 rounded-[1.1rem] border border-border bg-card px-5 py-4 transition-shadow hover:shadow-panel"
    >
      <div className="min-w-0 flex-1">
        <div className="flex flex-wrap items-center gap-1.5">
          <Badge size="sm" tone="neutral">{MODEL_LABELS[fiche.model]}</Badge>
          {fiche.accessTier === "premium" && (
            <Badge size="sm" tone="warning">Premium</Badge>
          )}
        </div>
        <p className="mt-1.5 font-serif text-base font-semibold leading-snug text-ink transition-colors group-hover:text-accentDark">
          {fiche.title}
        </p>
        {fiche.subtitle && (
          <p className="mt-0.5 line-clamp-1 text-xs text-muted">{fiche.subtitle}</p>
        )}
      </div>

      <div className="flex shrink-0 items-center gap-4">
        <div className="hidden flex-col items-end gap-1 sm:flex">
          <span className="text-xs text-muted">{DIFFICULTE_LABELS[fiche.difficulte]}</span>
          <div className="flex items-center gap-1 text-xs text-muted">
            <Clock className="h-3 w-3 shrink-0" aria-hidden="true" />
            <span>{fiche.estimatedMinutes} min</span>
          </div>
        </div>
        <ChevronRight className="h-4 w-4 shrink-0 text-muted transition-transform group-hover:translate-x-0.5 group-hover:text-accent" aria-hidden="true" />
      </div>
    </Link>
  );
}

export function FicheCard({ fiche }: { fiche: Fiche }) {
  return (
    <Link
      href={`/fiches/${fiche.slug}`}
      className="group flex flex-col rounded-[1.75rem] border border-border bg-card p-5 shadow-panel transition-shadow hover:shadow-elevated"
    >
      <div className="flex flex-wrap items-center gap-1.5">
        <Badge
          size="sm"
          tone={fiche.domaine === "didactique_francais" ? "accentSecondary" : "accent"}
        >
          {DOMAINE_LABELS[fiche.domaine] ?? fiche.domaine}
        </Badge>
        <Badge size="sm" tone="neutral">{MODEL_LABELS[fiche.model]}</Badge>
        {fiche.accessTier === "premium" && (
          <Badge size="sm" tone="warning">Premium</Badge>
        )}
      </div>

      <h3 className="mt-3 font-serif text-lg font-semibold leading-snug text-ink transition-colors group-hover:text-accentDark">
        {fiche.title}
      </h3>

      {fiche.subtitle && (
        <p className="mt-1 line-clamp-2 text-xs leading-5 text-muted">{fiche.subtitle}</p>
      )}

      <div className="mt-auto pt-4">
        <div className="flex items-center justify-between gap-2">
          <div className="flex items-center gap-1 text-xs text-muted">
            <Clock className="h-3 w-3 shrink-0" aria-hidden="true" />
            <span>{fiche.estimatedMinutes} min</span>
          </div>
          <span className="text-xs text-muted">{DIFFICULTE_LABELS[fiche.difficulte]}</span>
        </div>

        {fiche.tags.length > 0 && (
          <div className="mt-3 flex flex-wrap gap-1">
            {fiche.tags.slice(0, 3).map((tag) => (
              <span
                key={tag}
                className="rounded-full border border-border bg-paper px-2.5 py-0.5 text-[0.65rem] text-muted"
              >
                {tag}
              </span>
            ))}
          </div>
        )}
      </div>
    </Link>
  );
}
