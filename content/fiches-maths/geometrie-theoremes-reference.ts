import type { Fiche } from "@/features/fiches/types";

export const geometrieTheoremesReference: Fiche = {
  id: "geometrie-theoremes-reference",
  slug: "pythagore-thales-demonstrations-applications",
  title: "Pythagore et Thalès : démonstrations et applications",
  domaine: "geometrie",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "Pythagore",
    "Thalès",
    "réciproque",
    "contraposée",
    "triangle rectangle",
    "proportionnalité",
    "parallélisme",
  ],
  notionsLiees: [
    "geometrie-pythagore-sprint",
    "geometrie-pythagore-operatoire",
    "geometrie-triangles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les théorèmes de Pythagore et de Thalès sont les deux résultats majeurs de géométrie au CRPE. Cette fiche détaille les énoncés directs, réciproques et contraposés de chacun, illustrés par des exemples résolus. La rigueur des justifications (distinguer théorème direct, réciproque et contraposée) est un critère d'évaluation au concours.",
    sections: [
      {
        id: "pythagore-direct",
        title: "Théorème de Pythagore (direct)",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Si un triangle ABC est rectangle en C, alors AB² = AC² + BC². L'hypoténuse AB (côté opposé à l'angle droit) est le plus grand côté.",
            linguisticLogic:
              "Hypothèse : le triangle est rectangle. Conclusion : la relation sur les carrés des côtés. Le théorème direct sert à calculer une longueur quand on sait que le triangle est rectangle.",
          },
          {
            kind: "example",
            sentence:
              "Triangle ABC rectangle en C avec AC = 5 cm et BC = 12 cm. AB² = 5² + 12² = 25 + 144 = 169, donc AB = 13 cm.",
            annotation: "Application directe : on connaît deux côtés, on calcule le troisième.",
          },
        ],
      },
      {
        id: "pythagore-reciproque",
        title: "Réciproque de Pythagore",
        badge: "Démonstration",
        blocks: [
          {
            kind: "rule",
            content:
              "Si dans un triangle ABC on a AB² = AC² + BC² (avec AB le plus grand côté), alors le triangle est rectangle en C.",
            linguisticLogic:
              "Hypothèse : la relation numérique. Conclusion : le triangle est rectangle. La réciproque sert à prouver qu'un triangle est rectangle.",
          },
          {
            kind: "example",
            sentence:
              "Triangle de côtés 8, 15 et 17. On vérifie : 17² = 289, et 8² + 15² = 64 + 225 = 289. Donc 17² = 8² + 15², et par la réciproque de Pythagore, le triangle est rectangle (l'angle droit est opposé au côté 17).",
            annotation: "Toujours tester avec le plus grand côté",
          },
        ],
      },
      {
        id: "pythagore-contraposee",
        title: "Contraposée de Pythagore",
        badge: "Démonstration",
        blocks: [
          {
            kind: "rule",
            content:
              "Si dans un triangle ABC on a AB² ≠ AC² + BC² (avec AB le plus grand côté), alors le triangle n'est pas rectangle.",
            linguisticLogic:
              "La contraposée est logiquement équivalente au théorème direct. Elle sert à prouver qu'un triangle n'est PAS rectangle.",
          },
          {
            kind: "example",
            sentence:
              "Triangle de côtés 5, 7 et 9. On vérifie : 9² = 81, et 5² + 7² = 25 + 49 = 74. Comme 81 ≠ 74, par la contraposée de Pythagore, ce triangle n'est pas rectangle.",
            annotation: "La contraposée permet de conclure « non rectangle »",
          },
          {
            kind: "tip",
            text: "Complément utile : si AB² > AC² + BC², le triangle est obtusangle en C. Si AB² < AC² + BC², le triangle est acutangle en C.",
          },
        ],
      },
      {
        id: "thales-direct",
        title: "Théorème de Thalès (direct)",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Soit un triangle ABC. Si M ∈ [AB] et N ∈ [AC] avec (MN) ∥ (BC), alors AM/AB = AN/AC = MN/BC. Les droites parallèles déterminent des segments proportionnels.",
            linguisticLogic:
              "Hypothèse : deux droites parallèles coupent deux sécantes. Conclusion : les rapports de longueurs sont égaux. Le théorème direct sert à calculer des longueurs.",
            watchout:
              "Attention à la configuration : le théorème s'applique aussi dans la configuration en « papillon » (les sécantes se croisent entre les parallèles).",
          },
          {
            kind: "example",
            sentence:
              "Dans le triangle ABC, M ∈ [AB] et N ∈ [AC] avec (MN) ∥ (BC). Si AM = 3, AB = 9 et AC = 12, alors AN/12 = 3/9, d'où AN = 4.",
            annotation: "Configuration classique : triangles emboîtés",
          },
        ],
      },
      {
        id: "thales-reciproque",
        title: "Réciproque de Thalès",
        badge: "Démonstration",
        blocks: [
          {
            kind: "rule",
            content:
              "Si M ∈ [AB] et N ∈ [AC] et si AM/AB = AN/AC, et si les points sont dans le même ordre sur chaque droite, alors (MN) ∥ (BC).",
            linguisticLogic:
              "Hypothèse : les rapports sont égaux ET les points sont dans le même ordre. Conclusion : les droites sont parallèles. La réciproque sert à prouver un parallélisme.",
            watchout:
              "La condition « même ordre » est indispensable. Sans elle, on ne peut pas conclure au parallélisme (les points pourraient être de part et d'autre du sommet).",
          },
          {
            kind: "example",
            sentence:
              "M ∈ [AB] et N ∈ [AC]. AM/AB = 2/6 = 1/3 et AN/AC = 3/9 = 1/3. Les rapports sont égaux et les points sont dans le même ordre sur chaque droite, donc (MN) ∥ (BC) par la réciproque de Thalès.",
            annotation: "Vérifier l'égalité des rapports ET l'ordre des points",
          },
        ],
      },
      {
        id: "thales-contraposee",
        title: "Contraposée de Thalès",
        badge: "Démonstration",
        blocks: [
          {
            kind: "rule",
            content:
              "Si M ∈ [AB] et N ∈ [AC] et si AM/AB ≠ AN/AC, alors (MN) n'est pas parallèle à (BC).",
            linguisticLogic:
              "La contraposée sert à prouver que deux droites ne sont PAS parallèles.",
          },
          {
            kind: "example",
            sentence:
              "AM/AB = 2/5 = 0,4 et AN/AC = 3/8 = 0,375. Comme 0,4 ≠ 0,375, par la contraposée de Thalès, (MN) n'est pas parallèle à (BC).",
            annotation: "Un seul contre-exemple de rapport suffit",
          },
        ],
      },
      {
        id: "methodologie",
        title: "Méthodologie CRPE",
        badge: "Conseils",
        collapsible: true,
        blocks: [
          {
            kind: "watchout",
            items: [
              {
                label: "Toujours justifier quel théorème on utilise",
                explanation:
                  "Au CRPE, il faut nommer explicitement le théorème (direct, réciproque ou contraposée) et vérifier que les hypothèses sont remplies avant de conclure.",
              },
              {
                label: "Faire une figure",
                explanation:
                  "Une figure claire et annotée aide à identifier la configuration (triangles emboîtés ou papillon pour Thalès, triangle rectangle pour Pythagore).",
              },
              {
                label: "Ne pas mélanger direct et réciproque",
                explanation:
                  "Le théorème direct part de la propriété géométrique pour conclure sur les nombres. La réciproque part des nombres pour conclure sur la géométrie.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Pythagore direct : triangle rectangle → AB² = AC² + BC². Sert à calculer une longueur.",
      "Pythagore réciproque : AB² = AC² + BC² → triangle rectangle. Sert à prouver qu'un triangle est rectangle.",
      "Thalès direct : droites parallèles → rapports de longueurs égaux. Sert à calculer une longueur.",
      "Thalès réciproque : rapports égaux + même ordre → droites parallèles. Sert à prouver un parallélisme.",
      "Toujours distinguer théorème direct, réciproque et contraposée dans une rédaction au CRPE.",
    ],
    quiz: [
      {
        sentence:
          "Pour prouver qu'un triangle est rectangle, on utilise le théorème direct de Pythagore.",
        isCorrect: false,
        explanation:
          "FAUX. On utilise la réciproque de Pythagore pour prouver qu'un triangle est rectangle. Le théorème direct suppose que le triangle est déjà rectangle.",
      },
      {
        sentence:
          "Le théorème de Thalès permet de calculer une longueur inconnue dans une configuration avec des droites parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. Le théorème direct de Thalès établit l'égalité de rapports de longueurs quand on a des droites parallèles, ce qui permet de calculer une longueur inconnue par produit en croix.",
      },
      {
        sentence:
          "Pour la réciproque de Thalès, il suffit que les rapports soient égaux pour conclure au parallélisme.",
        isCorrect: false,
        explanation:
          "FAUX. Il faut aussi vérifier que les points sont dans le même ordre sur chaque droite (même côté du sommet). Sans cette condition, on ne peut pas conclure.",
      },
      {
        sentence:
          "La contraposée du théorème de Pythagore est : si AB² ≠ AC² + BC², alors le triangle n'est pas rectangle.",
        isCorrect: true,
        explanation:
          "VRAI. La contraposée est la négation de la conclusion impliquant la négation de l'hypothèse. Elle est logiquement équivalente au théorème direct.",
      },
      {
        sentence:
          "Le théorème de Thalès ne s'applique que dans la configuration de triangles emboîtés.",
        isCorrect: false,
        explanation:
          "FAUX. Le théorème de Thalès s'applique aussi dans la configuration dite « en papillon » (ou « en sablier »), où les deux sécantes se croisent entre les deux parallèles.",
      },
    ],
  },
};
