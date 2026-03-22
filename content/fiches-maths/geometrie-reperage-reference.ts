import type { Fiche } from "@/features/fiches/types";

export const geometrieReperageReference: Fiche = {
  id: "geometrie-reperage-reference",
  slug: "reperage-plan-espace",
  title: "Repérage dans le plan et dans l'espace",
  domaine: "geometrie",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "repère",
    "coordonnées",
    "abscisse",
    "ordonnée",
    "milieu",
    "distance",
    "droite numérique",
  ],
  notionsLiees: [
    "geometrie-figures-planes-reference",
    "geometrie-theoremes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Le repérage est un outil fondamental qui relie géométrie et calcul. Cette fiche couvre le repérage sur une droite graduée, dans le plan (repère orthonormé) et dans l'espace, ainsi que les formules de distance et de coordonnées du milieu. Ces compétences sont mobilisées aussi bien en géométrie qu'en résolution de problèmes au CRPE.",
    sections: [
      {
        id: "droite-graduee",
        title: "Repérage sur une droite graduée",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "Sur une droite graduée, chaque point est repéré par un nombre (son abscisse). L'origine O a pour abscisse 0. Le sens positif va vers la droite. La distance entre deux points A(a) et B(b) est |b − a|.",
          },
          {
            kind: "example",
            sentence:
              "Les points A(−3) et B(5) sont sur une droite graduée. AB = |5 − (−3)| = |8| = 8 unités. Le milieu M a pour abscisse (−3 + 5) / 2 = 1.",
            annotation: "Distance = valeur absolue de la différence des abscisses",
          },
        ],
      },
      {
        id: "repere-plan",
        title: "Repérage dans le plan",
        badge: "Coordonnées (x, y)",
        blocks: [
          {
            kind: "rule",
            content:
              "Un repère du plan est défini par un point O (origine) et deux axes perpendiculaires gradués : l'axe des abscisses (horizontal, x) et l'axe des ordonnées (vertical, y). Chaque point M est repéré par ses coordonnées (x_M ; y_M).",
          },
          {
            kind: "rule",
            content:
              "Dans un repère orthonormé, la distance entre A(x_A ; y_A) et B(x_B ; y_B) est : AB = √[(x_B − x_A)² + (y_B − y_A)²]. C'est une application directe du théorème de Pythagore.",
          },
          {
            kind: "rule",
            content:
              "Les coordonnées du milieu M du segment [AB] sont : M((x_A + x_B) / 2 ; (y_A + y_B) / 2).",
          },
          {
            kind: "example",
            sentence:
              "A(1 ; 3) et B(5 ; 6). Distance : AB = √[(5−1)² + (6−3)²] = √[16 + 9] = √25 = 5. Milieu M((1+5)/2 ; (3+6)/2) = M(3 ; 4,5).",
            annotation: "Formule de distance + formule du milieu",
          },
        ],
      },
      {
        id: "types-reperes",
        title: "Types de repères",
        badge: "Précisions",
        collapsible: true,
        blocks: [
          {
            kind: "table",
            caption: "Les différents types de repères",
            headers: ["Type", "Caractéristiques", "Usage"],
            rows: [
              [
                "Repère orthogonal",
                "Les deux axes sont perpendiculaires, mais les unités peuvent être différentes",
                "Graphiques avec échelles différentes (statistiques, fonctions)",
              ],
              [
                "Repère orthonormé (ou orthonormal)",
                "Axes perpendiculaires ET même unité sur chaque axe",
                "Géométrie : les formules de distance et de milieu s'appliquent directement",
              ],
              [
                "Repère quelconque",
                "Axes non nécessairement perpendiculaires",
                "Rare au CRPE, utilisé en algèbre linéaire",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Formule de distance",
                explanation:
                  "La formule AB = √[(x_B − x_A)² + (y_B − y_A)²] n'est valable que dans un repère orthonormé. Dans un repère non orthonormé, il faut adapter le calcul.",
              },
            ],
          },
        ],
      },
      {
        id: "reperage-espace",
        title: "Repérage dans l'espace",
        badge: "3 dimensions",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Dans l'espace, un repère orthonormé est défini par une origine O et trois axes perpendiculaires deux à deux : (Ox), (Oy) et (Oz). Chaque point M est repéré par un triplet (x ; y ; z).",
          },
          {
            kind: "rule",
            content:
              "Distance dans l'espace : AB = √[(x_B − x_A)² + (y_B − y_A)² + (z_B − z_A)²]. Milieu : M((x_A + x_B)/2 ; (y_A + y_B)/2 ; (z_A + z_B)/2).",
          },
          {
            kind: "example",
            sentence:
              "A(1 ; 0 ; 2) et B(3 ; 4 ; 2). AB = √[(3−1)² + (4−0)² + (2−2)²] = √[4 + 16 + 0] = √20 = 2√5.",
            annotation: "Extension naturelle de la formule du plan avec une troisième coordonnée",
          },
        ],
      },
      {
        id: "applications",
        title: "Applications au CRPE",
        badge: "Méthode",
        blocks: [
          {
            kind: "tip",
            text: "Le repérage est souvent utilisé pour vérifier des propriétés géométriques par le calcul : montrer qu'un quadrilatère est un parallélogramme (milieux des diagonales confondus), qu'un triangle est rectangle (vérifier Pythagore avec les distances), ou qu'un triangle est isocèle (deux distances égales).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Lire un quadrillage",
                explanation:
                  "Au CRPE, savoir lire les coordonnées d'un point sur un quadrillage (nœuds) et identifier l'unité du repère est essentiel. Attention aux repères non orthonormés dans les graphiques statistiques.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Dans un repère orthonormé : distance AB = √[(x_B − x_A)² + (y_B − y_A)²] (théorème de Pythagore).",
      "Coordonnées du milieu : M((x_A + x_B)/2 ; (y_A + y_B)/2).",
      "La formule de distance n'est valable que dans un repère orthonormé.",
      "Dans l'espace, on ajoute une troisième coordonnée z ; les formules se généralisent naturellement.",
      "Le repérage permet de démontrer des propriétés géométriques par le calcul (outil algébrique de la géométrie).",
    ],
    quiz: [
      {
        sentence:
          "La distance entre A(2 ; 5) et B(6 ; 2) dans un repère orthonormé est 5.",
        isCorrect: true,
        explanation:
          "VRAI. AB = √[(6−2)² + (2−5)²] = √[16 + 9] = √25 = 5.",
      },
      {
        sentence:
          "Le milieu du segment [AB] avec A(−4 ; 3) et B(2 ; 7) a pour coordonnées (−2 ; 5).",
        isCorrect: false,
        explanation:
          "FAUX. M((−4+2)/2 ; (3+7)/2) = M(−1 ; 5). L'abscisse est −1, pas −2.",
      },
      {
        sentence:
          "La formule de distance entre deux points fonctionne dans tout type de repère.",
        isCorrect: false,
        explanation:
          "FAUX. La formule √[(x_B−x_A)² + (y_B−y_A)²] ne vaut que dans un repère orthonormé. Dans un repère non orthonormé, les calculs sont différents.",
      },
      {
        sentence:
          "Un point dont l'ordonnée est 0 se trouve sur l'axe des abscisses.",
        isCorrect: true,
        explanation:
          "VRAI. L'axe des abscisses est l'ensemble des points de coordonnées (x ; 0). Un point d'ordonnée 0 est donc sur cet axe.",
      },
      {
        sentence:
          "Pour montrer qu'un quadrilatère ABCD est un parallélogramme par les coordonnées, il suffit de vérifier que les milieux des diagonales [AC] et [BD] sont confondus.",
        isCorrect: true,
        explanation:
          "VRAI. Un quadrilatère est un parallélogramme si et seulement si ses diagonales se coupent en leur milieu. Vérifier que les milieux de [AC] et [BD] ont les mêmes coordonnées suffit.",
      },
    ],
  },
};
