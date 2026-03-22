import type { Fiche } from "@/features/fiches/types";

export const donneesDenombrementCombinatoireSprint: Fiche = {
  id: "donnees-denombrement-combinatoire-sprint",
  slug: "denombrement-combinatoire-principes-fondamentaux",
  title: "Dénombrement et combinatoire : principes fondamentaux",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "dénombrement",
    "combinatoire",
    "arbre des possibles",
    "principe multiplicatif",
    "arrangements",
    "combinaisons",
    "permutations",
  ],
  notionsLiees: [
    "donnees-probabilites-sprint",
    "donnees-probabilites-composees-sprint",
    "donnees-probabilites-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le dénombrement. Pour les probabilités qui utilisent ces techniques, consulte les fiches « Probabilités » et « Probabilités composées ».",
    oneLiner:
      "Dénombrer, c'est compter sans oublier ni compter deux fois. Deux principes fondamentaux : le principe multiplicatif (si n₁ choix à l'étape 1 et n₂ à l'étape 2, il y a n₁ × n₂ résultats) et le principe additif (si les situations sont disjointes, on additionne). L'arbre des possibles est l'outil de base pour ne rien oublier.",
    exampleCorrect: {
      sentence:
        "Menu : 3 entrées, 4 plats, 2 desserts. Nombre de menus possibles = 3 × 4 × 2 = 24. C'est le principe multiplicatif : les choix sont indépendants et successifs.",
      explanation:
        "Chaque étape (entrée, plat, dessert) est indépendante. On multiplie les nombres de possibilités à chaque étape. Un arbre à 3 niveaux donnerait bien 24 feuilles. ✓",
    },
    exampleWrong: {
      sentence:
        "Pour former un code à 3 chiffres (0-9), il y a 10 + 10 + 10 = 30 codes possibles.",
      explanation:
        "FAUX. Les choix sont indépendants et successifs → principe multiplicatif, pas additif. Il y a 10 × 10 × 10 = 1 000 codes possibles (de 000 à 999). L'addition s'utilise quand les situations sont disjointes (« ou »), pas quand elles se combinent (« et »).",
    },
    mainTrap:
      "Confondre « et » (multiplication) et « ou » (addition). Si je veux une entrée ET un plat : je multiplie. Si je veux une entrée OU un plat (l'un des deux, pas les deux) : j'additionne. Autre piège : oublier de distinguer les situations « avec ordre » (arrangements) et « sans ordre » (combinaisons). Tirer 3 cartes parmi 10 sans se soucier de l'ordre donne beaucoup moins de possibilités que si l'ordre compte.",
    quiz: [
      {
        sentence:
          "Le nombre de façons de classer 4 coureurs sur un podium de 3 places est 4 × 3 × 2 = 24.",
        isCorrect: true,
        explanation:
          "VRAI. 1re place : 4 choix, 2e place : 3 choix restants, 3e place : 2 choix. C'est un arrangement de 4 éléments pris 3 par 3 : A(4,3) = 4!/1! = 24.",
      },
      {
        sentence:
          "Le nombre de poignées de main entre 5 personnes est 5 × 4 = 20.",
        isCorrect: false,
        explanation:
          "FAUX. Une poignée de main entre A et B est la même que B et A : l'ordre ne compte pas. C'est une combinaison : C(5,2) = 5 × 4 / 2 = 10 poignées de main, pas 20.",
      },
      {
        sentence:
          "Un arbre des possibles permet de dénombrer de manière exhaustive tous les résultats d'une expérience à plusieurs étapes.",
        isCorrect: true,
        explanation:
          "VRAI. L'arbre garantit qu'on n'oublie aucun cas et qu'on ne compte rien deux fois. Chaque chemin de la racine à une feuille représente un résultat possible.",
      },
      {
        sentence:
          "Le nombre de diagonales d'un polygone à n côtés est n(n−3)/2.",
        isCorrect: true,
        explanation:
          "VRAI. Chaque sommet peut être relié à (n−3) autres sommets par une diagonale (on exclut le sommet lui-même et ses 2 voisins). Comme chaque diagonale est comptée deux fois : n(n−3)/2.",
      },
      {
        sentence:
          "Dans un tirage sans remise, l'ordre dans lequel on tire les éléments n'a jamais d'importance.",
        isCorrect: false,
        explanation:
          "FAUX. Cela dépend du contexte. Pour un code ou un classement, l'ordre compte (arrangement). Pour une main de cartes ou une équipe, l'ordre ne compte pas (combinaison). Il faut toujours se demander : « Est-ce que AB et BA sont le même résultat ? »",
      },
    ],
  },
};
