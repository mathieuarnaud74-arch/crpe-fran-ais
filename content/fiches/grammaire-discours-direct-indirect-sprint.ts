import type { Fiche } from "@/features/fiches/types";

export const grammaireDiscoursSprint: Fiche = {
  id: "grammaire-discours-direct-indirect-sprint",
  slug: "discours-direct-indirect-sprint",
  title: "Discours direct et indirect",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["discours direct", "discours indirect", "transformation", "concordance des temps"],
  notionsLiees: ["concordance-temps-sprint", "phrase-complexe-sprint"],
  exercicesAssocies: ["anal_discours_direct_indirect"],
  content: {
    model: "sprint",
    disclaimer: "La concordance des temps et les notions de déictiques (ici, maintenant, hier…) sont nécessaires pour maîtriser cette fiche.",
    oneLiner:
      "Direct = paroles citées entre guillemets, telles quelles. Indirect = paroles intégrées avec \"que\" (ou si/interrogatif), + changements obligatoires : personnes, temps (concordance), déictiques (ici→là, maintenant→alors, hier→la veille, demain→le lendemain).",
    exampleCorrect: {
      sentence: "Il a dit qu'il viendrait le lendemain.",
      explanation:
        "Transformation correcte depuis \"Je viendrai demain\" : verbe introducteur au passé → \"viendrai\" (futur) → \"viendrait\" (conditionnel, futur dans le passé) ; \"demain\" → \"le lendemain\" (déictique temporel modifié).",
    },
    exampleWrong: {
      sentence: "Il a dit qu'il viendra demain.",
      explanation:
        "FAUX. Verbe introducteur au passé (\"a dit\") → il faut appliquer la concordance des temps : futur → conditionnel présent. Et \"demain\" → \"le lendemain\". Les deux transformations sont manquantes.",
    },
    mainTrap:
      "Le discours indirect libre est le piège de l'analyse : il n'a pas de subordonnant et garde souvent les temps du discours direct, mais conserve les pronoms de la 3e personne du narrateur. Exemple : \"Il rentra chez lui. Tout était fini. Il ne reviendrait plus.\" → les deux dernières phrases sont du discours indirect libre, pas du discours narratif ordinaire.",
    quiz: [
      {
        sentence:
          "La transformation de \"Viens ici !\" en discours indirect donne : \"Il lui a ordonné de venir là.\"",
        isCorrect: true,
        explanation:
          "Correct. Impératif → infinitif en discours indirect (\"de venir\") ; \"ici\" → \"là\" (déictique spatial). Le subordonnant \"que\" est remplacé par \"de + infinitif\" pour les injonctions.",
      },
      {
        sentence:
          "\"Il demanda si elle était prête\" est une transformation correcte de \"Est-elle prête ?\"",
        isCorrect: true,
        explanation:
          "Correct. Interrogation totale → \"si\" en discours indirect ; \"est\" (présent) → \"était\" (imparfait) par concordance (verbe introducteur au passé) ; inversion sujet-verbe supprimée.",
      },
      {
        sentence:
          "\"Elle a annoncé qu'elle est enceinte\" respecte la concordance des temps.",
        isCorrect: false,
        explanation:
          "FAUX selon la règle stricte. Verbe introducteur au passé (\"a annoncé\") → il faudrait l'imparfait : \"qu'elle était enceinte\". Exception possible : si le fait est encore vrai au moment de l'énonciation (vérité actuelle), le présent peut se justifier stylistiquement, mais au CRPE on applique la concordance.",
      },
      {
        sentence:
          "En discours indirect libre, on retrouve des marques des deux discours : 3e personne du narrateur ET présent/futur/conditionnel.",
        isCorrect: true,
        explanation:
          "Correct. Le discours indirect libre hybride : il adopte les pronoms de la narration (3e personne) mais conserve les temps et la modalité du discours direct (présent, futur, conditionnel, exclamation, interrogation sans subordonnant).",
      },
      {
        sentence:
          "Dans \"Elle me dit : ‟Reviens demain !\", les guillemets peuvent être remplacés par des tirets cadratins.",
        isCorrect: false,
        explanation:
          "FAUX. Les tirets cadratins introduisent des répliques dans un dialogue (changement de locuteur), pas une citation ponctuelle insérée dans un discours. Pour une citation unique dans un récit, on utilise les guillemets (ou les deux-points + guillemets).",
      },
    ],
  },
};
