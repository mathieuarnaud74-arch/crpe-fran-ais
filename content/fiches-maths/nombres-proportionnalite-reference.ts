import type { Fiche } from "@/features/fiches/types";

export const proportionnaliteReference: Fiche = {
  id: "nombres-proportionnalite-reference",
  slug: "proportionnalite-tableaux-graphiques-coefficients",
  title: "Proportionnalité : tableaux, graphiques, coefficients",
  subtitle: "Fiche de référence complète",
  domaine: "nombres_calcul",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "proportionnalité",
    "tableau",
    "graphique",
    "coefficient",
    "produit en croix",
    "pourcentage",
    "échelle",
    "vitesse",
  ],
  notionsLiees: [
    "nombres-proportionnalite-sprint",
    "nombres-probleme-proportionnalite-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La proportionnalité est un concept central au CRPE, présent dans de nombreux domaines : prix, vitesses, échelles, pourcentages, agrandissements. Cette fiche détaille les différentes représentations (tableaux, graphiques) et les méthodes de calcul (coefficient, produit en croix, linéarité).",
    sections: [
      {
        id: "definition",
        title: "Définition et reconnaissance",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Deux grandeurs x et y sont proportionnelles s'il existe un nombre constant k tel que y = k × x pour toutes les valeurs. k est le coefficient de proportionnalité. Tester : calculer y/x pour chaque couple de valeurs — si tous les quotients sont égaux, c'est proportionnel.",
            watchout:
              "« Plus… plus… » ne suffit pas à conclure à la proportionnalité. Il faut que le rapport soit constant.",
          },
          {
            kind: "table",
            caption: "Reconnaître la proportionnalité dans un tableau",
            headers: ["x", "2", "5", "8", "10"],
            rows: [
              ["y", "6", "15", "24", "30"],
              ["y/x", "3", "3", "3", "3"],
            ],
          },
          {
            kind: "example",
            sentence:
              "Tous les quotients y/x valent 3 → c'est un tableau de proportionnalité avec k = 3.",
            annotation:
              "Le coefficient de proportionnalité k = 3 signifie que pour obtenir y, on multiplie x par 3.",
            isCorrect: true,
          },
        ],
      },
      {
        id: "graphique",
        title: "Représentation graphique",
        blocks: [
          {
            kind: "rule",
            content:
              "Le graphique d'une situation de proportionnalité est une droite passant par l'origine du repère. Le coefficient de proportionnalité correspond au coefficient directeur de la droite.",
            watchout:
              "Une droite qui ne passe pas par l'origine représente une fonction affine (y = ax + b avec b ≠ 0), pas une proportionnalité.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Points alignés mais pas par l'origine",
                explanation:
                  "Des points alignés ne suffisent pas : la droite doit passer par (0 ; 0). Exemple : un abonnement téléphonique (forfait fixe + coût par minute) donne une droite ne passant pas par l'origine.",
              },
              {
                label: "Échelle des axes",
                explanation:
                  "Sur un graphique, vérifier l'échelle : une droite peut sembler passer par l'origine si l'échelle est mal lue.",
              },
            ],
          },
        ],
      },
      {
        id: "methodes-calcul",
        title: "Méthodes de calcul",
        blocks: [
          {
            kind: "table",
            caption: "Les quatre méthodes pour trouver une quatrième proportionnelle",
            headers: ["Méthode", "Principe", "Exemple (3 → 7,5 ; 8 → ?)"],
            rows: [
              [
                "Coefficient multiplicateur",
                "Trouver k = y/x puis multiplier",
                "k = 7,5/3 = 2,5 → 8 × 2,5 = 20",
              ],
              [
                "Produit en croix",
                "a/b = c/d → d = b × c / a",
                "? = 8 × 7,5 / 3 = 60/3 = 20",
              ],
              [
                "Retour à l'unité",
                "Calculer la valeur pour 1, puis multiplier",
                "1 → 7,5/3 = 2,5 → 8 → 8 × 2,5 = 20",
              ],
              [
                "Propriété de linéarité",
                "Utiliser sommes, doubles, etc.",
                "8 = 3 + 5 → val(8) = 7,5 + 12,5 = 20",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, la méthode par linéarité (additivité et multiplicativité) est valorisée car elle correspond aux stratégies enseignées à l'école élémentaire. Le produit en croix est efficace mais moins formateur.",
          },
        ],
      },
      {
        id: "applications",
        title: "Applications courantes",
        collapsible: true,
        blocks: [
          {
            kind: "table",
            caption: "Situations classiques de proportionnalité au CRPE",
            headers: ["Situation", "Grandeurs proportionnelles", "Coefficient"],
            rows: [
              ["Prix au kg", "Masse et prix", "Prix unitaire (€/kg)"],
              ["Vitesse constante", "Temps et distance", "Vitesse (km/h)"],
              ["Échelle d'un plan", "Distance réelle et distance sur le plan", "Échelle (ex : 1/50 000)"],
              ["Pourcentage", "Quantité et pourcentage", "Taux (%/100)"],
              ["Recette de cuisine", "Nombre de parts et quantités d'ingrédients", "Quantité par part"],
            ],
          },
          {
            kind: "rule",
            content:
              "Pourcentage = situation de proportionnalité. Prendre t % de A = t/100 × A. Augmenter de t % = multiplier par (1 + t/100). Diminuer de t % = multiplier par (1 − t/100).",
            watchout:
              "Augmenter de 20 % puis diminuer de 20 % ne ramène PAS au départ. Exemple : 100 → +20 % → 120 → −20 % → 96 ≠ 100.",
          },
        ],
      },
    ],
    keyPoints: [
      "Proportionnalité = rapport constant (coefficient k) entre deux grandeurs",
      "Graphique : droite passant par l'origine",
      "4 méthodes : coefficient multiplicateur, produit en croix, retour à l'unité, linéarité",
      "Au CRPE, la méthode par linéarité est particulièrement valorisée",
      "Pourcentages, échelles et vitesses sont des situations de proportionnalité",
      "Attention : +t % puis −t % ne ramène pas à la valeur initiale",
    ],
    quiz: [
      {
        sentence:
          "Si des points sont alignés sur un graphique, la situation est forcément proportionnelle.",
        isCorrect: false,
        explanation:
          "FAUX. La droite doit passer par l'ORIGINE pour que ce soit une proportionnalité. Des points alignés sur une droite ne passant pas par l'origine correspondent à une fonction affine.",
      },
      {
        sentence:
          "Augmenter un prix de 50 % puis le diminuer de 50 % revient au prix initial.",
        isCorrect: false,
        explanation:
          "FAUX. 100 → +50 % → 150 → −50 % → 75. On ne revient pas à 100. L'augmentation s'applique à 100 mais la diminution s'applique à 150.",
      },
      {
        sentence:
          "La propriété de linéarité : si 3 kg → 6 € et 5 kg → 10 €, alors 8 kg → 16 €.",
        isCorrect: true,
        explanation:
          "VRAI. Par additivité : 8 = 3 + 5, donc prix(8) = 6 + 10 = 16 €. C'est la propriété de linéarité de la proportionnalité.",
      },
      {
        sentence:
          "Le produit en croix : si a/b = c/d, alors a × d = b × c.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la propriété fondamentale des proportions, utilisée pour calculer une quatrième proportionnelle.",
      },
      {
        sentence:
          "Une échelle de 1/500 signifie que 1 cm sur le plan représente 500 cm (soit 5 m) en réalité.",
        isCorrect: true,
        explanation:
          "VRAI. Échelle = distance plan / distance réelle. 1/500 → 1 cm (plan) = 500 cm (réel) = 5 m.",
      },
    ],
  },
};
