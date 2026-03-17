import { Clock } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";
import type { Fiche } from "@/features/fiches/types";

const DOMAINE_LABELS: Record<string, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Compréhension",
  analyse_langue: "Analyse",
  didactique_francais: "Didactique",
};

const DIFFICULTE_LABELS: Record<string, string> = {
  debutant: "Débutant",
  intermediaire: "Intermédiaire",
  avance: "Avancé",
};

const MODEL_LABELS: Record<string, string> = {
  reference: "Fiche Référence",
  sprint: "Sprint 5 min",
  operatoire: "Carte opératoire",
};

export function FicheHeader({ fiche }: { fiche: Fiche }) {
  return (
    <div className="space-y-4">
      <div className="flex flex-wrap items-center gap-2">
        <Badge
          tone={fiche.domaine === "didactique_francais" ? "accentSecondary" : "accent"}
        >
          {DOMAINE_LABELS[fiche.domaine] ?? fiche.domaine}
        </Badge>
        <Badge tone="neutral">{MODEL_LABELS[fiche.model]}</Badge>
        <Badge tone="neutral">{DIFFICULTE_LABELS[fiche.difficulte]}</Badge>
        {fiche.utilite === "haute" && (
          <Badge tone="accentSecondary">Haute utilité concours</Badge>
        )}
        {fiche.accessTier === "premium" && (
          <Badge tone="warning">Premium</Badge>
        )}
      </div>

      <div>
        <h1 className="font-serif text-3xl font-semibold text-ink sm:text-4xl">
          {fiche.title}
        </h1>
        {fiche.subtitle && (
          <p className="mt-2 text-sm leading-7 text-muted">{fiche.subtitle}</p>
        )}
      </div>

      <div className="flex items-center gap-1.5 text-xs text-muted">
        <Clock className="h-3.5 w-3.5 shrink-0" aria-hidden="true" />
        <span>{fiche.estimatedMinutes} min de lecture</span>
      </div>

      {fiche.tags.length > 0 && (
        <div className="flex flex-wrap gap-1.5">
          {fiche.tags.map((tag) => (
            <span
              key={tag}
              className={cn(
                "rounded-full border border-border bg-paper px-3 py-1 text-xs text-muted",
              )}
            >
              {tag}
            </span>
          ))}
        </div>
      )}
    </div>
  );
}
