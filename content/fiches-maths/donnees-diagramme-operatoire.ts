import type { Fiche } from "@/features/fiches/types";

export const donneesDiagrammeOperatoire: Fiche = {
  id: "donnees-diagramme-operatoire",
  slug: "construire-interpreter-diagramme",
  title: "Construire et interpréter un diagramme",
  domaine: "organisation_donnees",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "diagramme",
    "diagramme en barres",
    "diagramme circulaire",
    "histogramme",
    "construction",
    "interprétation",
  ],
  notionsLiees: [
    "donnees-tableaux-graphiques-sprint",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel type de données veux-tu représenter (qualitatives, quantitatives discrètes ou continues) ?",
    decisionTree: {
      type: "question",
      text: "Les données sont-elles qualitatives (catégories : couleur, sport, ville…) ?",
      yes: {
        type: "question",
        text: "Souhaites-tu montrer la répartition (proportions) ou comparer les effectifs ?",
        yes: {
          type: "leaf",
          label: "Diagramme circulaire (proportions)",
          rule: "1) Calculer la fréquence de chaque catégorie (effectif / N). 2) Calculer l'angle de chaque secteur : angle = fréquence × 360°. 3) Tracer le cercle et mesurer chaque angle au rapporteur. 4) Légender chaque secteur avec la catégorie et le pourcentage.",
          example:
            "Sport préféré : foot (40 %), basket (25 %), tennis (20 %), autre (15 %). Angles : 144°, 90°, 72°, 54°.",
        },
        no: {
          type: "leaf",
          label: "Diagramme en barres (comparaison)",
          rule: "1) Tracer un axe horizontal (catégories) et un axe vertical (effectifs). 2) Choisir une échelle régulière sur l'axe vertical. 3) Tracer une barre par catégorie, espacées entre elles. 4) La hauteur de chaque barre = effectif. 5) Titrer et légender.",
          example:
            "Barres séparées : foot = 12 élèves, basket = 8, tennis = 6.",
        },
      },
      no: {
        type: "question",
        text: "Les données sont-elles regroupées en classes (intervalles) ?",
        yes: {
          type: "leaf",
          label: "Histogramme (données continues en classes)",
          rule: "1) Tracer un axe horizontal gradué (valeurs) et un axe vertical (effectifs ou densité). 2) Les barres sont accolées (pas d'espace). 3) Si les classes ont la même amplitude : la hauteur est proportionnelle à l'effectif. 4) Si les amplitudes diffèrent : la hauteur = effectif / amplitude (densité), car c'est l'aire qui est proportionnelle à l'effectif. 5) Titrer et graduer.",
          example:
            "Tailles des élèves : [120-130[ : 4, [130-140[ : 8, [140-150[ : 12. Barres accolées, même largeur.",
        },
        no: {
          type: "leaf",
          label: "Diagramme en bâtons (données discrètes)",
          rule: "1) Tracer un axe horizontal gradué (valeurs prises) et un axe vertical (effectifs). 2) Pour chaque valeur, tracer un bâton vertical dont la hauteur = effectif. 3) Les bâtons sont des segments fins (pas des barres larges). 4) Titrer et graduer.",
          example:
            "Nombre d'enfants par famille : 0 → 3 familles, 1 → 7 familles, 2 → 10 familles, 3 → 5 familles.",
        },
      },
    },
    workedExample: {
      phrase:
        "Construire un diagramme circulaire pour la répartition des fruits préférés de 40 élèves : pomme (16), banane (10), fraise (8), autre (6).",
      steps: [
        "Étape 1 — Calculer les fréquences : pomme = 16/40 = 0,4 ; banane = 10/40 = 0,25 ; fraise = 8/40 = 0,2 ; autre = 6/40 = 0,15.",
        "Étape 2 — Vérifier que la somme = 1 : 0,4 + 0,25 + 0,2 + 0,15 = 1. ✓",
        "Étape 3 — Calculer les angles : pomme = 0,4 × 360 = 144° ; banane = 0,25 × 360 = 90° ; fraise = 0,2 × 360 = 72° ; autre = 0,15 × 360 = 54°.",
        "Étape 4 — Vérifier que la somme des angles = 360° : 144 + 90 + 72 + 54 = 360°. ✓",
        "Étape 5 — Tracer un cercle, placer les secteurs au rapporteur en partant de 0°. Colorier ou hachurer chaque secteur différemment.",
        "Étape 6 — Ajouter la légende (catégorie + pourcentage) et le titre du diagramme.",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans un diagramme circulaire, l'angle d'un secteur = fréquence × 360°.",
        isCorrect: true,
        explanation:
          "VRAI. La fréquence est la proportion de l'effectif, et le cercle complet = 360°.",
      },
      {
        sentence:
          "Un histogramme et un diagramme en barres ont tous les deux des barres séparées par un espace.",
        isCorrect: false,
        explanation:
          "FAUX. L'histogramme a des barres accolées (données continues), le diagramme en barres a des barres séparées (données qualitatives).",
      },
      {
        sentence:
          "Un diagramme en bâtons convient pour représenter le nombre d'enfants par famille.",
        isCorrect: true,
        explanation:
          "VRAI. Le nombre d'enfants est une variable quantitative discrète (0, 1, 2, 3…). Les bâtons conviennent parfaitement.",
      },
      {
        sentence:
          "Dans un histogramme avec des classes d'amplitudes inégales, c'est la hauteur qui est directement proportionnelle à l'effectif.",
        isCorrect: false,
        explanation:
          "FAUX. Quand les amplitudes diffèrent, c'est l'aire qui est proportionnelle à l'effectif. La hauteur = effectif / amplitude (densité).",
      },
      {
        sentence:
          "La somme des angles d'un diagramme circulaire est toujours 360°.",
        isCorrect: true,
        explanation:
          "VRAI. Le cercle complet = 360°, et la somme des fréquences = 1, donc Σ angles = Σ(fréquence × 360) = 360°.",
      },
    ],
    didacticNote:
      "Au cycle 2, commencer par la lecture de diagrammes en barres simples. Au cycle 3, introduire la construction avec le rapporteur pour le diagramme circulaire. L'histogramme (classes) est abordé en fin de cycle 3 et au collège.",
  },
};
