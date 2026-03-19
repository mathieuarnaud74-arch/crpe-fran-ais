import type { Fiche } from "@/features/fiches/types";

export const reperageExpliciteSprint: Fiche = {
  id: "comprehension-texte-reperage-explicite-sprint",
  slug: "reperage-informations-explicites",
  title: "Repérage des informations explicites",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "information explicite",
    "repérage",
    "lecture littérale",
    "compréhension",
    "texte",
  ],
  notionsLiees: ["explicite-implicite-inferences", "comprendre-texte-documentaire"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la lecture littérale : identifier les informations directement présentes dans le texte. Pour la lecture inférentielle (lire entre les lignes), voir la fiche « Explicite et implicite : comprendre les inférences ».",
    oneLiner:
      "Une information explicite est directement écrite dans le texte — le lecteur n'a pas à déduire, interpréter ou compléter. Pour la localiser : 1) reformuler mentalement la question, 2) parcourir le texte en cherchant les mots-clés de la question (balayage), 3) relire le passage identifié pour confirmer. À l'école primaire, la lecture littérale est le premier niveau de compréhension à maîtriser avant de passer aux inférences.",
    exampleCorrect: {
      sentence:
        "Texte : « Léa arrive à l'école à 8h30. » — Question : « À quelle heure Léa arrive-t-elle ? »",
      explanation:
        "L'information est directement écrite : « 8h30 ». Il suffit de localiser le passage et de le citer ou le reformuler. Pas de déduction nécessaire : c'est du repérage littéral.",
    },
    exampleWrong: {
      sentence:
        "Texte : « Il fait froid dehors. Paul met son manteau. » — Réponse donnée : « Paul a froid » présentée comme information explicite.",
      explanation:
        "FAUX. Le texte dit que Paul met son manteau — il ne dit pas explicitement qu'il a froid. La déduction (manteau → il a froid) est une inférence, pas une information explicite.",
    },
    mainTrap:
      "La confusion entre information explicite et inférence est le piège central. Une information est explicite si on peut la pointer dans le texte : on pourrait la souligner. Si le lecteur doit « compléter » quelque chose que le texte ne dit pas clairement, c'est une inférence. Exemple : « Marie sourit » (explicite) ≠ « Marie est heureuse » si seul le sourire est mentionné (inférence). Au CRPE, savoir distinguer les deux niveaux est essentiel pour analyser les compétences de lecture des élèves et construire des questions de compréhension adaptées.",
    quiz: [
      {
        sentence:
          "Texte : « Le renard creuse son terrier sous le vieux chêne. » — « Le renard creuse sous un chêne » est une information explicite.",
        isCorrect: true,
        explanation:
          "L'action et le lieu sont directement énoncés dans le texte. Pas besoin d'interpréter ou de déduire : le texte dit exactement ce que fait le renard et où.",
      },
      {
        sentence:
          "Texte : « Elle ne sortait jamais le jour et vivait seule au fond de la forêt. » — « C'est une sorcière » est une information explicite.",
        isCorrect: false,
        explanation:
          "Faux. Le texte ne dit pas que c'est une sorcière. Cette interprétation résulte d'une inférence culturelle (stéréotypes du conte). L'information explicite est qu'elle vit seule dans la forêt et ne sort jamais le jour.",
      },
      {
        sentence:
          "Pour retrouver une information explicite dans un texte long, la stratégie la plus efficace est de relire tout le texte depuis le début.",
        isCorrect: false,
        explanation:
          "Non. La stratégie efficace est le balayage (scanning) : parcourir rapidement en cherchant les mots-clés de la question. Relire tout le texte est coûteux en temps. Au cycle 3, on enseigne aux élèves à anticiper l'emplacement de l'information (titre, sous-titres, début de paragraphe).",
      },
      {
        sentence:
          "Un élève qui recopie mot pour mot une phrase du texte pour répondre a nécessairement compris le texte.",
        isCorrect: false,
        explanation:
          "Faux. Le recopiage sans compréhension est une stratégie de contournement fréquente à l'école primaire. Un élève peut localiser et recopier une phrase sans comprendre sa signification ni son lien avec la question. La compréhension se vérifie aussi par la capacité à reformuler.",
      },
      {
        sentence:
          "Dans un texte de trois paragraphes, une information explicite peut se trouver dans n'importe lequel des paragraphes.",
        isCorrect: true,
        explanation:
          "Les informations explicites ne sont pas concentrées uniquement au début ou à la fin. L'enseignant apprend aux élèves à segmenter le texte et à identifier quel paragraphe est susceptible de contenir l'information cherchée (selon son thème ou sa position dans la structure).",
      },
    ],
  },
};
