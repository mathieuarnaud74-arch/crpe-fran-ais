import type { Fiche } from "@/features/fiches/types";

export const grandeursConversionsReference: Fiche = {
  id: "grandeurs-conversions-reference",
  slug: "systeme-metrique-conversions-completes",
  title: "Système métrique : conversions complètes",
  domaine: "grandeurs_mesures",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "conversions",
    "système métrique",
    "longueur",
    "masse",
    "capacité",
    "aire",
    "volume",
    "préfixes",
    "tableau de conversion",
  ],
  notionsLiees: [
    "grandeurs-unites-longueur-sprint",
    "grandeurs-unites-masse-capacite-sprint",
    "grandeurs-conversion-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Le système métrique décimal, adopté internationalement, repose sur un principe simple : chaque unité est 10 fois plus grande que la précédente. Ce guide couvre les conversions de longueur, masse, capacité, aire et volume, avec les pièges classiques du CRPE.",
    sections: [
      {
        id: "prefixes",
        title: "Les préfixes du système métrique",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "Les préfixes métriques s'appliquent à toute unité de base (mètre, gramme, litre). Chaque préfixe correspond à une puissance de 10.",
          },
          {
            kind: "table",
            caption: "Préfixes métriques courants",
            headers: ["Préfixe", "Symbole", "Facteur", "Exemple"],
            rows: [
              ["kilo-", "k", "× 1 000 (10³)", "1 km = 1 000 m"],
              ["hecto-", "h", "× 100 (10²)", "1 hL = 100 L"],
              ["déca-", "da", "× 10 (10¹)", "1 dag = 10 g"],
              ["(unité)", "", "× 1 (10⁰)", "m, g, L"],
              ["déci-", "d", "× 0,1 (10⁻¹)", "1 dL = 0,1 L"],
              ["centi-", "c", "× 0,01 (10⁻²)", "1 cm = 0,01 m"],
              ["milli-", "m", "× 0,001 (10⁻³)", "1 mg = 0,001 g"],
            ],
          },
          {
            kind: "tip",
            text: "Moyen mnémotechnique pour retenir l'ordre : « Kangourou Habite Dans Mon Domicile Chez Moi » (kilo, hecto, déca, mètre, déci, centi, milli).",
          },
        ],
      },
      {
        id: "longueur-masse-capacite",
        title: "Longueur, masse et capacité",
        badge: "Conversions simples",
        blocks: [
          {
            kind: "rule",
            content:
              "Pour ces trois grandeurs, le tableau de conversion comporte 7 colonnes. On décale la virgule d'un rang par colonne franchie : vers la droite pour passer à une unité plus petite, vers la gauche pour une unité plus grande.",
          },
          {
            kind: "table",
            caption: "Tableau de conversion des longueurs",
            headers: ["km", "hm", "dam", "m", "dm", "cm", "mm"],
            rows: [
              ["1", "", "", "", "", "", ""],
              ["", "", "", "1", "0", "0", "0"],
            ],
          },
          {
            kind: "example",
            sentence: "Convertir 0,045 km en cm : 0,045 km = 4 500 cm.",
            annotation:
              "De km à cm = 5 rangs vers la droite. On décale : 0,045 → 4 500.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "La tonne",
                explanation:
                  "La tonne (t) n'est pas un préfixe SI, mais 1 t = 1 000 kg. On peut ajouter une colonne à gauche du kg dans le tableau de masse.",
              },
              {
                label: "Notation des résultats",
                explanation:
                  "Écrire 4 500 cm et non 4500 cm : en français, les nombres de plus de 4 chiffres s'écrivent avec un espace (pas une virgule).",
              },
            ],
          },
        ],
      },
      {
        id: "aires",
        title: "Conversions d'aires",
        badge: "Attention ×100",
        blocks: [
          {
            kind: "rule",
            content:
              "Les unités d'aire sont au carré. Chaque colonne du tableau d'aire vaut ×100 (et non ×10). On décale la virgule de 2 rangs par colonne franchie.",
            watchout:
              "C'est le piège le plus fréquent au CRPE : appliquer ×10 au lieu de ×100 pour les aires.",
          },
          {
            kind: "table",
            caption: "Tableau de conversion des aires",
            headers: ["km²", "hm² (ha)", "dam² (a)", "m²", "dm²", "cm²", "mm²"],
            rows: [
              ["1", "", "", "", "", "", ""],
              ["", "", "", "1 000 000", "", "", ""],
            ],
          },
          {
            kind: "example",
            sentence: "3,5 m² = 35 000 cm².",
            annotation:
              "De m² à cm² = 2 colonnes, soit 2 × 2 = 4 rangs de virgule : 3,5 → 35 000.",
          },
          {
            kind: "tip",
            text: "Retenir : 1 ha (hectare) = 1 hm² = 10 000 m². 1 a (are) = 1 dam² = 100 m².",
          },
        ],
      },
      {
        id: "volumes",
        title: "Conversions de volumes",
        badge: "Attention ×1 000",
        blocks: [
          {
            kind: "rule",
            content:
              "Les unités de volume sont au cube. Chaque colonne du tableau de volume vaut ×1 000. On décale la virgule de 3 rangs par colonne franchie.",
          },
          {
            kind: "table",
            caption: "Correspondance volume / capacité",
            headers: ["Volume", "Capacité", "Équivalence"],
            rows: [
              ["1 m³", "1 000 L (1 kL)", "Le cube d'1 m de côté"],
              ["1 dm³", "1 L", "Le cube d'1 dm (10 cm) de côté"],
              ["1 cm³", "1 mL", "Le cube d'1 cm de côté"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Volume ↔ Capacité",
                explanation:
                  "La correspondance fondamentale est 1 dm³ = 1 L. Erreur fréquente : confondre 1 m³ = 1 L (faux : 1 m³ = 1 000 L).",
                correction:
                  "Toujours repasser par le dm³ comme pivot entre volume et capacité.",
              },
            ],
          },
        ],
      },
      {
        id: "methode",
        title: "Méthode générale de conversion",
        badge: "Stratégie",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "1) Identifier la grandeur (longueur, masse, aire, volume). 2) Tracer le tableau adapté (7 colonnes, avec 1 case par colonne pour longueur/masse/capacité, 2 cases pour aire, 3 cases pour volume). 3) Placer le nombre dans le tableau. 4) Décaler la virgule jusqu'à la colonne cible. 5) Compléter par des zéros si nécessaire.",
          },
          {
            kind: "example",
            sentence:
              "Convertir 2,5 dam² en m² : 2 colonnes × 2 rangs = 4 rangs → 2,5 → 25 000 ? Non : 2,5 dam² → 250 m² (1 colonne × 2 rangs = 2 rangs).",
            annotation:
              "De dam² à m² = 1 colonne = 2 rangs : 2,5 → 250 m².",
          },
        ],
      },
    ],
    keyPoints: [
      "Le système métrique est décimal : chaque préfixe = ×10 par rapport au suivant.",
      "Longueur, masse, capacité : 1 colonne = 1 rang de virgule (×10).",
      "Aires : 1 colonne = 2 rangs de virgule (×100).",
      "Volumes : 1 colonne = 3 rangs de virgule (×1 000).",
      "Correspondance clé : 1 dm³ = 1 L, 1 cm³ = 1 mL, 1 m³ = 1 000 L.",
    ],
    quiz: [
      {
        sentence: "Pour convertir des aires, on décale la virgule de 2 rangs par colonne franchie.",
        isCorrect: true,
        explanation:
          "VRAI. Les unités d'aire sont au carré, donc chaque colonne vaut ×100, soit 2 rangs de virgule.",
      },
      {
        sentence: "1 hectare = 100 m².",
        isCorrect: false,
        explanation:
          "FAUX. 1 hectare = 1 hm² = 10 000 m². C'est 1 are qui vaut 100 m².",
      },
      {
        sentence: "Pour convertir 5,2 m³ en dm³, on obtient 5 200 dm³.",
        isCorrect: true,
        explanation:
          "VRAI. De m³ à dm³ = 1 colonne = 3 rangs : 5,2 → 5 200.",
      },
      {
        sentence: "1 km = 10 000 m.",
        isCorrect: false,
        explanation:
          "FAUX. 1 km = 1 000 m (3 rangs). 10 000 m = 10 km.",
      },
      {
        sentence: "1 dm³ = 1 L est la correspondance fondamentale entre volume et capacité.",
        isCorrect: true,
        explanation:
          "VRAI. Toutes les autres correspondances en découlent : 1 cm³ = 1 mL, 1 m³ = 1 kL = 1 000 L.",
      },
      {
        sentence: "Pour convertir des volumes, on décale la virgule d'un rang par colonne.",
        isCorrect: false,
        explanation:
          "FAUX. Les volumes sont au cube : 1 colonne = 3 rangs (×1 000). C'est pour les longueurs/masses/capacités qu'on décale d'un seul rang.",
      },
    ],
  },
};
