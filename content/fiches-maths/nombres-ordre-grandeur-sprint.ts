import type { Fiche } from "@/features/fiches/types";

export const nombresOrdreGrandeurSprint: Fiche = {
  id: "nombres-ordre-grandeur-sprint",
  slug: "ordre-grandeur-estimation-sprint",
  title: "Ordres de grandeur et estimation",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "ordre de grandeur",
    "estimation",
    "arrondi",
    "calcul approché",
    "vérification",
  ],
  notionsLiees: [
    "nombres-entiers-naturels-sprint",
    "nombres-decimaux-sprint",
    "nombres-calcul-mental-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les ordres de grandeur et l'estimation, compétence transversale essentielle pour le CRPE. Elle est de niveau débutant mais fondamentale pour vérifier tout calcul.",
    oneLiner:
      "Un ordre de grandeur est une valeur approchée d'un nombre, obtenue par arrondi, qui permet de vérifier rapidement la vraisemblance d'un résultat. Estimer, c'est remplacer les nombres exacts par des valeurs « rondes » plus faciles à manipuler mentalement : 498 × 21 ≈ 500 × 20 = 10 000. Un résultat de 1 046 est cohérent ; un résultat de 104 580 ne l'est pas.",
    exampleCorrect: {
      sentence:
        "Pour vérifier 387 + 614 = 1 001, on estime : 400 + 600 = 1 000. Le résultat 1 001 est cohérent avec l'estimation.",
      explanation:
        "L'arrondi à la centaine la plus proche (387 ≈ 400, 614 ≈ 600) donne un calcul mental immédiat. L'écart entre l'estimation (1 000) et le résultat exact (1 001) est faible, ce qui confirme la vraisemblance. Si le résultat avait été 10 001, l'estimation aurait détecté l'erreur.",
    },
    exampleWrong: {
      sentence:
        "Calculer 387 + 614 en posant l'opération sans vérifier par estimation, accepter un résultat manifestement aberrant.",
      explanation:
        "FAUX. Sans estimation préalable ou de contrôle, une erreur de calcul posé (oubli de retenue, décalage de colonne) peut passer inaperçue. L'estimation est un filet de sécurité indispensable : elle ne donne pas le résultat exact mais détecte les erreurs grossières.",
    },
    mainTrap:
      "Confondre arrondi et troncature. Arrondir 3,47 à l'unité donne 3 (car 0,47 < 0,5). Tronquer 3,47 à l'unité donne aussi 3, mais pour une raison différente (on supprime les décimales). Pour 3,85, l'arrondi donne 4, la troncature donne 3. Au CRPE, la distinction est attendue. De plus, estimer n'est pas deviner : c'est un calcul approché raisonné, pas un « à peu près ».",
    quiz: [
      {
        sentence:
          "L'ordre de grandeur de 4 987 × 52 est environ 250 000 (≈ 5 000 × 50).",
        isCorrect: true,
        explanation:
          "VRAI. On arrondit 4 987 à 5 000 et 52 à 50. Le produit approché est 5 000 × 50 = 250 000. Le résultat exact est 259 324, ce qui est bien du même ordre de grandeur.",
      },
      {
        sentence:
          "Arrondir 2,75 à l'unité donne 2.",
        isCorrect: false,
        explanation:
          "FAUX. 2,75 arrondi à l'unité donne 3, car la partie décimale (0,75) est supérieure ou égale à 0,5. La règle d'arrondi : si le chiffre suivant est ≥ 5, on arrondit à la valeur supérieure.",
      },
      {
        sentence:
          "L'estimation permet de détecter une erreur grossière dans un calcul posé, mais pas une petite erreur.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la limite de l'estimation : elle détecte les erreurs d'un facteur 10 ou plus (oubli de zéro, erreur de virgule) mais pas une erreur de quelques unités. Elle complète le calcul posé, elle ne le remplace pas.",
      },
      {
        sentence:
          "Pour estimer le prix total de 7 articles à 8,90 € chacun, on peut calculer 7 × 9 = 63 €.",
        isCorrect: true,
        explanation:
          "VRAI. Arrondir 8,90 à 9 simplifie le calcul mental. Le résultat exact est 62,30 €, très proche de l'estimation à 63 €. C'est un réflexe utile dans la vie courante et en situation de problème au CRPE.",
      },
      {
        sentence:
          "La troncature et l'arrondi donnent toujours le même résultat.",
        isCorrect: false,
        explanation:
          "FAUX. Troncature et arrondi coïncident quand la partie supprimée est inférieure à 5 (ex : 3,42 → 3 dans les deux cas). Mais ils divergent quand elle est ≥ 5 (ex : 3,75 → troncature = 3, arrondi = 4). La distinction est importante au CRPE.",
      },
    ],
  },
};
