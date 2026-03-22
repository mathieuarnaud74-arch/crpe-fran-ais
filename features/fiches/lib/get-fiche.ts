import { allFiches } from "@/content/fiches/index";
import { allFichesMaths } from "@/content/fiches-maths/index";
import type { Fiche } from "@/features/fiches/types";

export function getAllFiches(): Fiche[] {
  return allFiches;
}

export function getAllFichesMaths(): Fiche[] {
  return allFichesMaths;
}

export function getFicheBySlug(slug: string): Fiche | undefined {
  return allFiches.find((f) => f.slug === slug)
    ?? allFichesMaths.find((f) => f.slug === slug);
}

