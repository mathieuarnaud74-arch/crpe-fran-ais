import type { Fiche } from "@/features/fiches/types";

export const geometrieFiguresPlanesReference: Fiche = {
  id: "geometrie-figures-planes-reference",
  slug: "figures-planes-proprietes-completes",
  title: "Figures planes : propriétés complètes",
  domaine: "geometrie",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "triangle",
    "quadrilatère",
    "cercle",
    "polygone régulier",
    "propriétés",
    "classification",
    "aire",
    "périmètre",
  ],
  notionsLiees: [
    "geometrie-triangles-sprint",
    "geometrie-quadrilateres-sprint",
    "geometrie-cercle-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Cette fiche récapitule les propriétés essentielles des figures planes au programme du CRPE : triangles, quadrilatères particuliers, cercle et polygones réguliers. Elle sert de référence pour retrouver rapidement une propriété, une formule d'aire ou de périmètre, ou pour vérifier une classification.",
    sections: [
      {
        id: "triangles",
        title: "Les triangles",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "Un triangle est un polygone à 3 côtés. La somme de ses angles intérieurs vaut 180°. L'inégalité triangulaire impose que chaque côté soit strictement inférieur à la somme des deux autres.",
          },
          {
            kind: "table",
            caption: "Classification des triangles",
            headers: ["Type", "Côtés", "Angles", "Propriété remarquable"],
            rows: [
              [
                "Scalène",
                "3 côtés différents",
                "3 angles différents",
                "Aucune symétrie",
              ],
              [
                "Isocèle",
                "2 côtés égaux",
                "2 angles à la base égaux",
                "1 axe de symétrie (la hauteur issue du sommet principal)",
              ],
              [
                "Équilatéral",
                "3 côtés égaux",
                "3 angles de 60°",
                "3 axes de symétrie, centre de symétrie par rotation 120°",
              ],
              [
                "Rectangle",
                "—",
                "1 angle droit (90°)",
                "L'hypoténuse est le plus grand côté ; théorème de Pythagore",
              ],
              [
                "Rectangle isocèle",
                "2 côtés égaux (les cathètes)",
                "Angles : 90°, 45°, 45°",
                "1 axe de symétrie (la médiane de l'hypoténuse)",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Formule d'aire du triangle : A = (base × hauteur) / 2. La hauteur est toujours perpendiculaire à la base choisie.",
          },
        ],
      },
      {
        id: "quadrilateres",
        title: "Les quadrilatères particuliers",
        badge: "Classification",
        blocks: [
          {
            kind: "rule",
            content:
              "Les quadrilatères particuliers s'organisent en hiérarchie d'inclusion. Tout carré est un losange et un rectangle ; tout rectangle et tout losange sont des parallélogrammes ; tout parallélogramme est un trapèze (au sens large). La somme des angles intérieurs d'un quadrilatère vaut 360°.",
          },
          {
            kind: "table",
            caption: "Propriétés des quadrilatères particuliers",
            headers: [
              "Figure",
              "Côtés",
              "Angles",
              "Diagonales",
              "Axes de symétrie",
            ],
            rows: [
              [
                "Trapèze",
                "1 paire de côtés parallèles (les bases)",
                "—",
                "—",
                "0 (sauf trapèze isocèle : 1)",
              ],
              [
                "Parallélogramme",
                "Côtés opposés // et égaux",
                "Angles opposés égaux",
                "Se coupent en leur milieu",
                "0 (mais centre de symétrie)",
              ],
              [
                "Rectangle",
                "Côtés opposés // et égaux",
                "4 angles droits",
                "Même longueur, se coupent en leur milieu",
                "2 (médiatrices des côtés)",
              ],
              [
                "Losange",
                "4 côtés égaux",
                "Angles opposés égaux",
                "Perpendiculaires, se coupent en leur milieu",
                "2 (les diagonales)",
              ],
              [
                "Carré",
                "4 côtés égaux",
                "4 angles droits",
                "Même longueur, perpendiculaires, se coupent en leur milieu",
                "4 (2 médiatrices + 2 diagonales)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Trapèze vs parallélogramme",
                explanation:
                  "Selon la convention Éduscol (sens exclusif), le trapèze a exactement une paire de côtés parallèles. Le parallélogramme n'est donc pas un trapèze au sens strict.",
              },
            ],
          },
        ],
      },
      {
        id: "cercle",
        title: "Le cercle",
        badge: "Courbe",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cercle de centre O et de rayon r est l'ensemble des points M tels que OM = r. Le disque est la surface délimitée par le cercle (cercle + intérieur).",
          },
          {
            kind: "table",
            caption: "Vocabulaire et formules du cercle",
            headers: ["Élément", "Définition / Formule"],
            rows: [
              ["Rayon (r)", "Segment du centre à un point du cercle"],
              ["Diamètre (d)", "d = 2r ; plus grande corde du cercle"],
              ["Corde", "Segment joignant deux points du cercle"],
              ["Arc", "Portion du cercle délimitée par deux points"],
              ["Périmètre", "P = 2πr = πd"],
              ["Aire du disque", "A = πr²"],
            ],
          },
          {
            kind: "rule",
            content:
              "Théorème de l'angle inscrit : un angle inscrit dans un cercle est égal à la moitié de l'angle au centre qui intercepte le même arc. Corollaire : tout angle inscrit dans un demi-cercle est un angle droit.",
          },
        ],
      },
      {
        id: "polygones-reguliers",
        title: "Polygones réguliers",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Un polygone régulier a tous ses côtés égaux et tous ses angles égaux. Il est inscriptible dans un cercle. La somme des angles intérieurs d'un polygone à n côtés est (n − 2) × 180°.",
          },
          {
            kind: "table",
            caption: "Polygones réguliers courants",
            headers: ["Polygone", "n côtés", "Angle intérieur", "Axes de symétrie"],
            rows: [
              ["Triangle équilatéral", "3", "60°", "3"],
              ["Carré", "4", "90°", "4"],
              ["Pentagone régulier", "5", "108°", "5"],
              ["Hexagone régulier", "6", "120°", "6"],
              ["Octogone régulier", "8", "135°", "8"],
            ],
          },
          {
            kind: "tip",
            text: "L'hexagone régulier est particulièrement important : il est décomposable en 6 triangles équilatéraux, et son côté est égal au rayon du cercle circonscrit.",
          },
        ],
      },
      {
        id: "formules-aires",
        title: "Récapitulatif des formules d'aire",
        badge: "Formules",
        blocks: [
          {
            kind: "table",
            caption: "Aires des figures planes usuelles",
            headers: ["Figure", "Formule d'aire"],
            rows: [
              ["Triangle", "A = (base × hauteur) / 2"],
              ["Rectangle", "A = longueur × largeur"],
              ["Parallélogramme", "A = base × hauteur"],
              ["Losange", "A = (d₁ × d₂) / 2 (d = diagonales)"],
              ["Trapèze", "A = ((B + b) × h) / 2 (B et b = bases, h = hauteur)"],
              ["Disque", "A = πr²"],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Somme des angles : 180° (triangle), 360° (quadrilatère), (n − 2) × 180° (polygone à n côtés).",
      "Hiérarchie des quadrilatères : carré ⊂ losange ⊂ parallélogramme et carré ⊂ rectangle ⊂ parallélogramme.",
      "Les diagonales caractérisent les quadrilatères : perpendiculaires (losange), de même longueur (rectangle), les deux (carré).",
      "Le cercle : P = 2πr, A = πr². L'angle inscrit = moitié de l'angle au centre.",
      "L'inégalité triangulaire est un critère d'existence du triangle : chaque côté < somme des deux autres.",
    ],
    quiz: [
      {
        sentence:
          "Un parallélogramme dont les diagonales sont perpendiculaires est un losange.",
        isCorrect: true,
        explanation:
          "VRAI. C'est une propriété caractéristique du losange : un parallélogramme dont les diagonales sont perpendiculaires est nécessairement un losange.",
      },
      {
        sentence:
          "La somme des angles intérieurs d'un hexagone est 720°.",
        isCorrect: true,
        explanation:
          "VRAI. Formule : (n − 2) × 180° = (6 − 2) × 180° = 4 × 180° = 720°.",
      },
      {
        sentence:
          "L'aire d'un losange de diagonales 6 cm et 8 cm est 48 cm².",
        isCorrect: false,
        explanation:
          "FAUX. A = (d₁ × d₂) / 2 = (6 × 8) / 2 = 24 cm² (et non 48). Il ne faut pas oublier de diviser par 2.",
      },
      {
        sentence:
          "Tout parallélogramme ayant un angle droit est un rectangle.",
        isCorrect: true,
        explanation:
          "VRAI. Si un parallélogramme a un angle droit, alors les angles opposés sont aussi droits (angles opposés égaux) et les angles consécutifs sont supplémentaires, donc tous les angles valent 90°.",
      },
      {
        sentence:
          "Un trapèze isocèle a ses diagonales de même longueur.",
        isCorrect: true,
        explanation:
          "VRAI. Le trapèze isocèle a ses deux côtés non parallèles de même longueur, un axe de symétrie, et ses diagonales sont de même longueur.",
      },
      {
        sentence:
          "Un polygone régulier à 5 côtés a des angles intérieurs de 120°.",
        isCorrect: false,
        explanation:
          "FAUX. L'angle intérieur d'un pentagone régulier est (5 − 2) × 180° / 5 = 108° (et non 120°, qui est l'angle de l'hexagone régulier).",
      },
    ],
  },
};
