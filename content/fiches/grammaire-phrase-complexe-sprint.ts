import type { Fiche } from "@/features/fiches/types";

export const grammairePhraseComplexeSprint: Fiche = {
  id: "grammaire-phrase-complexe-sprint",
  slug: "phrase-complexe-sprint",
  title: "La phrase complexe",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["phrase complexe", "coordination", "subordination", "syntaxe"],
  notionsLiees: ["phrase-simple-sprint", "subordonnees-circonstancielles-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche suppose que tu maîtrises la notion de proposition et sais repérer un verbe conjugué.",
    oneLiner:
      "Phrase complexe = 2+ verbes conjugués. Juxtaposition : virgule/point-virgule. Coordination : conjonction de coordination (mais/ou/et/or/ni/car). Subordination : une proposition dépend syntaxiquement d'une autre (conjonction de subordination, pronom relatif). Note : « donc » est un adverbe (terminologie Éduscol 2021), pas une conjonction de coordination.",
    exampleCorrect: {
      sentence: "Il pleuvait, car la météo l'avait annoncé.",
      explanation:
        "Deux propositions indépendantes reliées par la conjonction de coordination « car » → phrase complexe par coordination. Les conjonctions de coordination sont : mais, ou, et, or, ni, car.",
    },
    exampleWrong: {
      sentence: "Cette phrase est complexe : elle contient une subordonnée relative et une subordonnée temporelle.",
      explanation:
        "Ce n'est pas une analyse, c'est une description. Piège classique : croire qu'une phrase est complexe parce qu'elle est longue — c'est le nombre de verbes conjugués qui compte, pas la longueur.",
    },
    mainTrap:
      "\"Il chante et danse.\" → phrase SIMPLE ! \"Et\" coordonne ici deux verbes conjugués qui partagent le même sujet, formant une seule proposition avec un prédicat composé — il n'y a qu'une proposition. Pour avoir une phrase complexe par coordination, il faut deux propositions distinctes : \"Il chante et elle danse.\"",
    quiz: [
      {
        sentence:
          "\"Le chat dort ; le chien veille.\" est une phrase complexe par juxtaposition.",
        isCorrect: true,
        explanation:
          "Deux propositions indépendantes séparées par un point-virgule, sans mot de liaison → juxtaposition. Deux verbes conjugués (dort/veille) → phrase complexe.",
      },
      {
        sentence:
          "\"L'enfant qui lit beaucoup réussit à l'école.\" est une phrase simple car elle n'a qu'une idée principale.",
        isCorrect: false,
        explanation:
          "FAUX. Deux verbes conjugués (\"lit\" et \"réussit\") → phrase complexe. La subordonnée relative \"qui lit beaucoup\" est enchâssée dans la principale. Le critère est syntaxique, pas sémantique.",
      },
      {
        sentence:
          "Dans une subordination, la proposition subordonnée peut être supprimée sans détruire la grammaticalité de la phrase.",
        isCorrect: true,
        explanation:
          "Vrai pour les subordonnées circonstancielles (\"Il part parce qu'il est fatigué\" → \"Il part\"). En revanche, certaines subordonnées sont essentielles (complétives : \"Je veux que tu viennes\" → *\"Je veux\" est incomplet).",
      },
      {
        sentence:
          "\"Bien qu'il soit brillant, il échoue souvent\" est une phrase complexe par coordination.",
        isCorrect: false,
        explanation:
          "FAUX. \"Bien que\" est une conjonction de subordination (concession) → subordination, pas coordination. La proposition \"bien qu'il soit brillant\" est une subordonnée circonstancielle concessive.",
      },
      {
        sentence:
          "Une proposition subordonnée relative est toujours une proposition circonstancielle.",
        isCorrect: false,
        explanation:
          "FAUX. La relative complète ou détermine un nom (\"le livre que je lis\") → elle a une fonction nominale (épithète ou appositive), pas circonstancielle. Seules les circonstancielles expriment des circonstances (temps, cause, but, etc.).",
      },
    ],
  },
};
