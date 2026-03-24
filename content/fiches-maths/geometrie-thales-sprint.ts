import type { Fiche } from "@/features/fiches/types";

export const geometrieThalesSprint: Fiche = {
  id: "geometrie-thales-sprint",
  slug: "thales-configurations-applications",
  title: "Théorème de Thalès : configurations et applications",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "Thalès",
    "proportionnalité",
    "droites parallèles",
    "configuration papillon",
    "configuration triangle",
    "agrandissement",
    "réduction",
  ],
  notionsLiees: [
    "geometrie-theoremes-reference",
    "geometrie-pythagore-sprint",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le théorème de Thalès. Pour les démonstrations et les autres théorèmes fondamentaux, consulte la fiche Référence « Théorèmes de géométrie ».",
    oneLiner:
      "Si deux droites parallèles coupent deux sécantes, alors elles découpent des segments proportionnels. On retient : dans un triangle ABC, si (MN) // (BC) avec M ∈ [AB] et N ∈ [AC], alors AM/AB = AN/AC = MN/BC.",
    exampleCorrect: {
      sentence:
        "Dans le triangle ABC, M ∈ [AB], N ∈ [AC], (MN) // (BC). AM = 3, AB = 9, AN = 2. Alors AC = 6 et MN = BC/3.",
      explanation:
        "AM/AB = 3/9 = 1/3. Par Thalès, AN/AC = 1/3, donc AC = 2 × 3 = 6. Le rapport de réduction est 1/3, donc MN = BC/3. ✓",
    },
    exampleWrong: {
      sentence:
        "AM = 3, AB = 9, donc MB = 6. On écrit AM/MB = AN/NC. C'est le théorème de Thalès.",
      explanation:
        "Erreur d'écriture des rapports. Le théorème de Thalès donne AM/AB = AN/AC = MN/BC, pas AM/MB = AN/NC. Utiliser AM/MB = AN/NC est correct aussi (c'est équivalent), mais il faut être cohérent : les rapports comparés doivent avoir la même structure (partie/tout ou partie/partie).",
    },
    mainTrap:
      "Confondre les deux configurations. Configuration « triangle » : M et N sont sur les côtés du triangle, (MN) // au troisième côté. Configuration « papillon » : les droites sécantes se croisent entre les parallèles. Dans les deux cas, le théorème s'applique, mais les rapports à écrire sont différents. Toujours bien identifier les points et vérifier le parallélisme avant d'appliquer Thalès.",
    quiz: [
      {
        sentence:
          "Le théorème de Thalès ne peut s'appliquer que si l'on a deux droites parallèles coupées par deux sécantes.",
        isCorrect: true,
        explanation:
          "VRAI. La condition de parallélisme est indispensable. Sans parallélisme, les rapports ne sont pas nécessairement égaux.",
      },
      {
        sentence:
          "Dans la configuration papillon, les rapports sont inversés par rapport à la configuration triangle.",
        isCorrect: false,
        explanation:
          "FAUX. Les rapports ont la même forme (AM/AB = AN/AC = MN/BC) dans les deux configurations. Ce qui change, c'est la position du point d'intersection (à l'intérieur ou à l'extérieur du triangle), mais les égalités de rapports restent identiques.",
      },
      {
        sentence:
          "Si AM/AB = 2/5, alors le rapport de réduction de la figure AMNP par rapport à ABCP est 2/5.",
        isCorrect: true,
        explanation:
          "VRAI. Le rapport de Thalès donne directement le coefficient d'agrandissement-réduction. Toutes les longueurs correspondantes sont dans le rapport 2/5.",
      },
      {
        sentence:
          "La réciproque de Thalès permet de démontrer que deux droites sont parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. Si AM/AB = AN/AC (avec M ∈ [AB], N ∈ [AC] et les points dans le bon ordre), alors (MN) // (BC). C'est la réciproque, souvent utilisée pour prouver un parallélisme.",
      },
      {
        sentence:
          "Le théorème de Thalès permet de calculer des angles.",
        isCorrect: false,
        explanation:
          "FAUX. Thalès donne des rapports de longueurs, pas des mesures d'angles. Pour les angles, on utilise les propriétés des droites parallèles (angles alternes-internes, correspondants) ou la trigonométrie.",
      },
    ],
  },
};
