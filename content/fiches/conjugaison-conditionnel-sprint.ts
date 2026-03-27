import type { Fiche } from "@/features/fiches/types";

export const conditionnelSprint: Fiche = {
  id: "conjugaison-conditionnel-sprint",
  slug: "conditionnel-sprint",
  title: "Le conditionnel",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["conditionnel", "hypothèse", "si", "futur dans le passé"],
  notionsLiees: ["concordance-temps-sprint", "subordonnees-circonstancielles-sprint"],
  exercicesAssocies: ["conj_conditionnel_present"],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche couvre les principales valeurs du conditionnel. Pour la concordance des temps dans les complétives, voir la fiche dédiée.",
    oneLiner:
      "Conditionnel = futur dans le passé (concordance) OU hypothèse/supposition (si + imparfait → conditionnel présent ; si + PQP → conditionnel passé). RÈGLE ABSOLUE : JAMAIS \"si\" de condition + conditionnel dans la même proposition.",
    exampleCorrect: {
      sentence: "Si tu travaillais davantage, tu réussirais.",
      explanation:
        "Système hypothétique au présent : si + imparfait (\"travaillais\") dans la conditionnelle → conditionnel présent (\"réussirais\") dans la principale. Structure correcte.",
    },
    exampleWrong: {
      sentence: "Si tu travaillerais davantage, tu réussirais.",
      explanation:
        "FAUX. Après \"si\" de condition, le conditionnel est INTERDIT. Il faut l'imparfait : \"Si tu travaillais\". C'est l'erreur la plus pénalisée au CRPE concernant le conditionnel.",
    },
    mainTrap:
      "Attention au \"si\" qui n'est PAS un \"si\" de condition : dans \"Je me demande si tu viendrais\" (interrogation indirecte), \"si\" introduit une interrogation, pas une condition → le conditionnel est ici possible. Tester : peut-on remplacer \"si\" par \"au cas où\" ? Si oui → condition → INTERDIT avec le conditionnel. Si non → interrogation → conditionnel possible.",
    quiz: [
      {
        sentence: "\"S'il aurait su, il serait venu.\" est une faute grammaticale.",
        isCorrect: true,
        explanation:
          "Correct. \"Si\" de condition + conditionnel (\"aurait su\") = FAUX. Il faut le plus-que-parfait : \"S'il avait su, il serait venu.\" (irréel du passé : si + PQP → conditionnel passé).",
      },
      {
        sentence: "\"Le suspect aurait quitté le pays hier soir.\" — ce conditionnel est une faute.",
        isCorrect: false,
        explanation:
          "FAUX. Il s'agit du conditionnel journalistique (valeur d'allégation non vérifiée). C'est un emploi modal parfaitement correct, très courant dans la presse pour rapporter des faits incertains. Aucune faute ici.",
      },
      {
        sentence: "\"Il pensait qu'il pleuvrait le lendemain.\" — le conditionnel exprime le futur dans le passé.",
        isCorrect: true,
        explanation:
          "Correct. Principale au passé (\"pensait\") + futur dans la subordonnée → conditionnel présent (\"pleuvrait\"). C'est la valeur temporelle de concordance des temps, pas une hypothèse.",
      },
      {
        sentence: "\"Pourriez-vous m'indiquer la sortie ?\" — ce conditionnel est une faute de politesse exagérée.",
        isCorrect: false,
        explanation:
          "FAUX. C'est le conditionnel de politesse, parfaitement correct et attendu dans un registre soutenu. Il atténue la demande directe (\"Pouvez-vous\" → plus direct). Aucune faute, c'est un emploi modal standard.",
      },
      {
        sentence: "\"Si tu avais dormi, tu aurais été reposé.\" — c'est un irréel du passé correctement formé.",
        isCorrect: true,
        explanation:
          "Correct. Irréel du passé : si + plus-que-parfait (\"avais dormi\") dans la conditionnelle → conditionnel passé (\"aurais été\") dans la principale. Structure canonique de l'irréel du passé.",
      },
    ],
  },
};
