import type { Fiche } from "@/features/fiches/types";

export const numerationPositionnelleReference: Fiche = {
  id: "nombres-numeration-positionnelle-reference",
  slug: "numeration-positionnelle-principes-pieges",
  title: "Numération positionnelle : principes et pièges",
  subtitle: "Fiche de référence complète",
  domaine: "nombres_calcul",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "numération",
    "base 10",
    "position",
    "chiffre",
    "nombre",
    "décomposition",
    "unités",
    "dizaines",
    "centaines",
  ],
  notionsLiees: [
    "nombres-entiers-naturels-sprint",
    "nombres-decimaux-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La numération positionnelle en base 10 est le système utilisé pour écrire tous les nombres. Chaque chiffre a une valeur qui dépend de sa position. Cette fiche détaille les principes fondamentaux, les décompositions canoniques et les pièges classiques du CRPE.",
    sections: [
      {
        id: "principe",
        title: "Principe de la numération positionnelle",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Dans un système de numération positionnel en base b, chaque position correspond à une puissance de b. En base 10 : …, milliers (10³), centaines (10²), dizaines (10¹), unités (10⁰). La valeur d'un chiffre = chiffre × puissance de 10 correspondante.",
            watchout:
              "Ne pas confondre chiffre et nombre : un chiffre est un symbole (0 à 9 en base 10), un nombre est une quantité pouvant nécessiter plusieurs chiffres.",
          },
          {
            kind: "example",
            sentence: "3 047 = 3 × 1 000 + 0 × 100 + 4 × 10 + 7 × 1",
            annotation:
              "Le 0 des centaines est essentiel : il signifie « aucune centaine » et maintient la position des autres chiffres.",
            isCorrect: true,
          },
          {
            kind: "tip",
            text: "Le rôle du zéro comme « gardien de position » est un concept fondamental à maîtriser pour le CRPE. Sans le zéro, 3 047 et 347 seraient indistinguables.",
          },
        ],
      },
      {
        id: "decompositions",
        title: "Décompositions d'un nombre",
        blocks: [
          {
            kind: "rule",
            content:
              "Décomposition canonique : somme des produits chiffre × puissance de 10. Décomposition additive : somme de termes « en lettres » (milliers + centaines + dizaines + unités). Décomposition multiplicative : en produit de facteurs. Toutes sont utiles pour comprendre la structure du nombre.",
          },
          {
            kind: "table",
            caption: "Les différentes décompositions de 2 305",
            headers: ["Type", "Décomposition"],
            rows: [
              ["Canonique", "2 × 10³ + 3 × 10² + 0 × 10¹ + 5 × 10⁰"],
              ["Additive", "2 000 + 300 + 5"],
              ["En unités de numération", "2 milliers 3 centaines 5 unités"],
              ["Avec regroupements", "23 centaines et 5 unités"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Confusion « chiffre de » et « nombre de »",
                explanation:
                  "Dans 3 247 : le chiffre des centaines est 2, mais le nombre de centaines est 32 (car 3 247 = 32 × 100 + 47). « Chiffre de » = le symbole à cette position ; « nombre de » = combien de groupes de cette puissance.",
                correction:
                  "Pour trouver le nombre de centaines de 3 247 : diviser 3 247 par 100, prendre la partie entière → 32.",
              },
            ],
          },
        ],
      },
      {
        id: "bases",
        title: "Autres bases de numération",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le principe positionnel fonctionne dans toute base b ≥ 2. En base 2 (binaire), les positions valent 1, 2, 4, 8, 16… En base 16 (hexadécimal), on utilise les chiffres 0-9 puis A-F. Au CRPE, la base 2 et les bases exotiques apparaissent parfois pour tester la compréhension du principe positionnel.",
            linguisticLogic:
              "Comprendre le fonctionnement dans une autre base prouve qu'on maîtrise le principe positionnel, et non simplement l'habitude de la base 10.",
          },
          {
            kind: "table",
            caption: "Écriture de 13 en différentes bases",
            headers: ["Base", "Écriture", "Vérification"],
            rows: [
              ["Base 10", "13", "1 × 10 + 3 = 13"],
              ["Base 2", "1101", "1 × 8 + 1 × 4 + 0 × 2 + 1 × 1 = 13"],
              ["Base 5", "23", "2 × 5 + 3 = 13"],
              ["Base 16", "D", "D = 13"],
            ],
          },
          {
            kind: "example",
            sentence:
              "En base 5, après 4 vient 10 (car on regroupe par 5). 10₅ = 1 × 5 + 0 = 5 en base 10.",
            annotation:
              "Le passage à la dizaine en base 5 se fait dès qu'on atteint 5 unités, tout comme en base 10 dès qu'on atteint 10 unités.",
            isCorrect: true,
          },
        ],
      },
      {
        id: "decimaux-positionnels",
        title: "Extension aux nombres décimaux",
        blocks: [
          {
            kind: "rule",
            content:
              "Le principe positionnel s'étend à droite de la virgule avec les puissances négatives de 10 : dixièmes (10⁻¹ = 0,1), centièmes (10⁻² = 0,01), millièmes (10⁻³ = 0,001), etc.",
          },
          {
            kind: "example",
            sentence:
              "45,307 = 4 × 10 + 5 × 1 + 3 × 0,1 + 0 × 0,01 + 7 × 0,001",
            annotation:
              "Chaque rang à droite de la virgule correspond à une puissance négative de 10 décroissante.",
            isCorrect: true,
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Rang décimal et zéro intercalaire",
                explanation:
                  "Dans 3,07, le 0 des dixièmes est indispensable. Sans lui, on lirait « 3 dixièmes et 7 centièmes = 0,37 » au lieu de « 0 dixièmes et 7 centièmes = 0,07 ».",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "La valeur d'un chiffre dépend de sa position (principe positionnel)",
      "Le zéro sert de gardien de position — il ne s'élimine jamais en milieu de nombre",
      "« Chiffre de » ≠ « nombre de » — distinction essentielle au CRPE",
      "Décomposition canonique : somme de (chiffre × puissance de 10)",
      "Le principe fonctionne dans toute base b ≥ 2",
      "Les rangs décimaux prolongent le système avec les puissances négatives de 10",
    ],
    quiz: [
      {
        sentence:
          "Dans 4 506, le chiffre des centaines est 5 et le nombre de centaines est 45.",
        isCorrect: true,
        explanation:
          "VRAI. Le chiffre des centaines est 5 (le symbole à cette position). Le nombre de centaines = 4 506 ÷ 100 = 45 (partie entière). 4 506 = 45 × 100 + 6.",
      },
      {
        sentence: "En base 2, le nombre 1010 vaut 10 en base 10.",
        isCorrect: true,
        explanation:
          "VRAI. 1010₂ = 1 × 8 + 0 × 4 + 1 × 2 + 0 × 1 = 8 + 2 = 10.",
      },
      {
        sentence:
          "Le zéro dans 3 047 n'a aucune importance car il n'ajoute rien à la valeur.",
        isCorrect: false,
        explanation:
          "FAUX. Le zéro maintient les positions : sans lui, 347 ≠ 3 047. Il signifie « aucune centaine » et garde le 3 au rang des milliers.",
      },
      {
        sentence:
          "Dans 7,205, il y a 2 dixièmes, 0 centièmes et 5 millièmes.",
        isCorrect: true,
        explanation:
          "VRAI. 7,205 = 7 + 2 × 0,1 + 0 × 0,01 + 5 × 0,001. Le zéro des centièmes maintient la position du 5 au rang des millièmes.",
      },
      {
        sentence:
          "« Le chiffre des dizaines de 852 » et « le nombre de dizaines de 852 » donnent la même réponse : 5.",
        isCorrect: false,
        explanation:
          "FAUX. Le chiffre des dizaines est 5. Le nombre de dizaines est 85 (852 ÷ 10, partie entière). 852 = 85 × 10 + 2.",
      },
    ],
  },
};
