import type { Fiche } from "@/features/fiches/types";

export const calculMentalReference: Fiche = {
  id: "nombres-calcul-mental-reference",
  slug: "calcul-mental-strategies-automatismes",
  title: "Calcul mental : stratégies et automatismes",
  subtitle: "Fiche de référence complète",
  domaine: "nombres_calcul",
  model: "reference",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "calcul mental",
    "stratégies",
    "automatismes",
    "compléments",
    "doubles",
    "décomposition",
    "estimation",
  ],
  notionsLiees: [
    "nombres-entiers-naturels-sprint",
    "nombres-decimaux-sprint",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Le calcul mental est une compétence transversale essentielle au CRPE : il est testé directement (épreuve de maths) et indirectement (vérification rapide de résultats). Cette fiche recense les stratégies fondamentales, les automatismes à maîtriser et les astuces pour calculer efficacement.",
    sections: [
      {
        id: "automatismes",
        title: "Automatismes de base",
        badge: "À maîtriser",
        blocks: [
          {
            kind: "rule",
            content:
              "Les automatismes sont des résultats connus par cœur, sans calcul. Ils accélèrent le calcul mental et réduisent la charge cognitive. À maîtriser impérativement : tables de multiplication (1 à 12), carrés (1² à 15²), compléments à 10, 100 et 1 000.",
          },
          {
            kind: "table",
            caption: "Carrés à connaître par cœur",
            headers: ["n", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "15"],
            rows: [
              ["n²", "1", "4", "9", "16", "25", "36", "49", "64", "81", "100", "121", "144", "225"],
            ],
          },
          {
            kind: "table",
            caption: "Compléments à mémoriser",
            headers: ["Type", "Exemples"],
            rows: [
              ["Compléments à 10", "3 + 7, 4 + 6, 2 + 8…"],
              ["Compléments à 100", "37 + 63, 45 + 55, 82 + 18…"],
              ["Doubles", "35 + 35 = 70, 45 + 45 = 90, 125 + 125 = 250…"],
            ],
          },
        ],
      },
      {
        id: "strategies-addition",
        title: "Stratégies pour l'addition et la soustraction",
        blocks: [
          {
            kind: "table",
            caption: "Stratégies de calcul mental additif",
            headers: ["Stratégie", "Principe", "Exemple"],
            rows: [
              [
                "Passer par une dizaine",
                "Décomposer pour atteindre un nombre rond",
                "47 + 8 = 47 + 3 + 5 = 50 + 5 = 55",
              ],
              [
                "Compensation",
                "Arrondir un terme et compenser",
                "67 + 29 = 67 + 30 − 1 = 97 − 1 = 96",
              ],
              [
                "Décomposition",
                "Séparer dizaines et unités",
                "45 + 38 = (40 + 30) + (5 + 8) = 70 + 13 = 83",
              ],
              [
                "Soustraction par ajout",
                "Chercher le complément",
                "72 − 48 : de 48 à 50 = 2, de 50 à 72 = 22, total = 24",
              ],
            ],
          },
        ],
      },
      {
        id: "strategies-multiplication",
        title: "Stratégies pour la multiplication et la division",
        blocks: [
          {
            kind: "table",
            caption: "Stratégies de calcul mental multiplicatif",
            headers: ["Stratégie", "Principe", "Exemple"],
            rows: [
              [
                "Distributivité",
                "Décomposer un facteur",
                "7 × 13 = 7 × 10 + 7 × 3 = 70 + 21 = 91",
              ],
              [
                "× 5 = × 10 ÷ 2",
                "Multiplier par 10 puis diviser par 2",
                "36 × 5 = 360 ÷ 2 = 180",
              ],
              [
                "× 25 = × 100 ÷ 4",
                "Multiplier par 100 puis diviser par 4",
                "24 × 25 = 2 400 ÷ 4 = 600",
              ],
              [
                "× 9 = × 10 − ×1",
                "Multiplier par 10 puis soustraire",
                "15 × 9 = 150 − 15 = 135",
              ],
              [
                "Factorisation",
                "Décomposer un facteur en produit",
                "35 × 12 = 35 × 4 × 3 = 140 × 3 = 420",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Pour diviser mentalement : chercher le plus grand multiple du diviseur inférieur ou égal au dividende. Exemple : 156 ÷ 12 → 12 × 13 = 156 (utiliser 12 × 10 = 120, il reste 36, 36 ÷ 12 = 3, total = 13).",
          },
        ],
      },
      {
        id: "estimation",
        title: "Estimation et ordres de grandeur",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "L'estimation consiste à arrondir les nombres pour obtenir rapidement un résultat approché. C'est indispensable pour vérifier un calcul (« le résultat est-il plausible ? ») et pour les QCM du CRPE.",
          },
          {
            kind: "example",
            sentence:
              "397 × 52 ≈ 400 × 50 = 20 000. Résultat exact : 20 644. L'estimation donne le bon ordre de grandeur.",
            annotation:
              "Arrondir chaque facteur au nombre rond le plus proche permet une vérification rapide.",
            isCorrect: true,
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Arrondir tous les termes dans le même sens",
                explanation:
                  "Si on arrondit tous les termes par excès dans une multiplication, le résultat estimé sera trop grand. Varier les arrondis (un par excès, un par défaut) donne une meilleure estimation.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Automatismes indispensables : tables de multiplication, carrés de 1 à 15, compléments à 10/100/1 000",
      "Stratégies additives : passer par la dizaine, compensation, décomposition",
      "Stratégies multiplicatives : distributivité, ×5 = ×10÷2, ×25 = ×100÷4, ×9 = ×10−×1",
      "L'estimation par arrondi permet de vérifier rapidement un résultat",
      "Au CRPE, l'estimation est souvent suffisante pour éliminer des réponses fausses en QCM",
      "Varier les sens d'arrondi pour une meilleure estimation d'un produit",
    ],
    quiz: [
      {
        sentence: "Pour calculer 36 × 5 mentalement, on peut faire 360 ÷ 2 = 180.",
        isCorrect: true,
        explanation:
          "VRAI. × 5 = × 10 ÷ 2. 36 × 10 = 360, puis 360 ÷ 2 = 180.",
      },
      {
        sentence: "67 + 29 = 67 + 30 − 1 = 96.",
        isCorrect: true,
        explanation:
          "VRAI. Stratégie de compensation : on arrondit 29 à 30 (plus facile à additionner) puis on retire 1.",
      },
      {
        sentence: "Pour estimer 498 × 21, on peut calculer 500 × 20 = 10 000.",
        isCorrect: true,
        explanation:
          "VRAI. Résultat exact : 10 458. L'estimation 10 000 donne un ordre de grandeur correct et rapide.",
      },
      {
        sentence: "12² = 144 et 13² = 169.",
        isCorrect: true,
        explanation:
          "VRAI. Ces carrés font partie des automatismes à connaître par cœur pour le calcul mental au CRPE.",
      },
      {
        sentence:
          "Pour calculer 15 × 9 mentalement, on fait 15 × 10 + 15 = 165.",
        isCorrect: false,
        explanation:
          "FAUX. × 9 = × 10 MOINS × 1, pas plus. 15 × 9 = 15 × 10 − 15 = 150 − 15 = 135.",
      },
    ],
  },
};
