import { allFiches } from "@/content/fiches/index";
import type { Fiche } from "@/features/fiches/types";

export function getAllFiches(): Fiche[] {
  return allFiches;
}

export function getFicheBySlug(slug: string): Fiche | undefined {
  return allFiches.find((f) => f.slug === slug);
}

