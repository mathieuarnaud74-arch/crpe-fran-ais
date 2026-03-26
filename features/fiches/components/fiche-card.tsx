import Link from "next/link";
import { Check, ChevronRight, Lock } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";
import type { Fiche } from "@/features/fiches/types";

export const DOMAINE_LABELS: Record<string, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Compréhension",
  analyse_langue: "Analyse",
  didactique_francais: "Didactique",
  nombres_calcul: "Nombres et calcul",
  geometrie: "Géométrie",
  grandeurs_mesures: "Grandeurs et mesures",
  organisation_donnees: "Données",
  didactique_maths: "Didactique maths",
};

export const MODEL_LABELS: Record<string, string> = {
  reference: "Référence",
  sprint: "Révision express",
  operatoire: "Opératoire",
};

const DIFFICULTE_LABELS: Record<string, string> = {
  debutant: "Débutant",
  intermediaire: "Intermédiaire",
  avance: "Avancé",
};

type FicheRowProps = {
  fiche: Fiche;
  completed?: boolean;
  locked?: boolean;
  lockReason?: "premium" | "quota";
};

export function FicheRow({ fiche, completed, locked, lockReason }: FicheRowProps) {
  if (locked) {
    return (
      <span
        className="group flex items-center gap-2.5 rounded-lg px-2.5 py-1.5 opacity-55 cursor-default"
        title={
          lockReason === "premium"
            ? "Fiche réservée aux abonnés premium"
            : "Quota de fiches gratuites atteint pour aujourd'hui"
        }
      >
        <span className="flex h-5 w-5 shrink-0 items-center justify-center">
          <Lock className="h-3.5 w-3.5 text-muted" aria-label="Verrouillée" />
        </span>
        <span className="font-serif text-xl font-medium leading-snug text-muted">
          {fiche.title}
        </span>
        {lockReason === "premium" && (
          <Badge size="sm" tone="accent">Premium</Badge>
        )}
      </span>
    );
  }

  return (
    <Link
      href={`/fiches/${fiche.slug}`}
      className={cn(
        "group/row flex items-center gap-2.5 rounded-lg px-2.5 py-1.5 transition-colors",
        completed
          ? "bg-successBg/60"
          : "hover:bg-paper",
      )}
    >
      {completed ? (
        <span className="flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-pine/15">
          <Check className="h-3 w-3 text-pine" strokeWidth={3} aria-label="Lue" />
        </span>
      ) : (
        <span className="flex h-5 w-5 shrink-0 items-center justify-center">
          <ChevronRight className="h-3.5 w-3.5 -translate-x-0.5 text-transparent transition-all group-hover/row:translate-x-0 group-hover/row:text-accent" aria-hidden="true" />
        </span>
      )}
      <span className={cn(
        "font-serif text-xl font-medium leading-snug transition-colors group-hover/row:text-accent",
        completed ? "text-pine/80" : "text-ink",
      )}>
        {fiche.title}
      </span>
      {fiche.accessTier === "premium" && (
        <Lock className="h-3 w-3 shrink-0 text-muted/60" aria-label="Premium" />
      )}
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
        <div className="flex items-center justify-end gap-2">
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
