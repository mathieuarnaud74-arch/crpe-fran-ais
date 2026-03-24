import type { Fiche } from "@/features/fiches/types";

export const phraseInterrogativeSprint: Fiche = {
  id: "grammaire-phrase-interrogative-sprint",
  slug: "phrase-interrogative-sprint",
  title: "La phrase interrogative : formes et niveaux de langue",
  subtitle: "Fiche express",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "interrogation",
    "interrogative",
    "est-ce que",
    "inversion",
    "registre",
    "totale",
    "partielle",
  ],
  notionsLiees: ["types-formes-phrases", "phrase-simple"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche utilise la terminologie des programmes 2021 (Éduscol). La phrase interrogative est un des trois types de phrase (déclarative, interrogative, injonctive). La phrase exclamative est une FORME de phrase (au même titre que la forme négative ou emphatique), non un type.",
    oneLiner:
      "On distingue l'interrogation TOTALE (réponse oui/non : « Viens-tu ? ») de l'interrogation PARTIELLE (mot interrogatif : « Quand viens-tu ? »). Chaque interrogation peut se construire de TROIS façons selon le registre : intonation seule (familier), « est-ce que » (courant), inversion du sujet (soutenu).",
    exampleCorrect: {
      sentence:
        "Tu viens ? / Est-ce que tu viens ? / Viens-tu ?",
      explanation:
        "Ces trois phrases expriment la même interrogation totale (réponse oui/non) mais à trois niveaux de langue différents. « Tu viens ? » = registre familier (seule l'intonation marque l'interrogation). « Est-ce que tu viens ? » = registre courant. « Viens-tu ? » = registre soutenu (inversion sujet-verbe avec trait d'union).",
    },
    exampleWrong: {
      sentence: "Comme il est grand !",
      explanation:
        "Piège classique : cette phrase n'est PAS interrogative malgré le mot « comme ». C'est une phrase exclamative (elle exprime un sentiment, pas une question). Le point d'exclamation et l'absence de point d'interrogation le confirment. Ne pas confondre « comme » exclamatif et « comment » interrogatif.",
    },
    mainTrap:
      "L'interrogative indirecte (« Il demande si tu viens », « Je me demande où il va ») ne prend JAMAIS de point d'interrogation et ne comporte JAMAIS d'inversion du sujet. C'est une subordonnée complétive, pas une phrase interrogative autonome. Écrire « *Il demande si viens-tu ? » est une double faute (inversion + point d'interrogation).",
    quiz: [
      {
        sentence:
          "« Où vas-tu ? » est une interrogation partielle car elle contient un mot interrogatif.",
        isCorrect: true,
        explanation:
          "VRAI. L'interrogation partielle porte sur un élément précis de la phrase, introduit par un mot interrogatif (où, quand, comment, pourquoi, qui, que, quel…). Ici, « où » interroge sur le lieu. La réponse attendue n'est pas oui/non mais une information.",
      },
      {
        sentence:
          "« Est-ce que tu as fini ? » est une interrogation de registre soutenu.",
        isCorrect: false,
        explanation:
          "FAUX. La tournure « est-ce que » relève du registre courant. Le registre soutenu utilise l'inversion du sujet : « As-tu fini ? ». Le registre familier se contente de l'intonation montante : « Tu as fini ? ».",
      },
      {
        sentence:
          "« Je me demande quand il arrivera. » doit se terminer par un point d'interrogation.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une interrogative indirecte : la question est enchâssée dans une phrase déclarative (« Je me demande… »). Elle se termine par un point simple, jamais par un point d'interrogation. De plus, on n'utilise pas l'inversion dans l'interrogative indirecte.",
      },
      {
        sentence:
          "« Quel âge as-tu ? » est une interrogation à la fois partielle et avec inversion du sujet.",
        isCorrect: true,
        explanation:
          "VRAI. « Quel » est un déterminant interrogatif qui porte sur un élément précis (l'âge) → interrogation partielle. « as-tu » présente une inversion sujet-verbe → registre soutenu. Les deux caractéristiques (partielle + inversion) se combinent.",
      },
      {
        sentence:
          "L'interrogation totale admet toujours trois constructions : intonation, « est-ce que » et inversion.",
        isCorrect: true,
        explanation:
          "VRAI. L'interrogation totale (réponse oui/non) peut se formuler de trois façons : « Tu pars ? » (intonation, familier), « Est-ce que tu pars ? » (locution, courant), « Pars-tu ? » (inversion, soutenu). Ces trois registres sont au programme du cycle 3.",
      },
    ],
  },
};
