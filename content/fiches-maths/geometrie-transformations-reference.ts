import type { Fiche } from "@/features/fiches/types";

export const geometrieTransformationsReference: Fiche = {
  id: "geometrie-transformations-reference",
  slug: "transformations-plan-guide-complet",
  title: "Transformations du plan : guide complet",
  domaine: "geometrie",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "symétrie axiale",
    "symétrie centrale",
    "translation",
    "rotation",
    "homothétie",
    "isométrie",
    "déplacement",
    "antidéplacement",
  ],
  notionsLiees: [
    "geometrie-symetrie-axiale-sprint",
    "geometrie-symetrie-centrale-sprint",
    "geometrie-construire-symetrique-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Cette fiche récapitule les transformations du plan au programme du CRPE : symétries (axiale et centrale), translation, rotation et homothétie. Pour chaque transformation, on précise la définition, les éléments caractéristiques, les propriétés de conservation, et les invariants. La distinction déplacement / antidéplacement est un point clé du concours.",
    sections: [
      {
        id: "symetrie-axiale",
        title: "Symétrie axiale",
        badge: "Antidéplacement",
        blocks: [
          {
            kind: "rule",
            content:
              "La symétrie axiale d'axe (d) transforme un point M en un point M' tel que (d) est la médiatrice du segment [MM']. Tout point de l'axe est invariant.",
            linguisticLogic:
              "La symétrie axiale est un antidéplacement (elle inverse l'orientation). C'est une isométrie (elle conserve les distances).",
          },
          {
            kind: "table",
            caption: "Propriétés de la symétrie axiale",
            headers: ["Conserve", "Ne conserve pas"],
            rows: [
              ["Longueurs (distances)", "Orientation (sens de parcours)"],
              ["Mesures d'angles", ""],
              ["Aires", ""],
              ["Parallélisme et perpendicularité", ""],
              ["Alignement et milieu", ""],
            ],
          },
          {
            kind: "example",
            sentence:
              "Le symétrique d'un segment est un segment de même longueur. Le symétrique d'un cercle est un cercle de même rayon.",
            annotation: "Conservation des longueurs → conservation des figures",
          },
        ],
      },
      {
        id: "symetrie-centrale",
        title: "Symétrie centrale",
        badge: "Déplacement",
        blocks: [
          {
            kind: "rule",
            content:
              "La symétrie centrale de centre O transforme un point M en un point M' tel que O est le milieu de [MM']. C'est une rotation de 180° autour de O.",
            linguisticLogic:
              "La symétrie centrale est un déplacement (elle conserve l'orientation). C'est aussi une isométrie.",
          },
          {
            kind: "example",
            sentence:
              "Le symétrique d'une droite (d) par la symétrie de centre O est une droite parallèle à (d). Si O ∈ (d), la droite est sa propre image.",
            annotation: "Propriété fondamentale : les droites images sont parallèles",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Symétrie centrale ≠ symétrie axiale",
                explanation:
                  "La symétrie centrale conserve l'orientation (déplacement), la symétrie axiale l'inverse (antidéplacement). Le seul point invariant de la symétrie centrale est le centre O.",
              },
            ],
          },
        ],
      },
      {
        id: "translation",
        title: "Translation",
        badge: "Déplacement",
        blocks: [
          {
            kind: "rule",
            content:
              "La translation de vecteur u⃗ transforme un point M en un point M' tel que MM'⃗ = u⃗. Tous les points sont déplacés de la même distance, dans la même direction et le même sens.",
            linguisticLogic:
              "La translation est un déplacement et une isométrie. Elle n'a aucun point invariant (sauf si le vecteur est nul).",
          },
          {
            kind: "table",
            caption: "Propriétés de la translation",
            headers: ["Conserve", "Invariants"],
            rows: [
              ["Longueurs, angles, aires", "Aucun point fixe"],
              ["Orientation", "Les droites parallèles au vecteur"],
              ["Parallélisme", ""],
            ],
          },
          {
            kind: "example",
            sentence:
              "L'image d'un segment [AB] par une translation est un segment [A'B'] parallèle et de même longueur. ABBA' est un parallélogramme (si A, B, A', B' ne sont pas alignés).",
            annotation: "Les « côtés correspondants » forment un parallélogramme",
          },
        ],
      },
      {
        id: "rotation",
        title: "Rotation",
        badge: "Déplacement",
        blocks: [
          {
            kind: "rule",
            content:
              "La rotation de centre O et d'angle α transforme un point M en un point M' tel que OM = OM' et l'angle (OM, OM') = α. Le seul point invariant est le centre O.",
            linguisticLogic:
              "La rotation est un déplacement et une isométrie. La symétrie centrale est le cas particulier α = 180°.",
          },
          {
            kind: "example",
            sentence:
              "L'image du triangle ABC par la rotation de centre O et d'angle 90° est un triangle A'B'C' tel que OA = OA', OB = OB', OC = OC' et chaque angle (OM, OM') = 90°.",
            annotation: "La rotation conserve les longueurs et l'orientation",
          },
        ],
      },
      {
        id: "homothetie",
        title: "Homothétie",
        badge: "Non-isométrie",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "L'homothétie de centre O et de rapport k (k ≠ 0) transforme un point M en un point M' tel que OM'⃗ = k × OM⃗. Si |k| > 1, la figure est agrandie ; si |k| < 1, elle est réduite ; si k < 0, il y a retournement.",
            watchout:
              "L'homothétie n'est PAS une isométrie (sauf si k = 1 ou k = −1). Elle ne conserve pas les longueurs mais conserve les angles et le parallélisme.",
          },
          {
            kind: "table",
            caption: "Propriétés de l'homothétie de rapport k",
            headers: ["Propriété", "Effet"],
            rows: [
              ["Longueurs", "Multipliées par |k|"],
              ["Aires", "Multipliées par k²"],
              ["Volumes", "Multipliés par |k|³"],
              ["Angles", "Conservés"],
              ["Parallélisme", "Conservé"],
              ["Orientation", "Conservée si k > 0, inversée si k < 0"],
            ],
          },
          {
            kind: "tip",
            text: "Le théorème de Thalès est une application directe de l'homothétie : les droites parallèles découpent des segments proportionnels car l'homothétie conserve le parallélisme et multiplie les longueurs par k.",
          },
        ],
      },
      {
        id: "synthese",
        title: "Synthèse comparative",
        badge: "Bilan",
        blocks: [
          {
            kind: "table",
            caption: "Comparaison des transformations du plan",
            headers: [
              "Transformation",
              "Isométrie",
              "Déplacement",
              "Points invariants",
              "Éléments définiteurs",
            ],
            rows: [
              [
                "Symétrie axiale",
                "Oui",
                "Non (antidépl.)",
                "Tout point de l'axe",
                "Un axe (droite)",
              ],
              [
                "Symétrie centrale",
                "Oui",
                "Oui",
                "Le centre seul",
                "Un centre (point)",
              ],
              [
                "Translation",
                "Oui",
                "Oui",
                "Aucun",
                "Un vecteur",
              ],
              [
                "Rotation",
                "Oui",
                "Oui",
                "Le centre seul",
                "Un centre + un angle",
              ],
              [
                "Homothétie",
                "Non (sauf k = ±1)",
                "Si k > 0",
                "Le centre seul",
                "Un centre + un rapport k",
              ],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Isométries du plan : symétrie axiale, symétrie centrale, translation, rotation. Elles conservent toutes les distances.",
      "Déplacements (conservent l'orientation) : symétrie centrale, translation, rotation. Antidéplacement : symétrie axiale.",
      "L'homothétie multiplie les longueurs par |k|, les aires par k², les volumes par |k|³.",
      "La symétrie centrale = rotation de 180°. La symétrie axiale est le seul antidéplacement parmi les transformations du programme.",
      "Savoir construire l'image d'un point par chaque transformation est une compétence clé du CRPE.",
    ],
    quiz: [
      {
        sentence:
          "La translation est un antidéplacement car elle déplace tous les points.",
        isCorrect: false,
        explanation:
          "FAUX. La translation est un déplacement (elle conserve l'orientation). Le fait de « déplacer des points » n'en fait pas un antidéplacement. Seule la symétrie axiale est un antidéplacement parmi les transformations étudiées.",
      },
      {
        sentence:
          "L'homothétie de rapport 2 multiplie les aires par 4.",
        isCorrect: true,
        explanation:
          "VRAI. L'homothétie de rapport k multiplie les aires par k². Ici k = 2, donc les aires sont multipliées par 2² = 4.",
      },
      {
        sentence:
          "La symétrie centrale de centre O est une rotation de 180° autour de O.",
        isCorrect: true,
        explanation:
          "VRAI. Ces deux transformations sont identiques : chaque point M a pour image le point M' tel que O est le milieu de [MM'], ce qui correspond exactement à une rotation d'angle 180°.",
      },
      {
        sentence:
          "La symétrie axiale est la seule isométrie qui ne conserve pas l'orientation.",
        isCorrect: true,
        explanation:
          "VRAI. Parmi les transformations du programme, la symétrie axiale est le seul antidéplacement (elle inverse l'orientation). Les autres isométries (symétrie centrale, translation, rotation) sont des déplacements.",
      },
      {
        sentence:
          "Une homothétie de rapport négatif conserve l'orientation.",
        isCorrect: false,
        explanation:
          "FAUX. Si k < 0, l'homothétie inverse l'orientation (en plus d'agrandir ou réduire). C'est similaire à une homothétie de rapport |k| composée avec une symétrie centrale.",
      },
      {
        sentence:
          "Le composé de deux symétries axiales d'axes parallèles est une translation.",
        isCorrect: true,
        explanation:
          "VRAI. Deux symétries axiales d'axes parallèles composées donnent une translation de vecteur perpendiculaire aux axes et de norme double de la distance entre les axes.",
      },
    ],
  },
};
