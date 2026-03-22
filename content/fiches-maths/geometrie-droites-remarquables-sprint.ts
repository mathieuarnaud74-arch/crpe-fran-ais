import type { Fiche } from "@/features/fiches/types";

export const geometrieDroitesRemarquablesSprint: Fiche = {
  id: "geometrie-droites-remarquables-sprint",
  slug: "droites-remarquables-triangle",
  title: "Droites remarquables du triangle",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "médiatrice",
    "hauteur",
    "médiane",
    "bissectrice",
    "triangle",
    "droites remarquables",
  ],
  notionsLiees: [
    "geometrie-triangles-sprint",
    "geometrie-figures-planes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les 4 droites remarquables du triangle. Pour les démonstrations et propriétés avancées, consulte la fiche Référence.",
    oneLiner:
      "Chaque triangle possède 4 types de droites remarquables (médiatrice, hauteur, médiane, bissectrice) qui se coupent chacune en un point remarquable (centre du cercle circonscrit, orthocentre, centre de gravité, centre du cercle inscrit).",
    exampleCorrect: {
      sentence:
        "La médiatrice d'un segment est la droite perpendiculaire à ce segment en son milieu. Les 3 médiatrices d'un triangle se coupent au centre du cercle circonscrit.",
      explanation:
        "La médiatrice est bien définie par deux propriétés : perpendiculaire au côté ET passant par son milieu. Leur point de concours est équidistant des 3 sommets.",
    },
    exampleWrong: {
      sentence:
        "La hauteur d'un triangle passe par le milieu du côté opposé au sommet.",
      explanation:
        "FAUX. La hauteur passe par un sommet et est perpendiculaire au côté opposé, mais ne passe pas par le milieu de ce côté (sauf dans un triangle isocèle pour la hauteur issue du sommet principal). C'est la médiane qui relie un sommet au milieu du côté opposé.",
    },
    mainTrap:
      "Ne pas confondre médiane (sommet → milieu du côté opposé) et hauteur (sommet → pied de la perpendiculaire au côté opposé). La médiane n'est pas perpendiculaire sauf cas particulier.",
    quiz: [
      {
        sentence:
          "Les trois médianes d'un triangle se coupent en un point appelé centre de gravité, situé aux 2/3 de chaque médiane à partir du sommet.",
        isCorrect: true,
        explanation:
          "VRAI. Le centre de gravité (ou isobarycentre) divise chaque médiane dans le rapport 2/3 depuis le sommet et 1/3 depuis le milieu du côté.",
      },
      {
        sentence:
          "Les trois hauteurs d'un triangle se coupent toujours à l'intérieur du triangle.",
        isCorrect: false,
        explanation:
          "FAUX. Dans un triangle obtusangle, l'orthocentre (point de concours des hauteurs) est situé à l'extérieur du triangle. Il est à l'intérieur pour un triangle acutangle et sur l'hypoténuse pour un triangle rectangle.",
      },
      {
        sentence:
          "La bissectrice d'un angle d'un triangle est la droite qui partage cet angle en deux angles égaux.",
        isCorrect: true,
        explanation:
          "VRAI. La bissectrice est bien la demi-droite qui divise un angle en deux angles de même mesure. Les trois bissectrices se coupent au centre du cercle inscrit.",
      },
      {
        sentence:
          "Le centre du cercle circonscrit à un triangle est toujours situé à l'intérieur du triangle.",
        isCorrect: false,
        explanation:
          "FAUX. Le centre du cercle circonscrit (point de concours des médiatrices) est à l'intérieur pour un triangle acutangle, sur l'hypoténuse pour un triangle rectangle, et à l'extérieur pour un triangle obtusangle.",
      },
      {
        sentence:
          "Dans un triangle équilatéral, les quatre droites remarquables issues d'un même sommet sont confondues.",
        isCorrect: true,
        explanation:
          "VRAI. Dans un triangle équilatéral, médiane, hauteur, médiatrice et bissectrice issues d'un même sommet sont la même droite. Les quatre points remarquables sont confondus.",
      },
    ],
  },
};
