import type { Fiche } from "@/features/fiches/types";

export const concordanceTempsSprint: Fiche = {
  id: "conjugaison-concordance-temps-sprint",
  slug: "concordance-temps-sprint",
  title: "Concordance des temps",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["concordance des temps", "discours indirect", "subordonnée complétive", "temps verbaux"],
  notionsLiees: ["discours-direct-indirect-sprint", "conditionnel-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche traite de la concordance dans les subordonnées complétives et le discours indirect. Pour les circonstancielles, voir la fiche correspondante.",
    oneLiner:
      "Principale au présent/futur → subordonnée au présent (simultané) ou futur (postérieur) ou passé composé (antérieur). Principale au passé → subordonnée à l'imparfait (simultané), au conditionnel présent (postérieur) ou au plus-que-parfait (antérieur).",
    exampleCorrect: {
      sentence: "Il savait qu'elle partirait le lendemain.",
      explanation:
        "Principale au passé (\"savait\") + action postérieure dans la subordonnée → conditionnel présent (\"partirait\") = futur dans le passé. Concordance respectée.",
    },
    exampleWrong: {
      sentence: "Il savait qu'elle partira le lendemain.",
      explanation:
        "FAUX. Principale au passé → futur simple interdit dans la subordonnée (sauf vérité générale). Il faut le conditionnel présent : \"partirait\". Le futur simple viole la concordance.",
    },
    mainTrap:
      "La vérité générale ou scientifique échappe à la concordance : \"Copernic a démontré que la Terre tourne autour du Soleil.\" → \"tourne\" reste au présent même si la principale est au passé, car l'énoncé est une vérité permanente. C'est l'exception la plus testée au CRPE.",
    quiz: [
      {
        sentence: "\"Elle pensait qu'il était parti depuis la veille.\" — le plus-que-parfait est justifié.",
        isCorrect: true,
        explanation:
          "Correct. Principale au passé (\"pensait\") + action antérieure au moment de la principale → plus-que-parfait (\"était parti\"). Concordance des temps respectée pour l'antériorité.",
      },
      {
        sentence: "\"Le professeur a expliqué que la photosynthèse produit de l'oxygène.\" — le présent est une faute.",
        isCorrect: false,
        explanation:
          "FAUX. \"La photosynthèse produit de l'oxygène\" est une vérité scientifique permanente → le présent est CORRECT même après un verbe au passé. C'est l'exception de la vérité générale, totalement admise et attendue au CRPE.",
      },
      {
        sentence: "\"Je croyais qu'il viendrait.\" applique correctement la concordance.",
        isCorrect: true,
        explanation:
          "Correct. Principale au passé (\"croyais\") + action postérieure → conditionnel présent (\"viendrait\" = futur dans le passé). Concordance parfaite.",
      },
      {
        sentence: "\"Elle dit qu'elle était fatiguée.\" est incorrect car \"dit\" est au présent.",
        isCorrect: false,
        explanation:
          "FAUX. La phrase est correcte. \"Dit\" est au présent → la subordonnée peut être à l'imparfait pour exprimer la simultanéité passée perçue au moment de l'énonciation. Cette concordance est stylistiquement valide ; l'imparfait exprime une simultanéité décalée dans le temps de la parole.",
      },
      {
        sentence: "\"Il avait promis qu'il rangerait sa chambre.\" — la concordance est respectée.",
        isCorrect: true,
        explanation:
          "Correct. Principale au passé (\"avait promis\") + action postérieure → conditionnel présent (\"rangerait\"). L'antériorité de \"avait promis\" par rapport au repère passé est bien exprimée par le plus-que-parfait, et la postériorité de l'action promise par le conditionnel.",
      },
    ],
  },
};
