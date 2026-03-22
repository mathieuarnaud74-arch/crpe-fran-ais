import type { Fiche } from "@/features/fiches/types";

export const proportionnaliteSprint: Fiche = {
  id: "nombres-proportionnalite-sprint",
  slug: "proportionnalite-reconnaitre-calculer",
  title: "Proportionnalité : reconnaître et calculer",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "proportionnalité",
    "coefficient",
    "tableau de proportionnalité",
    "produit en croix",
    "quatrième proportionnelle",
  ],
  notionsLiees: [
    "nombres-proportionnalite-reference",
    "nombres-probleme-proportionnalite-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour les tableaux, graphiques et la notion de coefficient, consulte la fiche Référence « Proportionnalité ».",
    oneLiner:
      "Deux grandeurs sont proportionnelles si l'on passe de l'une à l'autre en multipliant toujours par le même nombre (coefficient de proportionnalité). On peut vérifier en calculant les quotients dans un tableau : s'ils sont tous égaux, c'est proportionnel.",
    exampleCorrect: {
      sentence:
        "3 kg → 6 € ; 5 kg → 10 € ; 7 kg → 14 €. Coefficient = 2 €/kg. C'est proportionnel.",
      explanation:
        "6/3 = 10/5 = 14/7 = 2. Tous les quotients sont égaux → situation de proportionnalité avec coefficient 2 €/kg ✓.",
    },
    exampleWrong: {
      sentence:
        "L'âge et la taille d'un enfant sont proportionnels car plus il est âgé, plus il est grand.",
      explanation:
        "« Plus…, plus… » n'implique pas la proportionnalité. La taille ne double pas quand l'âge double. La croissance n'est pas proportionnelle à l'âge.",
    },
    mainTrap:
      "Le produit en croix est un outil de calcul, pas un critère de proportionnalité. Pour vérifier la proportionnalité, on calcule les quotients (ou on vérifie la constance du coefficient). Le produit en croix sert ensuite à trouver une quatrième proportionnelle.",
    quiz: [
      {
        sentence:
          "Si 4 stylos coûtent 6 €, alors 10 stylos coûtent 15 € (situation proportionnelle).",
        isCorrect: true,
        explanation:
          "VRAI. Coefficient = 6/4 = 1,5 €/stylo. 10 × 1,5 = 15 €. Ou par produit en croix : 10 × 6 / 4 = 15.",
      },
      {
        sentence:
          "Un tableau est de proportionnalité si les sommes des lignes sont égales.",
        isCorrect: false,
        explanation:
          "FAUX. On vérifie la proportionnalité en testant que les quotients (valeur ligne 2 / valeur ligne 1) sont constants, pas que les sommes sont égales.",
      },
      {
        sentence:
          "Le graphique d'une situation de proportionnalité est une droite passant par l'origine.",
        isCorrect: true,
        explanation:
          "VRAI. Si y = k × x (proportionnalité), le graphique est une droite passant par l'origine (0 ; 0) avec k comme coefficient directeur.",
      },
      {
        sentence: "Si on double la quantité, le prix double : c'est la définition de la proportionnalité.",
        isCorrect: true,
        explanation:
          "VRAI. C'est une conséquence directe de la proportionnalité : multiplier une grandeur par un facteur multiplie l'autre par le même facteur.",
      },
      {
        sentence: "Le coefficient de proportionnalité est toujours un nombre entier.",
        isCorrect: false,
        explanation:
          "FAUX. Le coefficient peut être décimal ou fractionnaire. Exemple : 3 articles pour 7 € → coefficient = 7/3 ≈ 2,33 €/article.",
      },
    ],
  },
};
