import type { Fiche } from "@/features/fiches/types";

export const arithmetiqueReference: Fiche = {
  id: "nombres-arithmetique-reference",
  slug: "arithmetique-diviseurs-multiples-premiers",
  title: "Arithmétique : diviseurs, multiples, nombres premiers",
  subtitle: "Fiche de référence complète",
  domaine: "nombres_calcul",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "arithmétique",
    "diviseurs",
    "multiples",
    "nombres premiers",
    "décomposition en facteurs premiers",
    "crible d'Ératosthène",
    "PGCD",
    "PPCM",
  ],
  notionsLiees: [
    "nombres-divisibilite-sprint",
    "nombres-pgcd-ppcm-sprint",
    "nombres-pgcd-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'arithmétique étudie les propriétés des entiers naturels liées à la divisibilité. Cette fiche couvre les diviseurs, les multiples, les nombres premiers, la décomposition en facteurs premiers et les applications au calcul du PGCD et du PPCM.",
    sections: [
      {
        id: "diviseurs-multiples",
        title: "Diviseurs et multiples",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "a est un diviseur de b (noté a | b) si b = a × k avec k entier. Dire que a divise b est équivalent à dire que b est un multiple de a, que le reste de la division de b par a est nul.",
            watchout:
              "Tout nombre entier admet 1 et lui-même comme diviseurs. Un nombre qui n'a QUE ces deux diviseurs est un nombre premier.",
          },
          {
            kind: "table",
            caption: "Nombre de diviseurs — exemples",
            headers: ["Nombre", "Diviseurs", "Nombre de diviseurs"],
            rows: [
              ["12", "1, 2, 3, 4, 6, 12", "6"],
              ["7", "1, 7", "2 (nombre premier)"],
              ["1", "1", "1 (ni premier, ni composé)"],
              ["36", "1, 2, 3, 4, 6, 9, 12, 18, 36", "9"],
            ],
          },
          {
            kind: "tip",
            text: "Pour trouver tous les diviseurs de n : tester systématiquement les entiers de 1 à √n. Pour chaque diviseur d trouvé, n/d est aussi un diviseur.",
          },
        ],
      },
      {
        id: "nombres-premiers",
        title: "Nombres premiers",
        blocks: [
          {
            kind: "rule",
            content:
              "Un nombre premier est un entier naturel supérieur ou égal à 2 qui n'admet que deux diviseurs : 1 et lui-même. Le nombre 1 n'est pas premier (il n'a qu'un seul diviseur). Les premiers nombres premiers sont : 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31…",
            watchout:
              "2 est le seul nombre premier pair. Tous les autres nombres premiers sont impairs.",
          },
          {
            kind: "table",
            caption: "Nombres premiers jusqu'à 50",
            headers: ["Dizaine", "Premiers"],
            rows: [
              ["0-9", "2, 3, 5, 7"],
              ["10-19", "11, 13, 17, 19"],
              ["20-29", "23, 29"],
              ["30-39", "31, 37"],
              ["40-49", "41, 43, 47"],
            ],
          },
          {
            kind: "rule",
            content:
              "Le crible d'Ératosthène permet de trouver tous les premiers jusqu'à n : on barre les multiples de 2, puis de 3, puis de 5, etc., en ne gardant que les nombres non barrés. On s'arrête quand on dépasse √n.",
          },
        ],
      },
      {
        id: "decomposition",
        title: "Décomposition en facteurs premiers",
        blocks: [
          {
            kind: "rule",
            content:
              "Théorème fondamental de l'arithmétique : tout entier n ≥ 2 s'écrit de manière unique comme produit de facteurs premiers (à l'ordre près). Méthode : diviser n par le plus petit premier possible, puis recommencer avec le quotient.",
          },
          {
            kind: "example",
            sentence: "360 = 2³ × 3² × 5",
            annotation:
              "360 ÷ 2 = 180, 180 ÷ 2 = 90, 90 ÷ 2 = 45, 45 ÷ 3 = 15, 15 ÷ 3 = 5, 5 ÷ 5 = 1. Donc 360 = 2³ × 3² × 5¹.",
            isCorrect: true,
          },
          {
            kind: "tip",
            text: "La décomposition en facteurs premiers est la clé pour calculer PGCD et PPCM. PGCD : produit des facteurs communs avec les plus petits exposants. PPCM : produit de tous les facteurs avec les plus grands exposants.",
          },
        ],
      },
      {
        id: "pgcd-ppcm",
        title: "PGCD et PPCM par décomposition",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "À partir des décompositions en facteurs premiers : PGCD(a, b) = produit des facteurs premiers COMMUNS avec le plus PETIT exposant. PPCM(a, b) = produit de TOUS les facteurs premiers avec le plus GRAND exposant.",
          },
          {
            kind: "table",
            caption: "PGCD et PPCM de 360 et 150",
            headers: ["", "Facteur 2", "Facteur 3", "Facteur 5"],
            rows: [
              ["360 = 2³ × 3² × 5¹", "3", "2", "1"],
              ["150 = 2¹ × 3¹ × 5²", "1", "1", "2"],
              ["PGCD (min)", "1", "1", "1"],
              ["PPCM (max)", "3", "2", "2"],
            ],
          },
          {
            kind: "example",
            sentence:
              "PGCD(360, 150) = 2¹ × 3¹ × 5¹ = 30. PPCM(360, 150) = 2³ × 3² × 5² = 1 800.",
            annotation:
              "Vérification : 30 × 1 800 = 54 000 = 360 × 150 ✓.",
            isCorrect: true,
          },
        ],
      },
    ],
    keyPoints: [
      "Un nombre premier n'a que deux diviseurs : 1 et lui-même (1 n'est pas premier)",
      "2 est le seul nombre premier pair",
      "Théorème fondamental : tout entier ≥ 2 a une décomposition unique en facteurs premiers",
      "Pour trouver les diviseurs de n, on teste jusqu'à √n",
      "PGCD = facteurs communs, plus petits exposants ; PPCM = tous les facteurs, plus grands exposants",
      "PGCD(a, b) × PPCM(a, b) = a × b",
    ],
    quiz: [
      {
        sentence: "1 est un nombre premier.",
        isCorrect: false,
        explanation:
          "FAUX. Par convention, 1 n'est pas premier car il n'a qu'un seul diviseur (lui-même). Un nombre premier doit avoir exactement 2 diviseurs distincts.",
      },
      {
        sentence: "51 est un nombre premier.",
        isCorrect: false,
        explanation:
          "FAUX. 51 = 3 × 17. La somme des chiffres (5 + 1 = 6) est divisible par 3, donc 51 est divisible par 3.",
      },
      {
        sentence:
          "La décomposition en facteurs premiers de 72 est 2³ × 3².",
        isCorrect: true,
        explanation:
          "VRAI. 72 = 8 × 9 = 2³ × 3². Vérification : 8 × 9 = 72 ✓.",
      },
      {
        sentence: "Deux nombres premiers distincts sont toujours premiers entre eux.",
        isCorrect: true,
        explanation:
          "VRAI. Si p et q sont deux nombres premiers distincts, leur seul diviseur commun est 1, donc PGCD(p, q) = 1.",
      },
      {
        sentence:
          "Pour calculer le PPCM, on prend les facteurs communs avec les plus petits exposants.",
        isCorrect: false,
        explanation:
          "FAUX. C'est la définition du PGCD. Pour le PPCM, on prend TOUS les facteurs premiers avec les PLUS GRANDS exposants.",
      },
    ],
  },
};
