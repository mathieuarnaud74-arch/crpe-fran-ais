import type { Fiche } from "@/features/fiches/types";

export const nombresEquationsPremierDegreSprint: Fiche = {
  id: "nombres-equations-premier-degre-sprint",
  slug: "equations-premier-degre-resolution-verification",
  title: "Équations du premier degré : résolution et vérification",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "équation",
    "premier degré",
    "inconnue",
    "résolution",
    "vérification",
    "mise en équation",
    "opérations inverses",
  ],
  notionsLiees: [
    "nombres-entiers-naturels-sprint",
    "nombres-fractions-sprint",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les équations du premier degré. Pour les fractions dans les équations, consulte la fiche sprint « Fractions ».",
    oneLiner:
      "Résoudre ax + b = c, c'est isoler x par opérations inverses : soustraire b des deux côtés, puis diviser par a. L'objectif est d'obtenir x = … Toujours vérifier en remplaçant x par la solution dans l'équation de départ.",
    exampleCorrect: {
      sentence:
        "Résoudre 3x − 7 = 11. On ajoute 7 : 3x = 18. On divise par 3 : x = 6. Vérification : 3 × 6 − 7 = 18 − 7 = 11. ✓",
      explanation:
        "Méthode correcte : on effectue la même opération des deux côtés de l'égalité pour isoler x. La vérification confirme que x = 6 est bien la solution.",
    },
    exampleWrong: {
      sentence:
        "Résoudre 2x + 5 = 3x − 1. On fait 2x − 3x = −1 − 5, donc −x = −6, donc x = −6.",
      explanation:
        "Erreur de signe à la dernière étape. −x = −6 signifie x = 6 (on multiplie ou divise les deux côtés par −1). L'erreur « −x = −6 donc x = −6 » est très courante : l'élève ne traite pas le signe du coefficient de x.",
    },
    mainTrap:
      "Les erreurs de signe lors du passage de termes d'un côté à l'autre. Quand on « passe un terme de l'autre côté », on change son signe (c'est une soustraction ou addition des deux côtés). Autre piège : oublier de distribuer dans les équations avec parenthèses, comme 2(x + 3) = 10 → 2x + 6 = 10, pas 2x + 3 = 10.",
    quiz: [
      {
        sentence:
          "La solution de 5x + 3 = 28 est x = 5.",
        isCorrect: true,
        explanation:
          "VRAI. 5x = 28 − 3 = 25. x = 25/5 = 5. Vérification : 5 × 5 + 3 = 25 + 3 = 28. ✓",
      },
      {
        sentence:
          "Pour résoudre x/4 = 7, on divise les deux membres par 4.",
        isCorrect: false,
        explanation:
          "FAUX. x/4 = 7 signifie x ÷ 4 = 7. L'opération inverse de « diviser par 4 » est « multiplier par 4 ». Donc x = 7 × 4 = 28.",
      },
      {
        sentence:
          "L'équation 2x + 1 = 2x + 3 n'a aucune solution.",
        isCorrect: true,
        explanation:
          "VRAI. En soustrayant 2x des deux côtés : 1 = 3, ce qui est impossible. L'équation n'a aucune solution (les deux droites y = 2x + 1 et y = 2x + 3 sont parallèles).",
      },
      {
        sentence:
          "Résoudre une équation, c'est trouver la valeur de x qui rend l'égalité vraie.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition. La solution est la valeur qui, substituée à x, vérifie l'égalité. D'où l'importance de la vérification.",
      },
      {
        sentence:
          "Dans l'équation 3(x − 2) = 9, on peut directement écrire x − 2 = 3, puis x = 5.",
        isCorrect: true,
        explanation:
          "VRAI. On divise les deux côtés par 3 : x − 2 = 3, puis x = 5. C'est plus élégant que de développer 3x − 6 = 9, mais les deux approches donnent le même résultat.",
      },
    ],
  },
};
