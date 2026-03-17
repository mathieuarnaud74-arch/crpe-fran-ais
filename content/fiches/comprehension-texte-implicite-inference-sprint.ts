import type { Fiche } from "@/features/fiches/types";

export const impliciteInferenceSprint: Fiche = {
  id: "comprehension-texte-implicite-inference-sprint",
  slug: "explicite-implicite-inferences",
  title: "Explicite et implicite : comprendre les inférences",
  subtitle: "Révision express — 5 min",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "inférence",
    "implicite",
    "lecture fine",
    "compréhension",
    "CRPE",
  ],
  notionsLiees: ["reperage-informations-explicites", "comprendre-texte-documentaire"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les inférences logiques et pragmatiques — les plus fréquentes au CRPE. Les inférences encyclopédiques (nécessitant des connaissances culturelles spécifiques) sont évoquées mais non détaillées.",
    oneLiner:
      "Une inférence est une information implicite que le lecteur construit en combinant les indices du texte avec ses connaissances. On distingue : l'inférence logique (le texte implique nécessairement une conclusion) et l'inférence pragmatique (le lecteur comble un implicite culturel ou situationnel). La compréhension inférentielle est souvent l'obstacle principal à l'école : 30 à 40 % des erreurs de compréhension des élèves portent sur des informations implicites (Cain & Oakhill).",
    exampleCorrect: {
      sentence:
        "Texte : « Arthur rentra couvert de boue, les genoux déchirés. Sa mère soupira en voyant l'état de son pantalon. » — Inférence : Arthur est tombé ou a joué dans la boue à l'extérieur.",
      explanation:
        "Le texte ne dit pas « il est tombé », mais les indices (boue, genoux déchirés, pantalon abîmé) forment un faisceau convergent qui impose cette inférence causale. Elle est ancrée dans les indices textuels — ce n'est pas une projection personnelle.",
    },
    exampleWrong: {
      sentence:
        "Texte : « Le ciel était gris et lourd. » — Inférence certaine : il va pleuvoir.",
      explanation:
        "Attention ! C'est une inférence plausible mais incertaine — une prédiction. Un ciel gris peut se lever sans pluie. Une inférence valide doit être fortement étayée par les indices du texte, pas seulement probable.",
    },
    mainTrap:
      "La principale confusion est entre l'inférence fondée sur les indices du texte et l'interprétation personnelle hors-texte. Une inférence valide s'appuie sur des indices textuels qui, combinés, impliquent l'information implicite. Une interprétation personnelle projette des expériences ou des stéréotypes extérieurs au texte. Autre confusion fréquente : croire qu'un élève qui répond à une question inférentielle « invente » ou se trompe de méthode — au contraire, c'est une compétence attendue. L'enseignant doit apprendre à distinguer les deux dans les réponses d'élèves.",
    quiz: [
      {
        sentence:
          "Texte : « Jade posa son sac, retira ses chaussures et se laissa tomber sur le canapé en fermant les yeux. » — L'inférence « Jade est fatiguée » est fondée sur le texte.",
        isCorrect: true,
        explanation:
          "Les indices (lâcher le sac, retirer les chaussures, se laisser tomber, fermer les yeux) forment un faisceau convergent qui implique la fatigue. L'inférence est ancrée dans les indices — ce n'est pas une projection.",
      },
      {
        sentence:
          "Une inférence est toujours une erreur de lecture : le bon lecteur s'en tient strictement à ce qui est écrit.",
        isCorrect: false,
        explanation:
          "Faux. L'inférence est une compétence de lecture avancée et nécessaire. Aucun texte n'est intégralement explicite : la compréhension fine suppose de construire des ponts entre les informations. Les recherches (Kintsch, Cain & Oakhill) montrent que les bons lecteurs font plus d'inférences, pas moins.",
      },
      {
        sentence:
          "Les élèves de cycle 2 ne peuvent pas encore faire d'inférences : cette compétence n'est accessible qu'à partir du cycle 3.",
        isCorrect: false,
        explanation:
          "Faux. Les enfants font des inférences très tôt, notamment à l'oral lors de l'écoute de récits. Dès le CP, ils peuvent inférer des états émotionnels ou des causes simples à partir d'images ou d'un texte lu par l'enseignant. La compétence inférentielle se développe tout au long de la scolarité.",
      },
      {
        sentence:
          "Texte : « Le chien aboya si fort que les voisins allumèrent leur lumière. » — L'inférence « il fait nuit » est valide.",
        isCorrect: true,
        explanation:
          "L'allumage des lumières est un indice fort que les voisins étaient dans l'obscurité (donc qu'il faisait nuit). C'est une inférence spatiotemporelle bien étayée par le texte.",
      },
      {
        sentence:
          "Pour enseigner les inférences à l'école primaire, la meilleure méthode est de demander aux élèves de « lire entre les lignes » sans autre guidage.",
        isCorrect: false,
        explanation:
          "La consigne « lire entre les lignes » est trop vague pour les élèves en difficulté. Les recherches montrent l'efficacité d'un enseignement explicite : identifier les indices du texte, les nommer, les mettre en relation, verbaliser la déduction. La procédure doit être modélisée avant d'être autonomisée.",
      },
    ],
  },
};
