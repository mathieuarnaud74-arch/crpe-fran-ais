import type { Fiche } from "@/features/fiches/types";

export const geometrieTrigonometrieSprint: Fiche = {
  id: "geometrie-trigonometrie-sprint",
  slug: "trigonometrie-cos-sin-tan-triangle-rectangle",
  title: "Trigonométrie : cos, sin, tan dans le triangle rectangle",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "trigonométrie",
    "cosinus",
    "sinus",
    "tangente",
    "triangle rectangle",
    "angle",
    "côté adjacent",
    "côté opposé",
    "hypoténuse",
  ],
  notionsLiees: [
    "geometrie-pythagore-sprint",
    "geometrie-pythagore-operatoire",
    "geometrie-theoremes-reference",
    "geometrie-angles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la trigonométrie. Pour le théorème de Pythagore (calcul de longueurs sans angles), consulte la fiche sprint « Pythagore ». Pour les théorèmes en détail, consulte la fiche Référence « Théorèmes de géométrie ».",
    oneLiner:
      "Dans un triangle rectangle, les rapports trigonométriques relient un angle aigu aux longueurs des côtés. SOH-CAH-TOA : sin = Opposé/Hypoténuse, cos = Adjacent/Hypoténuse, tan = Opposé/Adjacent. Ces rapports permettent de calculer un angle à partir de côtés, ou un côté à partir d'un angle.",
    exampleCorrect: {
      sentence:
        "Triangle ABC rectangle en A. AB = 3, AC = 4, BC = 5. cos(B̂) = AB/BC = 3/5 = 0,6, donc B̂ ≈ 53,1°.",
      explanation:
        "Depuis l'angle B : le côté adjacent est AB (= 3), l'hypoténuse est BC (= 5). cos = adjacent/hypoténuse = 3/5. L'angle s'obtient avec la touche cos⁻¹ (arccos) de la calculatrice. ✓",
    },
    exampleWrong: {
      sentence:
        "Triangle ABC rectangle en A. cos(B̂) = AC/BC = 4/5.",
      explanation:
        "Erreur : AC est le côté opposé à B̂, pas le côté adjacent. Le côté adjacent à l'angle B est AB (le côté qui forme l'angle avec l'hypoténuse). cos(B̂) = AB/BC = 3/5, pas 4/5. La confusion adjacent/opposé est l'erreur la plus fréquente en trigonométrie.",
    },
    mainTrap:
      "Confondre côté adjacent et côté opposé. Le côté adjacent à un angle est celui qui « touche » l'angle (avec l'hypoténuse). Le côté opposé est celui qui est « en face » de l'angle. L'hypoténuse est toujours le plus grand côté (face à l'angle droit). Moyen mnémotechnique : SOH-CAH-TOA (Sin = Opposé/Hypoténuse, Cos = Adjacent/Hypoténuse, Tan = Opposé/Adjacent).",
    quiz: [
      {
        sentence:
          "Dans un triangle rectangle, le sinus d'un angle aigu est toujours compris entre 0 et 1.",
        isCorrect: true,
        explanation:
          "VRAI. Le côté opposé est toujours plus court que l'hypoténuse (le plus grand côté), donc le rapport opposé/hypoténuse est strictement compris entre 0 et 1.",
      },
      {
        sentence:
          "tan(45°) = 1 car dans un triangle rectangle isocèle, les deux côtés de l'angle droit sont égaux.",
        isCorrect: true,
        explanation:
          "VRAI. Si les deux côtés sont égaux (a = b), alors tan(45°) = opposé/adjacent = a/a = 1.",
      },
      {
        sentence:
          "Pour calculer la longueur d'un côté avec la trigonométrie, il faut connaître au moins un angle aigu et un côté.",
        isCorrect: true,
        explanation:
          "VRAI. Le rapport trigonométrique lie un angle à deux côtés. Avec un angle et un côté connus, on peut calculer l'autre côté. Sans angle, on utilise Pythagore (si on a deux côtés).",
      },
      {
        sentence:
          "cos(30°) = sin(30°) car 30° est un angle « symétrique ».",
        isCorrect: false,
        explanation:
          "FAUX. cos(30°) = √3/2 ≈ 0,866 et sin(30°) = 1/2 = 0,5. En revanche, cos(30°) = sin(60°) car 30° et 60° sont complémentaires. Règle générale : cos(α) = sin(90° − α).",
      },
      {
        sentence:
          "La tangente peut valoir plus que 1 (par exemple, tan(60°) ≈ 1,73).",
        isCorrect: true,
        explanation:
          "VRAI. Contrairement au sinus et au cosinus (bornés entre 0 et 1 pour les angles aigus), la tangente n'a pas de borne supérieure. Elle tend vers l'infini quand l'angle s'approche de 90°.",
      },
    ],
  },
};
