import type { Fiche } from "@/features/fiches/types";

export const geometrieClasserQuadrilateresOperatoire: Fiche = {
  id: "geometrie-classer-quadrilateres-operatoire",
  slug: "classer-quadrilateres-arbre-decision",
  title: "Reconnaître et classer les quadrilatères",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "quadrilatère",
    "parallélogramme",
    "rectangle",
    "losange",
    "carré",
    "trapèze",
    "classification",
    "propriétés",
    "diagonales",
  ],
  notionsLiees: [
    "geometrie-quadrilateres-sprint",
    "geometrie-figures-planes-reference",
    "geometrie-construire-symetrique-operatoire",
  ],
  exercicesAssocies: ["tri_quadrilateres_proprietes"],
  content: {
    model: "operatoire",
    startingQuestion:
      "J'ai un quadrilatère : comment identifier précisément de quel type il s'agit ?",
    decisionTree: {
      type: "question",
      text: "Le quadrilatère a-t-il au moins une paire de côtés parallèles ?",
      yes: {
        type: "question",
        text: "A-t-il deux paires de côtés parallèles (côtés opposés parallèles deux à deux) ?",
        yes: {
          type: "question",
          text: "C'est un parallélogramme. A-t-il un angle droit ?",
          yes: {
            type: "question",
            text: "Ses 4 côtés sont-ils de même longueur ?",
            yes: {
              type: "leaf",
              label: "Carré",
              rule: "Le carré a 4 côtés égaux ET 4 angles droits. Ses diagonales sont de même longueur, perpendiculaires, et se coupent en leur milieu. Il possède 4 axes de symétrie.",
              example:
                "Un quadrilatère ABCD avec AB = BC = CD = DA = 5 cm et chaque angle = 90°. Diagonales : AC = BD = 5√2 ≈ 7,07 cm.",
            },
            no: {
              type: "leaf",
              label: "Rectangle",
              rule: "Le rectangle a ses côtés opposés égaux et 4 angles droits (mais ses 4 côtés ne sont pas tous égaux). Ses diagonales sont de même longueur et se coupent en leur milieu. Il possède 2 axes de symétrie (les médiatrices des côtés).",
              example:
                "ABCD avec AB = CD = 6 cm, BC = DA = 4 cm, et 4 angles de 90°. Diagonales : AC = BD = √(6² + 4²) = √52 ≈ 7,21 cm.",
            },
          },
          no: {
            type: "question",
            text: "Ses 4 côtés sont-ils de même longueur ?",
            yes: {
              type: "leaf",
              label: "Losange",
              rule: "Le losange a 4 côtés égaux mais pas d'angle droit (sinon ce serait un carré). Ses diagonales sont perpendiculaires et se coupent en leur milieu (mais n'ont pas la même longueur). Il possède 2 axes de symétrie (les diagonales).",
              example:
                "ABCD avec AB = BC = CD = DA = 5 cm, angles de 60° et 120° alternés. Diagonales perpendiculaires : d₁ = 5 cm, d₂ ≈ 8,66 cm.",
            },
            no: {
              type: "leaf",
              label: "Parallélogramme (quelconque)",
              rule: "Le parallélogramme a ses côtés opposés parallèles et égaux, ses angles opposés égaux, et ses diagonales se coupent en leur milieu. Il n'a pas d'axe de symétrie mais possède un centre de symétrie (l'intersection des diagonales).",
              example:
                "ABCD avec AB = CD = 7 cm, BC = DA = 4 cm, angles de 65° et 115° alternés. Les diagonales se coupent en leur milieu O mais ne sont ni égales ni perpendiculaires.",
            },
          },
        },
        no: {
          type: "question",
          text: "Les deux côtés non parallèles sont-ils de même longueur ?",
          yes: {
            type: "leaf",
            label: "Trapèze isocèle",
            rule: "Le trapèze isocèle a exactement une paire de côtés parallèles (les bases) et ses deux côtés non parallèles sont de même longueur. Ses diagonales sont de même longueur. Il possède 1 axe de symétrie (la médiatrice des bases). Les angles adjacents à une même base sont égaux.",
            example:
              "ABCD avec AB // CD, AB = 8 cm (grande base), CD = 4 cm (petite base), BC = DA = 5 cm. L'axe de symétrie passe par les milieux des bases.",
          },
          no: {
            type: "question",
            text: "Un des angles entre un côté parallèle et un côté non parallèle est-il droit ?",
            yes: {
              type: "leaf",
              label: "Trapèze rectangle",
              rule: "Le trapèze rectangle a exactement une paire de côtés parallèles et deux angles droits consécutifs. Un de ses côtés non parallèles est perpendiculaire aux bases. Il ne possède aucun axe de symétrie.",
              example:
                "ABCD avec AB // CD, angle en A = angle en D = 90°. Le côté AD est perpendiculaire aux deux bases.",
            },
            no: {
              type: "leaf",
              label: "Trapèze quelconque",
              rule: "Le trapèze quelconque a exactement une paire de côtés parallèles. Ses côtés non parallèles sont de longueurs différentes. Il ne possède aucun axe de symétrie ni centre de symétrie.",
              example:
                "ABCD avec AB // CD, mais BC ≠ DA et aucun angle droit.",
            },
          },
        },
      },
      no: {
        type: "leaf",
        label: "Quadrilatère quelconque",
        rule: "Un quadrilatère sans aucune paire de côtés parallèles est un quadrilatère quelconque (ou non particulier). La somme de ses angles intérieurs vaut toujours 360°, mais il ne possède aucune propriété de symétrie ni de parallélisme.",
        example:
          "Un quadrilatère ABCD convexe dont aucun couple de côtés opposés n'est parallèle. Seule propriété : la somme de ses 4 angles = 360°.",
      },
    },
    workedExample: {
      phrase:
        "On donne un quadrilatère ABCD tel que : AB = CD = 6 cm, BC = DA = 6 cm, et l'angle en A mesure 90°. De quel quadrilatère s'agit-il ?",
      steps: [
        "Étape 1 — Côtés parallèles ? AB = CD et BC = DA, donc les côtés opposés sont égaux. On vérifie : si les côtés opposés sont égaux → c'est un parallélogramme (propriété caractéristique).",
        "Étape 2 — Angle droit ? L'angle en A = 90°. Or dans un parallélogramme, les angles opposés sont égaux (angle C = 90°) et les angles consécutifs supplémentaires (angles B = D = 90°). Donc 4 angles droits → c'est au moins un rectangle.",
        "Étape 3 — 4 côtés égaux ? AB = BC = CD = DA = 6 cm → oui, les 4 côtés sont de même longueur.",
        "Étape 4 — Conclusion : 4 angles droits ET 4 côtés égaux → c'est un carré.",
        "Étape 5 — Vérification des diagonales : AC = BD = 6√2 ≈ 8,49 cm (même longueur ✓), perpendiculaires ✓, se coupent en leur milieu ✓. Toutes les propriétés du carré sont confirmées.",
      ],
    },
    quiz: [
      {
        sentence:
          "Un parallélogramme ayant un angle droit est nécessairement un rectangle.",
        isCorrect: true,
        explanation:
          "VRAI. Si un parallélogramme a un angle droit, alors les angles opposés sont aussi droits (propriété du parallélogramme) et les angles consécutifs supplémentaires, donc les 4 angles valent 90°. C'est un rectangle.",
      },
      {
        sentence:
          "Un losange est un cas particulier de trapèze.",
        isCorrect: false,
        explanation:
          "FAUX (au sens Éduscol strict). Le trapèze a exactement une paire de côtés parallèles. Le losange, comme tout parallélogramme, en a deux. En convention stricte (Éduscol), le parallélogramme n'est pas un trapèze.",
      },
      {
        sentence:
          "Si les diagonales d'un parallélogramme sont perpendiculaires, alors c'est un losange.",
        isCorrect: true,
        explanation:
          "VRAI. C'est une propriété caractéristique : un parallélogramme dont les diagonales sont perpendiculaires est un losange (et réciproquement).",
      },
      {
        sentence:
          "Un quadrilatère dont les 4 côtés sont égaux est forcément un carré.",
        isCorrect: false,
        explanation:
          "FAUX. Un quadrilatère à 4 côtés égaux est un losange. Pour que ce soit un carré, il faut en plus que les angles soient droits. Un losange avec des angles de 60° et 120° a 4 côtés égaux sans être un carré.",
      },
      {
        sentence:
          "Le trapèze isocèle possède ses diagonales de même longueur.",
        isCorrect: true,
        explanation:
          "VRAI. Le trapèze isocèle a ses côtés non parallèles de même longueur et ses diagonales de même longueur. C'est une propriété caractéristique.",
      },
      {
        sentence:
          "La somme des angles d'un quadrilatère quelconque vaut 180°.",
        isCorrect: false,
        explanation:
          "FAUX. La somme des angles intérieurs d'un quadrilatère vaut 360° (et non 180°, qui est la somme pour un triangle). Formule générale : (n − 2) × 180° avec n = 4.",
      },
    ],
    didacticNote:
      "Au cycle 3, la classification des quadrilatères passe par la manipulation (pliage, superposition) pour identifier concrètement les symétries et les propriétés. L'erreur la plus courante des élèves est de reconnaître visuellement les figures sans vérifier les propriétés : un quadrilatère « qui a l'air carré » n'est un carré que si on prouve les 4 angles droits et les 4 côtés égaux. Utiliser des figures « piégées » (losange incliné, rectangle non horizontal) pour développer le raisonnement.",
  },
};
