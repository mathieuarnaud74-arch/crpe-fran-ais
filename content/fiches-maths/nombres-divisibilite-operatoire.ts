import type { Fiche } from "@/features/fiches/types";

export const nombresDivisibiliteOperatoire: Fiche = {
  id: "nombres-divisibilite-operatoire",
  slug: "tester-divisibilite-decomposer-facteurs-premiers",
  title: "Tester la divisibilité et décomposer en facteurs premiers",
  domaine: "nombres_calcul",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "divisibilité",
    "critères",
    "facteurs premiers",
    "décomposition",
    "nombres premiers",
    "multiples",
    "diviseurs",
  ],
  notionsLiees: [
    "nombres-divisibilite-sprint",
    "nombres-pgcd-ppcm-sprint",
    "nombres-pgcd-operatoire",
    "nombres-arithmetique-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Que dois-tu faire : tester si un nombre est divisible par un autre, ou décomposer un nombre en facteurs premiers ?",
    decisionTree: {
      type: "question",
      text: "Dois-tu tester la divisibilité d'un nombre par un diviseur donné ?",
      yes: {
        type: "question",
        text: "Le diviseur est-il 2, 3, 4, 5, 9, 10 ou 25 ? (critères rapides)",
        yes: {
          type: "leaf",
          label: "Appliquer le critère de divisibilité",
          rule: "Par 2 : dernier chiffre pair. Par 3 : somme des chiffres divisible par 3. Par 4 : les deux derniers chiffres forment un multiple de 4. Par 5 : finit par 0 ou 5. Par 9 : somme des chiffres divisible par 9. Par 10 : finit par 0. Par 25 : les deux derniers chiffres forment un multiple de 25 (00, 25, 50, 75).",
          example:
            "2 346 est-il divisible par 3 ? Somme : 2 + 3 + 4 + 6 = 15. 15 est divisible par 3 → oui.",
        },
        no: {
          type: "leaf",
          label: "Division euclidienne",
          rule: "Pour un diviseur quelconque (ex : 7, 11, 13), effectuer la division. Si le reste est 0, le nombre est divisible. Pour 7 et 11, il existe des astuces mais la division reste la méthode la plus fiable.",
          example:
            "182 ÷ 7 = 26, reste 0 → 182 est divisible par 7.",
        },
      },
      no: {
        type: "question",
        text: "Dois-tu décomposer un nombre en produit de facteurs premiers ?",
        yes: {
          type: "leaf",
          label: "Division successive par les nombres premiers",
          rule: "Diviser successivement par 2, 3, 5, 7, 11, 13… (les nombres premiers dans l'ordre). À chaque étape, diviser autant de fois que possible. S'arrêter quand le quotient vaut 1. Le résultat est le produit de tous les diviseurs utilisés.",
          example:
            "360 = 2 × 180 = 2 × 2 × 90 = 2 × 2 × 2 × 45 = 2³ × 3 × 15 = 2³ × 3 × 3 × 5 = 2³ × 3² × 5.",
        },
        no: {
          type: "leaf",
          label: "Trouver tous les diviseurs d'un nombre",
          rule: "Tester tous les entiers de 1 à √n. Pour chaque diviseur d trouvé, n/d est aussi un diviseur. Ou bien utiliser la décomposition en facteurs premiers et combiner les facteurs.",
          example:
            "Diviseurs de 12 : 1, 2, 3, 4, 6, 12. Vérification : √12 ≈ 3,46, on teste 1, 2, 3.",
        },
      },
    },
    workedExample: {
      phrase:
        "Décomposer 1 260 en produit de facteurs premiers, puis trouver tous ses diviseurs qui sont des multiples de 10.",
      steps: [
        "Étape 1 — Diviser par 2 : 1 260 ÷ 2 = 630 ; 630 ÷ 2 = 315 ; 315 n'est pas pair → 2² retenu.",
        "Étape 2 — Diviser par 3 : 315 ÷ 3 = 105 ; 105 ÷ 3 = 35 ; 35 n'est pas divisible par 3 → 3² retenu.",
        "Étape 3 — Diviser par 5 : 35 ÷ 5 = 7 → 5¹ retenu.",
        "Étape 4 — 7 est premier → 7¹ retenu. Quotient = 1, on s'arrête.",
        "Étape 5 — Résultat : 1 260 = 2² × 3² × 5 × 7.",
        "Étape 6 — Les multiples de 10 parmi les diviseurs : 10 = 2 × 5. Il faut au moins un facteur 2 et un facteur 5. Possibilités : 2¹ ou 2² pour le 2, 5¹ pour le 5, 3⁰ ou 3¹ ou 3² pour le 3, 7⁰ ou 7¹ pour le 7.",
        "Étape 7 — Liste : 10, 20, 30, 60, 70, 90, 140, 180, 210, 420, 630, 1 260. Soit 12 diviseurs multiples de 10. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Le nombre 2 024 est divisible par 4 car ses deux derniers chiffres (24) forment un multiple de 4.",
        isCorrect: true,
        explanation:
          "VRAI. 24 ÷ 4 = 6. Le critère de divisibilité par 4 porte sur les deux derniers chiffres.",
      },
      {
        sentence:
          "Si un nombre est divisible par 6, il est forcément divisible à la fois par 2 et par 3.",
        isCorrect: true,
        explanation:
          "VRAI. 6 = 2 × 3, et 2 et 3 sont premiers entre eux. Réciproquement, si un nombre est divisible par 2 ET par 3, il est divisible par 6.",
      },
      {
        sentence:
          "Si un nombre est divisible par 4 et par 6, alors il est divisible par 24.",
        isCorrect: false,
        explanation:
          "FAUX. 12 est divisible par 4 et par 6, mais pas par 24. La règle « divisible par a et b ⇒ divisible par a×b » n'est valable que si a et b sont premiers entre eux. Ici PGCD(4, 6) = 2 ≠ 1.",
      },
      {
        sentence:
          "La décomposition en facteurs premiers d'un entier supérieur à 1 est unique (à l'ordre des facteurs près).",
        isCorrect: true,
        explanation:
          "VRAI. C'est le théorème fondamental de l'arithmétique. Chaque entier > 1 admet une et une seule décomposition en produit de facteurs premiers.",
      },
      {
        sentence:
          "Pour vérifier qu'un nombre n est premier, il suffit de tester sa divisibilité par tous les nombres premiers inférieurs ou égaux à n/2.",
        isCorrect: false,
        explanation:
          "FAUX. Il suffit de tester jusqu'à √n (pas n/2). Si n a un diviseur d > √n, alors n/d < √n est aussi un diviseur qu'on aurait déjà trouvé. Exemple : pour n = 97, √97 ≈ 9,8 → tester 2, 3, 5, 7.",
      },
    ],
    didacticNote:
      "Les critères de divisibilité sont au programme du cycle 3 (par 2, 5, 10) puis du cycle 4 (par 3, 9, 4). La décomposition en facteurs premiers est travaillée au cycle 4. Au CRPE, les questions typiques portent sur la recherche de PGCD/PPCM via la décomposition, ou sur des problèmes de partage (combien de groupes égaux peut-on former ?).",
  },
};
