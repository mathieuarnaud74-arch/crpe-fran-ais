import type { Fiche } from "@/features/fiches/types";

export const donneesProportionnaliteGraphiqueSprint: Fiche = {
  id: "donnees-proportionnalite-graphique-sprint",
  slug: "proportionnalite-graphique-reconnaitre-exploiter",
  title: "Proportionnalité et graphique : reconnaître et exploiter",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "proportionnalité",
    "graphique",
    "droite",
    "origine",
    "coefficient directeur",
    "lecture graphique",
    "représentation",
  ],
  notionsLiees: [
    "nombres-proportionnalite-sprint",
    "nombres-fonctions-lineaires-affines-sprint",
    "donnees-tableaux-graphiques-sprint",
    "donnees-lecture-graphiques-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le lien proportionnalité-graphique. Pour les fondements de la proportionnalité, consulte la fiche sprint « Proportionnalité ». Pour la distinction linéaire/affine, consulte la fiche sprint « Fonctions linéaires et affines ».",
    oneLiner:
      "Une situation de proportionnalité se traduit graphiquement par une droite passant par l'origine. Si la droite ne passe pas par l'origine, ce n'est pas proportionnel (c'est affine). Le coefficient de proportionnalité correspond à la pente de la droite : plus elle est raide, plus le coefficient est grand.",
    exampleCorrect: {
      sentence:
        "Un graphique montre le prix en fonction du poids de pommes. Les points (1 ; 2,5), (2 ; 5), (3 ; 7,5), (4 ; 10) sont alignés et passent par (0 ; 0). C'est proportionnel, coefficient = 2,5 €/kg.",
      explanation:
        "Trois critères vérifiés : les points sont alignés, la droite passe par l'origine, et tous les quotients y/x sont égaux (2,5/1 = 5/2 = 7,5/3 = 10/4 = 2,5). ✓",
    },
    exampleWrong: {
      sentence:
        "Un graphique montre une droite passant par (0 ; 3) et (4 ; 11). Comme c'est une droite, c'est proportionnel.",
      explanation:
        "FAUX. La droite ne passe pas par l'origine (elle coupe l'axe y en 3). C'est une situation affine (y = 2x + 3), pas proportionnelle. La « linéarité » du graphique (droite) ne suffit pas : il faut aussi passer par (0 ; 0).",
    },
    mainTrap:
      "Croire que « droite = proportionnel ». Une droite qui ne passe pas par l'origine représente une fonction affine, pas une situation de proportionnalité. Inversement, des points qui semblent alignés « à peu près » ne garantissent pas la proportionnalité : il faut vérifier que les quotients y/x sont bien tous égaux.",
    quiz: [
      {
        sentence:
          "Si le graphique d'une situation est une droite passant par l'origine, alors la situation est proportionnelle.",
        isCorrect: true,
        explanation:
          "VRAI. Droite + passage par l'origine ⟺ fonction linéaire ⟺ proportionnalité. Les deux conditions sont nécessaires et suffisantes.",
      },
      {
        sentence:
          "Le coefficient de proportionnalité se lit sur le graphique comme l'ordonnée du point d'abscisse 1.",
        isCorrect: true,
        explanation:
          "VRAI. Si f(x) = kx, alors f(1) = k. L'ordonnée du point d'abscisse 1 donne directement le coefficient de proportionnalité (la pente).",
      },
      {
        sentence:
          "Un graphique en courbe (non linéaire) peut représenter une situation de proportionnalité.",
        isCorrect: false,
        explanation:
          "FAUX. La proportionnalité impose une droite passant par l'origine. Si le graphique est courbe, la relation n'est pas proportionnelle (les quotients y/x ne sont pas constants).",
      },
      {
        sentence:
          "On peut vérifier graphiquement la proportionnalité en vérifiant que tous les points sont sur une même droite passant par l'origine.",
        isCorrect: true,
        explanation:
          "VRAI. C'est le test graphique de la proportionnalité. Si un seul point s'écarte de la droite passant par l'origine, la situation n'est pas (exactement) proportionnelle.",
      },
      {
        sentence:
          "Sur un graphique de proportionnalité, une pente plus forte signifie un coefficient de proportionnalité plus petit.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'inverse. Plus la droite est raide (pente forte), plus le coefficient est grand. Une droite de pente 3 (coefficient 3 €/kg) monte plus vite qu'une droite de pente 1,5 (coefficient 1,5 €/kg).",
      },
    ],
  },
};
