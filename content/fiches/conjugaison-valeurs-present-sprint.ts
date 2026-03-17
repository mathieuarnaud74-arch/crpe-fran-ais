import type { Fiche } from "@/features/fiches/types";

export const valeursPresentSprint: Fiche = {
  id: "conjugaison-valeurs-present-sprint",
  slug: "valeurs-du-present",
  title: "Les valeurs du présent de l'indicatif",
  subtitle: "Révision express — 5 min",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["présent", "valeurs", "présent d'énonciation", "présent de vérité générale", "présent historique"],
  notionsLiees: ["imparfait-passe-simple-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les valeurs du présent de l'indicatif évaluées au CRPE. Les emplois du présent du subjonctif ou de l'impératif présent ne sont pas abordés ici.",
    oneLiner:
      "Le présent de l'indicatif ne décrit pas uniquement le moment de l'énonciation : il peut exprimer une vérité générale (les oiseaux volent), une habitude (il lit chaque soir), un futur proche (je pars demain), un passé proche (il arrive à l'instant), ou le présent historique (en 1789, la Bastille tombe). Identifier la valeur nécessite de regarder le contexte, les adverbes et la situation d'énonciation.",
    exampleCorrect: {
      sentence: "« La Terre tourne autour du Soleil. » → présent de vérité générale.",
      explanation:
        "Énoncé intemporel, valable indépendamment du moment d'énonciation. Caractéristique du présent gnomique ou de vérité générale.",
    },
    exampleWrong: {
      sentence: "Dans « Napoléon entre à Moscou en 1812 », le présent indique que l'action se passe maintenant.",
      explanation:
        "FAUX. C'est un présent de narration (historique) : l'énonciateur situe mentalement le lecteur au cœur d'un événement passé pour le rendre vivant.",
    },
    mainTrap:
      "Le présent historique (ou de narration) piège les candidats : « César franchit le Rubicon » ne signifie pas que l'action est actuelle. C'est un procédé stylistique qui rend le récit plus vivant. Autre piège : le présent à valeur de futur proche (« je pars demain »), qui nécessite un adverbe ou contexte temporel pour être identifié. Sans cet indice, on aurait un présent d'habitude ou d'énonciation.",
    quiz: [
      {
        sentence:
          "Dans « Le soleil se lève à l'est », le présent a une valeur d'énonciation (moment présent).",
        isCorrect: false,
        explanation:
          "C'est un présent de vérité générale : cette réalité n'est pas liée au moment où l'on parle. Elle est toujours vraie.",
      },
      {
        sentence:
          "Dans « Chaque matin, il boit un café », le présent exprime une habitude.",
        isCorrect: true,
        explanation:
          "L'adverbe « chaque matin » marque la répétition : c'est un présent d'habitude (ou itératif).",
      },
      {
        sentence:
          "Dans « En 1789, le peuple prend la Bastille », le présent indique une action future.",
        isCorrect: false,
        explanation:
          "La date passée (1789) indique qu'il s'agit d'un présent historique (de narration), procédé pour rendre l'événement plus vivant.",
      },
      {
        sentence:
          "Dans « J'arrive dans cinq minutes », le présent a une valeur de futur proche.",
        isCorrect: true,
        explanation:
          "Le complément « dans cinq minutes » projette l'action dans le futur. Le présent est ici à valeur prospective (futur proche).",
      },
      {
        sentence:
          "Dans « Il vient de partir », le présent de « venir » indique une action passée très récente.",
        isCorrect: true,
        explanation:
          "La périphrase « venir de + infinitif » au présent exprime le passé immédiat (présent à valeur de passé récent).",
      },
    ],
  },
};
