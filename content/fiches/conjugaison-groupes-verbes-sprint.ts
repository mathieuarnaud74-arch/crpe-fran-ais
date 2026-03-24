import type { Fiche } from "@/features/fiches/types";

export const groupesVerbesSprint: Fiche = {
  id: "conjugaison-groupes-verbes-sprint",
  slug: "groupes-verbes-sprint",
  title: "Les trois groupes de verbes",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "groupes de verbes",
    "1er groupe",
    "2e groupe",
    "3e groupe",
    "infinitif",
  ],
  notionsLiees: ["conditionnel-sprint", "imparfait-ou-passe-simple"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de rappel sur la classification des verbes en trois groupes. L'infinitif et le participe sont des modes non personnels du verbe (ils font partie du système verbal mais ne se conjuguent pas en personne).",
    oneLiner:
      "1er groupe : infinitif en -er (sauf « aller »), un seul radical, conjugaison régulière (chanter, manger, jouer). 2e groupe : infinitif en -ir avec participe présent en -issant (finir → finissant, choisir → choisissant). 3e groupe : tous les autres verbes, conjugaison irrégulière — il regroupe les verbes en -ir sans -issant (partir → partant), en -oir (vouloir), en -re (prendre), plus « aller » et les auxiliaires « être » et « avoir ».",
    exampleCorrect: {
      sentence: "Le verbe « finir » est du 2e groupe car son participe présent est « finissant ».",
      explanation:
        "Correct. Le test décisif du 2e groupe est le participe présent en -issant. « Finir → finissant » : c'est bien un verbe du 2e groupe, avec deux radicaux (fini- / finiss-).",
    },
    exampleWrong: {
      sentence: "Le verbe « aller » est du 1er groupe car il se termine en -er.",
      explanation:
        "FAUX. Malgré sa terminaison en -er, « aller » est un verbe du 3e groupe. C'est le seul verbe en -er qui n'appartient pas au 1er groupe. Sa conjugaison est très irrégulière (je vais, j'irai, que j'aille…).",
    },
    mainTrap:
      "Le piège classique est « aller » : terminaison en -er mais 3e groupe (conjugaison irrégulière avec plusieurs radicaux : va-, all-, ir-, aill-). Autre piège : confondre 2e et 3e groupe pour les verbes en -ir. Le test est le participe présent : « partir → partant » (3e groupe, pas de -issant) vs « remplir → remplissant » (2e groupe). Enfin, attention : les verbes « être » et « avoir » sont classés dans le 3e groupe (auxiliaires à conjugaison irrégulière).",
    quiz: [
      {
        sentence:
          "Le verbe « courir » est du 2e groupe car il se termine en -ir.",
        isCorrect: false,
        explanation:
          "FAUX. Le participe présent de « courir » est « courant » (pas « courissant »). C'est donc un verbe du 3e groupe. Seuls les verbes en -ir dont le participe présent est en -issant appartiennent au 2e groupe.",
      },
      {
        sentence:
          "Tous les verbes du 1er groupe ont un seul radical et une conjugaison régulière.",
        isCorrect: true,
        explanation:
          "Correct. Les verbes du 1er groupe (infinitif en -er, sauf « aller ») ont un radical stable et des terminaisons parfaitement régulières. C'est le groupe le plus nombreux et le plus prévisible.",
      },
      {
        sentence:
          "Le verbe « avoir » appartient au 1er groupe.",
        isCorrect: false,
        explanation:
          "FAUX. « Avoir » est un auxiliaire classé dans le 3e groupe. Sa conjugaison est totalement irrégulière (j'ai, tu as, il a, nous avons…). Les auxiliaires « être » et « avoir » font partie du 3e groupe.",
      },
      {
        sentence:
          "Le test pour identifier un verbe du 2e groupe est de vérifier que son participe présent se termine en -issant.",
        isCorrect: true,
        explanation:
          "Correct. C'est le critère décisif : infinitif en -ir ET participe présent en -issant. Exemples : « choisir → choisissant » (2e groupe), « dormir → dormant » (3e groupe).",
      },
      {
        sentence:
          "Le 3e groupe est un groupe résiduel qui rassemble des verbes à conjugaison irrégulière.",
        isCorrect: true,
        explanation:
          "Correct. Le 3e groupe est hétérogène : il comprend les verbes en -ir sans -issant (venir, partir), en -oir (pouvoir, savoir), en -re (prendre, mettre), le verbe « aller » et les auxiliaires « être » et « avoir ». Leurs conjugaisons sont souvent irrégulières avec plusieurs radicaux.",
      },
    ],
  },
};
