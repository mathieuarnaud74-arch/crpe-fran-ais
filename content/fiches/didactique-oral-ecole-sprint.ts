import type { Fiche } from "@/features/fiches/types";

export const oralEcoleSprint: Fiche = {
  id: "didactique-oral-ecole-sprint",
  slug: "oral-ecole-sprint",
  title: "L'oral à l'école",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "moyenne",
  estimatedMinutes: 5,
  tags: [
    "oral",
    "langage",
    "débat",
    "exposé",
    "récit",
    "étayage",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "didactique-apprendre-a-lire-sprint",
    "didactique-conscience-phonologique-sprint",
    "didactique-programmes-cycles-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "L'oral est au cœur des programmes de tous les cycles. Au CRPE, les sujets interrogent fréquemment la distinction entre oral intégré (outil) et oral objet d'enseignement, les genres oraux formels et les dispositifs d'étayage. Cette fiche synthétise l'essentiel en format sprint.",
    oneLiner:
      "L'oral est à la fois un outil de communication quotidien en classe (oral intégré) et un objet d'enseignement à part entière (oral scriptural). L'enseigner suppose de travailler des genres oraux identifiés (exposé, débat réglé, récit oral, compte rendu), de distinguer langage oral et langage écrit (syntaxe, lexique, prosodie), et de mettre en place un étayage différencié (reformulation, relance, modélisation).",
    exampleCorrect: {
      sentence:
        "En CM1, l'enseignant organise un débat réglé sur un dilemme moral. Il distribue les rôles (modérateur, rapporteur, participants), affiche les règles du débat, fixe un objectif langagier (utiliser des connecteurs argumentatifs : car, en revanche, certes… mais) et prévoit une phase de bilan oral collectif.",
      explanation:
        "L'oral est ici un objet d'enseignement : le genre oral (débat réglé) est identifié, les critères de réussite sont explicites (connecteurs argumentatifs), les rôles structurent l'interaction et l'étayage est planifié. Ce n'est pas un simple échange spontané.",
    },
    exampleWrong: {
      sentence:
        "Considérer que l'oral se travaille naturellement à travers les échanges quotidiens en classe, sans séance dédiée ni objectif langagier.",
      explanation:
        "FAUX. Sans enseignement explicite, les écarts langagiers entre élèves se creusent. L'oral spontané en classe (répondre à une question, participer à un échange) ne suffit pas à développer les compétences orales visées par les programmes. Il faut des séances planifiées avec des objectifs langagiers précis, des genres oraux identifiés et des critères d'évaluation.",
    },
    mainTrap:
      "Confondre oral intégré et oral objet d'enseignement. L'oral intégré est l'oral utilisé comme médium (l'élève parle pour apprendre, répondre, échanger). L'oral objet est l'oral enseigné pour lui-même (l'élève apprend à structurer un exposé, argumenter dans un débat, raconter avec cohérence). Le CRPE teste systématiquement cette distinction. En outre, ne pas confondre langage oral et langage écrit oralisé : lire un texte à voix haute n'est pas produire de l'oral.",
    quiz: [
      {
        sentence:
          "L'exposé oral au cycle 3 est un genre oral qui nécessite une préparation écrite (plan, notes) et travaille la compétence « organiser et structurer un propos ».",
        isCorrect: true,
        explanation:
          "VRAI. L'exposé est un genre oral formel qui articule écrit et oral : l'élève planifie son propos par écrit (notes, plan), puis le présente oralement en s'appuyant sur ses notes sans les lire. Les programmes de cycle 3 visent explicitement la capacité à « réaliser une courte présentation orale en prenant appui sur des notes ».",
      },
      {
        sentence:
          "L'étayage de l'oral par l'enseignant se limite à corriger les erreurs de syntaxe des élèves.",
        isCorrect: false,
        explanation:
          "FAUX. L'étayage (Bruner) de l'oral est bien plus large : il inclut la reformulation corrective implicite (reprendre l'énoncé en le corrigeant sans stigmatiser), la relance (poser des questions ouvertes pour approfondir), la modélisation (offrir un modèle syntaxique ou lexical), l'encouragement et la réduction de la complexité de la tâche. L'étayage vise à développer l'autonomie langagière, pas à sanctionner les erreurs.",
      },
      {
        sentence:
          "Le débat réglé et le débat interprétatif en littérature développent les mêmes compétences orales.",
        isCorrect: false,
        explanation:
          "FAUX. Le débat réglé (débat à visée philosophique, débat sur un dilemme moral) travaille l'argumentation et la prise en compte de l'interlocuteur. Le débat interprétatif en littérature travaille la justification d'une interprétation par des indices textuels. Les deux développent l'oral argumentatif, mais avec des objets et des enjeux différents.",
      },
      {
        sentence:
          "Les programmes des cycles 2 et 3 prévoient des attendus de fin de cycle pour l'oral, portant sur la clarté, la cohérence et la prise en compte de l'auditoire.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes fixent des attendus explicites : en fin de cycle 2, « dire pour être entendu et compris, participer à des échanges » ; en fin de cycle 3, « réaliser une courte présentation orale, interagir de façon constructive, réciter un texte ». La prise en compte du destinataire est transversale.",
      },
      {
        sentence:
          "Évaluer l'oral est impossible car les productions orales sont éphémères et subjectives.",
        isCorrect: false,
        explanation:
          "FAUX. L'évaluation de l'oral est exigeante mais réalisable : grilles d'observation critériées (construites avec les élèves), enregistrements audio ou vidéo, auto-évaluation guidée. Les critères doivent être définis en amont (volume, clarté, cohérence, lexique, prise en compte de l'interlocuteur) et communiqués aux élèves.",
      },
    ],
  },
};
