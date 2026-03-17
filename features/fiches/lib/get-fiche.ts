import { allFiches } from "@/content/fiches/index";
import type { Fiche, FicheDomaine, FicheModel } from "@/features/fiches/types";

export function getAllFiches(): Fiche[] {
  return allFiches;
}

export function getFicheBySlug(slug: string): Fiche | undefined {
  return allFiches.find((f) => f.slug === slug);
}

export function getFichesByDomaine(domaine: FicheDomaine): Fiche[] {
  return allFiches.filter((f) => f.domaine === domaine);
}

export function getFichesByModel(model: FicheModel): Fiche[] {
  return allFiches.filter((f) => f.model === model);
}
