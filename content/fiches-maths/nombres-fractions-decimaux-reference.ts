import type { Fiche } from "@/features/fiches/types";

export const fractionsDecimauxReference: Fiche = {
  id: "nombres-fractions-decimaux-reference",
  slug: "fractions-decimaux-passages-equivalences",
  title: "Fractions et décimaux : passages et équivalences",
  subtitle: "Fiche de référence complète",
  domaine: "nombres_calcul",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "fractions",
    "décimaux",
    "conversion",
    "fraction décimale",
    "développement décimal",
    "droite graduée",
  ],
  notionsLiees: [
    "nombres-fractions-sprint",
    "nombres-decimaux-sprint",
    "nombres-fractions-operations-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Fractions et nombres décimaux sont deux écritures du même concept : un quotient. Cette fiche détaille les passages entre écriture fractionnaire et écriture décimale, les fractions décimales, et les cas où le développement décimal est fini ou infini.",
    sections: [
      {
        id: "fraction-decimale",
        title: "Fraction décimale et nombre décimal",
        badge: "Définition",
        blocks: [
          {
            kind: "rule",
            content:
              "Une fraction décimale est une fraction dont le dénominateur est une puissance de 10 (10, 100, 1 000…). Un nombre décimal est un nombre qui peut s'écrire sous forme de fraction décimale. Tout nombre décimal a un développement décimal fini.",
            watchout:
              "Toute fraction n'est pas décimale. 1/3 n'est pas un nombre décimal car on ne peut pas l'écrire avec un dénominateur puissance de 10.",
          },
          {
            kind: "table",
            caption: "Exemples de fractions décimales",
            headers: ["Fraction décimale", "Écriture décimale", "Lecture"],
            rows: [
              ["7/10", "0,7", "sept dixièmes"],
              ["35/100", "0,35", "trente-cinq centièmes"],
              ["1 234/1 000", "1,234", "un et deux cent trente-quatre millièmes"],
              ["250/100", "2,5", "deux et cinq dixièmes"],
            ],
          },
        ],
      },
      {
        id: "fraction-vers-decimal",
        title: "De la fraction à l'écriture décimale",
        blocks: [
          {
            kind: "rule",
            content:
              "Pour convertir une fraction en écriture décimale, on effectue la division du numérateur par le dénominateur. Si la division tombe juste, le nombre est décimal. Si elle ne tombe pas juste, on obtient un développement décimal illimité (périodique).",
          },
          {
            kind: "table",
            caption: "Conversions courantes à connaître",
            headers: ["Fraction", "Décimal", "Type"],
            rows: [
              ["1/2", "0,5", "Décimal fini"],
              ["1/4", "0,25", "Décimal fini"],
              ["3/4", "0,75", "Décimal fini"],
              ["1/5", "0,2", "Décimal fini"],
              ["1/8", "0,125", "Décimal fini"],
              ["1/3", "0,333…", "Périodique infini"],
              ["1/6", "0,1666…", "Périodique infini"],
              ["1/7", "0,142857…", "Périodique infini"],
            ],
          },
          {
            kind: "tip",
            text: "Méthode rapide : si le dénominateur simplifié ne contient que des facteurs 2 et 5, la fraction est décimale. Sinon, le développement est infini périodique.",
          },
        ],
      },
      {
        id: "decimal-vers-fraction",
        title: "De l'écriture décimale à la fraction",
        blocks: [
          {
            kind: "rule",
            content:
              "Pour convertir un nombre décimal en fraction : compter le nombre de chiffres après la virgule (n), écrire le nombre sans virgule au numérateur et 10ⁿ au dénominateur, puis simplifier.",
          },
          {
            kind: "example",
            sentence:
              "0,375 = 375/1 000 = 3/8 (on simplifie par 125)",
            annotation:
              "3 chiffres après la virgule → dénominateur 1 000. PGCD(375, 1 000) = 125.",
            isCorrect: true,
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Simplification oubliée",
                explanation:
                  "0,6 = 6/10, mais la fraction irréductible est 3/5. Toujours simplifier par le PGCD.",
              },
              {
                label: "Erreur de puissance de 10",
                explanation:
                  "0,05 = 5/100 (pas 5/10). Le nombre de zéros après la virgule avant le premier chiffre significatif compte.",
              },
            ],
          },
        ],
      },
      {
        id: "comparaison",
        title: "Comparer fractions et décimaux",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Pour comparer une fraction et un décimal : soit convertir la fraction en décimal, soit convertir le décimal en fraction et mettre au même dénominateur. La droite graduée est un outil de vérification visuelle.",
          },
          {
            kind: "table",
            caption: "Stratégies de comparaison",
            headers: ["Méthode", "Quand l'utiliser", "Exemple"],
            rows: [
              [
                "Conversion en décimal",
                "Quand la fraction donne un décimal fini simple",
                "3/4 vs 0,8 → 0,75 vs 0,8 → 3/4 < 0,8",
              ],
              [
                "Même dénominateur",
                "Quand les deux fractions sont données",
                "2/3 vs 3/5 → 10/15 vs 9/15 → 2/3 > 3/5",
              ],
              [
                "Encadrement",
                "Pour des fractions difficiles à convertir",
                "5/7 est entre 0,71 et 0,72 ; comparer avec le décimal donné",
              ],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Fraction décimale = dénominateur puissance de 10 → développement décimal fini",
      "Critère : une fraction irréductible est décimale si et seulement si le dénominateur n'a que des facteurs 2 et 5",
      "Pour convertir un décimal en fraction : numérateur = nombre sans virgule, dénominateur = 10ⁿ, puis simplifier",
      "Conversions à connaître par cœur : 1/2, 1/4, 3/4, 1/5, 1/8",
      "Un développement décimal infini est toujours périodique pour une fraction",
      "Comparer fractions et décimaux : convertir dans le même format ou utiliser la droite graduée",
    ],
    quiz: [
      {
        sentence: "1/3 est un nombre décimal car on peut écrire 0,333…",
        isCorrect: false,
        explanation:
          "FAUX. Un nombre décimal a un développement décimal FINI. 1/3 = 0,333… est un développement infini. 1/3 n'est pas un nombre décimal.",
      },
      {
        sentence: "0,125 = 1/8",
        isCorrect: true,
        explanation:
          "VRAI. 0,125 = 125/1 000 = 1/8 (on simplifie par 125). Vérification : 1 ÷ 8 = 0,125.",
      },
      {
        sentence:
          "Pour savoir si 7/12 est décimal, on vérifie que le dénominateur simplifié ne contient que des facteurs 2 et 5.",
        isCorrect: true,
        explanation:
          "VRAI. 7/12 est déjà irréductible. 12 = 2² × 3. Le facteur 3 empêche d'obtenir une puissance de 10 → 7/12 n'est pas décimal.",
      },
      {
        sentence: "3/8 > 0,4",
        isCorrect: false,
        explanation:
          "FAUX. 3/8 = 0,375. Or 0,375 < 0,4. Donc 3/8 < 0,4.",
      },
      {
        sentence:
          "Toute fraction dont le développement décimal est infini a un motif qui se répète (développement périodique).",
        isCorrect: true,
        explanation:
          "VRAI. Le développement décimal de toute fraction a/b (b ≠ 0) est soit fini, soit infini périodique. C'est une conséquence de l'algorithme de la division (les restes se répètent).",
      },
    ],
  },
};
