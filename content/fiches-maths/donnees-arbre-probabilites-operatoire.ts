import type { Fiche } from "@/features/fiches/types";

export const donneesArbreProbabilitesOperatoire: Fiche = {
  id: "donnees-arbre-probabilites-operatoire",
  slug: "arbre-probabilites-construire-lire",
  title: "Construire et lire un arbre de probabilités",
  domaine: "organisation_donnees",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "probabilités",
    "arbre de probabilités",
    "épreuves successives",
    "probabilités composées",
    "indépendance",
    "tirage avec remise",
    "tirage sans remise",
    "cycle 3",
    "collège",
  ],
  notionsLiees: [
    "donnees-probabilites-sprint",
    "donnees-probabilites-composees-sprint",
    "donnees-probabilites-reference",
    "donnees-denombrement-combinatoire-sprint",
  ],
  exercicesAssocies: ["math_probabilites_arbres", "math_experience_aleatoire"],
  content: {
    model: "operatoire",
    startingQuestion:
      "J'ai une expérience aléatoire à plusieurs épreuves successives : comment construire l'arbre et calculer les probabilités ?",
    decisionTree: {
      type: "question",
      text: "Combien d'épreuves successives comporte la situation ?",
      yes: {
        type: "question",
        text: "Une seule épreuve (1 tirage, 1 lancer…) ?",
        yes: {
          type: "leaf",
          label: "Pas besoin d'arbre",
          rule: "Pour une seule épreuve, un simple inventaire des issues suffit. Lister toutes les issues possibles, s'assurer que leurs probabilités somment à 1, puis calculer P(événement) = somme des probabilités des issues favorables.",
          example:
            "Lancer un dé à 6 faces : issues = {1, 2, 3, 4, 5, 6}, chacune de probabilité 1/6. P(pair) = P(2) + P(4) + P(6) = 3/6 = 1/2.",
        },
        no: {
          type: "question",
          text: "Les tirages se font-ils AVEC remise (ou les épreuves sont-elles indépendantes) ?",
          yes: {
            type: "leaf",
            label: "Arbre avec épreuves indépendantes",
            rule: "Avec remise ou épreuves indépendantes : les probabilités sur chaque niveau de l'arbre sont IDENTIQUES d'une branche à l'autre. Pour obtenir la probabilité d'un chemin, MULTIPLIER les probabilités des branches. Pour un événement formé de plusieurs chemins, ADDITIONNER leurs probabilités.",
            example:
              "Sac : 3 rouges (R) et 2 bleues (B). Deux tirages AVEC remise. P(R) = 3/5 et P(B) = 2/5 à chaque tirage. P(R puis R) = 3/5 × 3/5 = 9/25. P(même couleur) = 9/25 + 4/25 = 13/25.",
          },
          no: {
            type: "question",
            text: "Les tirages se font-ils SANS remise (la composition change après chaque tirage) ?",
            yes: {
              type: "leaf",
              label: "Arbre avec probabilités conditionnelles",
              rule: "Sans remise : les probabilités changent à chaque niveau selon ce qui a été tiré avant. Après le 1er tirage, recalculer les probabilités pour le 2e tirage en tenant compte de la composition restante. Pour un chemin : MULTIPLIER les probabilités de branche. Pour un événement multi-chemins : ADDITIONNER.",
              example:
                "Sac : 3 rouges (R) et 2 bleues (B). Deux tirages SANS remise. 1er tirage : P(R₁) = 3/5, P(B₁) = 2/5. Si R sorti : il reste 2R + 2B → P(R₂|R₁) = 2/4 = 1/2, P(B₂|R₁) = 2/4 = 1/2. Si B sorti : il reste 3R + 1B → P(R₂|B₁) = 3/4, P(B₂|B₁) = 1/4. P(2 même couleur) = 3/5×1/2 + 2/5×1/4 = 3/10 + 2/20 = 3/10 + 1/10 = 4/10 = 2/5.",
            },
            no: {
              type: "leaf",
              label: "Probabilités conditionnelles données",
              rule: "Les probabilités conditionnelles sont fournies dans l'énoncé (ex : « sachant que… »). Utiliser directement ces valeurs sur les branches du 2e niveau. Multiplier pour les chemins, additionner pour les événements composés.",
              example:
                "P(pluie) = 0,3. Sachant qu'il pleut, P(retard) = 0,8. Sachant qu'il ne pleut pas, P(retard) = 0,1. Arbre avec P(retard) = 0,3 × 0,8 + 0,7 × 0,1 = 0,24 + 0,07 = 0,31.",
            },
          },
        },
      },
      no: {
        type: "leaf",
        label: "Arbre à plusieurs niveaux",
        rule: "Pour 3 épreuves ou plus, ajouter un niveau par épreuve. La règle reste la même : multiplier sur un chemin, additionner les chemins pour un événement. Attention à l'explosion combinatoire : avec 2 issues et 3 épreuves, l'arbre a 2³ = 8 chemins.",
        example:
          "3 lancers d'une pièce équilibrée. L'arbre a 3 niveaux et 8 feuilles. P(exactement 2 faces) = P(FFP) + P(FPF) + P(PFF) = 3 × (1/2 × 1/2 × 1/2) = 3/8.",
      },
    },
    workedExample: {
      phrase:
        "Une urne contient 4 boules rouges (R) et 2 boules vertes (V). On tire deux boules successivement SANS remise. Calculer la probabilité d'obtenir deux boules de la même couleur.",
      steps: [
        "Étape 1 — Identifier la situation : tirage SANS remise → les probabilités changent après le 1er tirage. Composition initiale : 4R + 2V = 6 boules.",
        "Étape 2 — Construire le 1er niveau de l'arbre : P(R₁) = 4/6 = 2/3 et P(V₁) = 2/6 = 1/3.",
        "Étape 3 — Construire le 2e niveau (après R₁) : il reste 3R + 2V = 5 boules. P(R₂|R₁) = 3/5, P(V₂|R₁) = 2/5.",
        "Étape 4 — Construire le 2e niveau (après V₁) : il reste 4R + 1V = 5 boules. P(R₂|V₁) = 4/5, P(V₂|V₁) = 1/5.",
        "Étape 5 — Calculer les probabilités des 4 chemins en multipliant : P(R₁ et R₂) = 2/3 × 3/5 = 6/15. P(R₁ et V₂) = 2/3 × 2/5 = 4/15. P(V₁ et R₂) = 1/3 × 4/5 = 4/15. P(V₁ et V₂) = 1/3 × 1/5 = 1/15.",
        "Étape 6 — Vérification : 6/15 + 4/15 + 4/15 + 1/15 = 15/15 = 1 ✓ (somme des chemins = 1).",
        "Étape 7 — Calculer P(même couleur) : ce sont les chemins R₁R₂ et V₁V₂. P(même couleur) = 6/15 + 1/15 = 7/15.",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans un arbre de probabilités, la somme des probabilités de TOUTES les feuilles (chemins complets) est toujours égale à 1.",
        isCorrect: true,
        explanation:
          "VRAI. Les feuilles d'un arbre de probabilités représentent tous les événements élémentaires possibles. Comme ces événements sont incompatibles et forment un système complet d'événements, leurs probabilités somment nécessairement à 1. C'est un outil de vérification très utile : si la somme n'est pas 1, il y a une erreur quelque part dans l'arbre.",
      },
      {
        sentence:
          "Dans un tirage AVEC remise, les probabilités au 2e niveau de l'arbre dépendent de ce qui a été tiré au 1er niveau.",
        isCorrect: false,
        explanation:
          "FAUX. C'est précisément la caractéristique du tirage AVEC remise (ou des épreuves indépendantes) : les probabilités du 2e tirage sont IDENTIQUES quelle que soit l'issue du 1er. La composition de l'urne est restaurée avant chaque tirage. Au contraire, dans un tirage SANS remise, la composition change et les probabilités au 2e niveau varient selon l'issue du 1er.",
      },
      {
        sentence:
          "Pour calculer la probabilité d'un événement « A puis B » sur un chemin de l'arbre, on ADDITIONNE P(A) et P(B|A).",
        isCorrect: false,
        explanation:
          "FAUX. Pour la probabilité d'un CHEMIN (intersection d'événements successifs), on MULTIPLIE les probabilités des branches : P(A puis B) = P(A) × P(B|A). C'est la règle de multiplication des probabilités. On ADDITIONNE uniquement quand on veut réunir plusieurs chemins différents pour calculer la probabilité d'un événement composé.",
      },
      {
        sentence:
          "Si P(A) = 1/3 et P(B|A) = 1/2, alors P(A et B) = 1/6.",
        isCorrect: true,
        explanation:
          "VRAI. P(A et B) = P(A) × P(B|A) = 1/3 × 1/2 = 1/6. C'est l'application directe de la règle de multiplication des probabilités. Sur l'arbre, ce chemin passe par la branche A (probabilité 1/3) puis la branche B sachant A (probabilité 1/2), et on multiplie.",
      },
      {
        sentence:
          "Un arbre de probabilités à 3 niveaux avec 2 issues à chaque niveau possède 6 feuilles.",
        isCorrect: false,
        explanation:
          "FAUX. Un arbre à 3 niveaux avec 2 issues à chaque niveau possède 2³ = 8 feuilles (pas 6). Le nombre de feuilles est égal au produit du nombre d'issues à chaque niveau. Avec 2 issues par niveau et 3 niveaux : 2 × 2 × 2 = 8. Avec 3 issues au niveau 1 et 2 au niveau 2, on aurait 3 × 2 = 6 feuilles.",
      },
    ],
    didacticNote:
      "Au cycle 3 (CM1-CM2), les arbres de probabilités sont introduits sur des situations simples (2 épreuves, peu d'issues). L'erreur la plus fréquente des élèves est d'additionner les probabilités sur un chemin au lieu de les multiplier, par confusion avec la règle d'addition des événements incompatibles. Il est utile de faire vérifier systématiquement que la somme des feuilles vaut 1, ce qui développe le sens du contrôle et de la cohérence. Les situations sans remise sont plus complexes car elles mobilisent les fractions et la reconfiguration des probabilités, ce qui les réserve plutôt au collège (cycle 4).",
  },
};
