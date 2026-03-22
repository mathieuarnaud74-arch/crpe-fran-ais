import type { Fiche } from "@/features/fiches/types";

export const grandeursUnitesLongueurSprint: Fiche = {
  id: "grandeurs-unites-longueur-sprint",
  slug: "unites-longueur-conversions",
  title: "Unités de longueur : conversions",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "longueur",
    "conversions",
    "mètre",
    "kilomètre",
    "centimètre",
    "millimètre",
    "système métrique",
  ],
  notionsLiees: [
    "grandeurs-conversions-reference",
    "grandeurs-conversion-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les unités de longueur. Pour l'ensemble du système métrique (masse, capacité, aire, volume), consulte la fiche Référence « Système métrique : conversions complètes ».",
    oneLiner:
      "Dans le tableau de conversion des longueurs, chaque colonne correspond à un facteur 10 : on décale la virgule d'un rang vers la droite pour passer à l'unité inférieure, et vers la gauche pour l'unité supérieure.",
    exampleCorrect: {
      sentence: "3,5 km = 3 500 m",
      explanation:
        "De km à m, on descend de 3 rangs (km → hm → dam → m), donc on décale la virgule de 3 rangs vers la droite : 3,5 → 3 500.",
    },
    exampleWrong: {
      sentence: "3,5 km = 350 m",
      explanation:
        "Erreur : on n'a décalé que de 2 rangs au lieu de 3. De km à m, il y a 3 colonnes à franchir, pas 2.",
    },
    mainTrap:
      "Confondre le nombre de rangs à décaler. Astuce : compter les colonnes du tableau (km | hm | dam | m | dm | cm | mm) et décaler la virgule d'autant de rangs que de colonnes franchies.",
    quiz: [
      {
        sentence: "1 km = 100 m.",
        isCorrect: false,
        explanation:
          "FAUX. 1 km = 1 000 m. De km à m, il y a 3 rangs (×10 ×10 ×10 = ×1 000).",
      },
      {
        sentence: "4,2 m = 420 cm.",
        isCorrect: true,
        explanation:
          "VRAI. De m à cm, on descend de 2 rangs : 4,2 → 420.",
      },
      {
        sentence: "750 mm = 7,5 m.",
        isCorrect: false,
        explanation:
          "FAUX. 750 mm = 0,75 m. De mm à m, on remonte de 3 rangs : 750 → 0,750.",
      },
      {
        sentence: "0,06 km = 60 m.",
        isCorrect: true,
        explanation:
          "VRAI. De km à m, on descend de 3 rangs : 0,06 → 0 060 = 60 m.",
      },
      {
        sentence: "25 dm = 2,5 m.",
        isCorrect: true,
        explanation:
          "VRAI. De dm à m, on remonte d'un rang : 25 → 2,5.",
      },
    ],
  },
};
