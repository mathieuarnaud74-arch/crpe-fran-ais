import type { Fiche } from "@/features/fiches/types";

export const geometrieRotationTranslationSprint: Fiche = {
  id: "geometrie-rotation-translation-sprint",
  slug: "rotation-translation-proprietes-constructions",
  title: "Rotation et translation : propriétés et constructions",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "rotation",
    "translation",
    "transformation",
    "isométrie",
    "conservation",
    "vecteur",
    "centre",
    "angle",
  ],
  notionsLiees: [
    "geometrie-transformations-reference",
    "geometrie-symetrie-axiale-sprint",
    "geometrie-symetrie-centrale-sprint",
    "geometrie-construire-symetrique-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la rotation et la translation. Pour un panorama complet des transformations (symétries, homothétie incluses), consulte la fiche Référence « Transformations ».",
    oneLiner:
      "La translation « glisse » chaque point dans la même direction, le même sens et la même distance (caractérisée par un vecteur). La rotation « tourne » chaque point autour d'un centre fixe selon un angle donné et un sens (horaire ou antihoraire). Les deux conservent les longueurs, les angles et les aires (ce sont des isométries).",
    exampleCorrect: {
      sentence:
        "La translation de vecteur AB transforme tout point M en M' tel que MM' = AB (même direction, même sens, même longueur). Le quadrilatère ABM'M est un parallélogramme.",
      explanation:
        "C'est la propriété caractéristique de la translation : les segments [MM'] sont tous parallèles, de même sens et de même longueur que [AB]. La figure et son image sont superposables par glissement. ✓",
    },
    exampleWrong: {
      sentence:
        "La rotation de centre O et d'angle 90° transforme A en A'. Donc OA' = 2 × OA car le point a « tourné ».",
      explanation:
        "FAUX. La rotation conserve les distances au centre : OA' = OA (pas le double). C'est une isométrie. Le point A' se trouve sur le cercle de centre O et de rayon OA, à 90° de A.",
    },
    mainTrap:
      "Confondre rotation et homothétie. La rotation conserve les distances (isométrie), tandis que l'homothétie les multiplie par un coefficient k. Autre piège : oublier le sens de rotation. Au CRPE, « rotation de 90° dans le sens direct » (antihoraire) et « rotation de 90° dans le sens horaire » donnent des images différentes. Toujours préciser le sens.",
    quiz: [
      {
        sentence:
          "La translation conserve les longueurs, les angles et le parallélisme.",
        isCorrect: true,
        explanation:
          "VRAI. La translation est une isométrie : elle conserve toutes les propriétés métriques. Un triangle et son image par translation sont superposables.",
      },
      {
        sentence:
          "La rotation de centre O et d'angle 180° est identique à la symétrie centrale de centre O.",
        isCorrect: true,
        explanation:
          "VRAI. Tourner de 180° autour de O revient exactement à prendre le symétrique par rapport à O. C'est un cas particulier important.",
      },
      {
        sentence:
          "Dans une translation, chaque point se déplace dans une direction différente.",
        isCorrect: false,
        explanation:
          "FAUX. Dans une translation, tous les points se déplacent dans la même direction, le même sens et sur la même distance. C'est un « glissement » uniforme de toute la figure.",
      },
      {
        sentence:
          "La rotation d'angle 90° dans le sens direct transforme le point (3 ; 0) en (0 ; 3) si le centre est l'origine.",
        isCorrect: true,
        explanation:
          "VRAI. La rotation de 90° antihoraire autour de l'origine transforme (x ; y) en (−y ; x). Donc (3 ; 0) → (0 ; 3).",
      },
      {
        sentence:
          "La composée de deux translations est toujours une translation.",
        isCorrect: true,
        explanation:
          "VRAI. La composée de la translation de vecteur u⃗ suivie de la translation de vecteur v⃗ est la translation de vecteur u⃗ + v⃗. Les translations forment un groupe pour la composition.",
      },
    ],
  },
};
