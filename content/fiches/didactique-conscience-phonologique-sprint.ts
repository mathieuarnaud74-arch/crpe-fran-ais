import type { Fiche } from "@/features/fiches/types";

export const consciencePhonologiqueSprint: Fiche = {
  id: "didactique-conscience-phonologique-sprint",
  slug: "conscience-phonologique-sprint",
  title: "Conscience phonologique",
  subtitle: "Révision express — 5 min",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["conscience phonologique", "phonème", "syllabe", "cycle 2", "apprentissage lecture"],
  notionsLiees: ["apprendre-a-lire-sprint", "enseignement-orthographe-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche est indispensable pour les questions de didactique du cycle 2 (GS-CP-CE1). La conscience phonologique est systématiquement évaluée dans les épreuves CRPE sous forme de questions sur des activités de classe ou d'analyse d'erreurs d'élèves.",
    oneLiner:
      "La conscience phonologique est la capacité à identifier et manipuler les unités sonores de la langue (syllabes, rimes, phonèmes). Distincte des phonics (correspondances graphème-phonème à l'écrit), elle opère sur l'oral seul. Elle est le prédicteur le plus robuste de la réussite en lecture-décodage au CP.",
    exampleCorrect: {
      sentence:
        "Activité GS : « Je dis un mot, vous comptez les syllabes avec vos mains : ca-na-pe → 3 syllabes. » → activité de conscience syllabique.",
      explanation:
        "La tâche est entièrement orale (aucun support écrit), porte sur la syllabe (unité phonologique intermédiaire) et requiert une manipulation active (segmentation + dénombrement). C'est une activité de conscience phonologique adaptée à la Grande Section, niveau où la conscience syllabique précède la conscience phonémique.",
    },
    exampleWrong: {
      sentence:
        "Apprendre à l'élève que la lettre « s » correspond au son /s/ est une activité de conscience phonologique.",
      explanation:
        "FAUX. Enseigner la correspondance graphème-phonème (lettre → son) relève des phonics (code écrit), non de la conscience phonologique. La conscience phonologique est une compétence orale : elle porte sur les sons, indépendamment de l'écrit. Les deux sont complémentaires et doivent être enseignées conjointement, mais elles ne sont pas identiques.",
    },
    mainTrap:
      "Penser que la conscience phonologique s'acquiert naturellement sans enseignement explicite est une erreur grave au CRPE. Les recherches en sciences cognitives (Dehaene, Goswami) montrent qu'un entraînement systématique est nécessaire, particulièrement pour les élèves fragiles ou issus de milieux peu stimulants sur le plan langagier. L'enseignement explicite de la conscience phonémique (unité la plus fine) est indispensable au CP pour prévenir la dyslexie développementale.",
    quiz: [
      {
        sentence:
          "La conscience phonémique (manipulation des phonèmes) est plus facile à développer que la conscience syllabique.",
        isCorrect: false,
        explanation:
          "FAUX. La conscience syllabique (segmenter en syllabes) est plus précoce et plus accessible. La conscience phonémique (identifier et manipuler les phonèmes individuels, ex. : /p/ dans « pain ») est plus abstraite et nécessite un enseignement explicite. L'ordre développemental va du grossier (syllabe, rime) au fin (phonème).",
      },
      {
        sentence:
          "Un élève capable de trouver des rimes (chat/rat, lune/dune) manifeste une conscience phonologique.",
        isCorrect: true,
        explanation:
          "Exact. Trouver des rimes est une tâche de conscience phonologique : l'élève identifie et compare les segments finaux des mots (/ɑ̃/ dans chat/rat). C'est une compétence accessible dès la maternelle (GS) et un prédicteur précoce de la réussite en lecture.",
      },
      {
        sentence:
          "Les élèves avec troubles dyslexiques ont souvent un déficit de conscience phonologique, d'où l'importance d'un dépistage précoce.",
        isCorrect: true,
        explanation:
          "Exact. Le déficit phonologique est le marqueur cognitif central de la dyslexie développementale (Snowling, Vellutino). Un repérage précoce des difficultés de conscience phonologique (dès la GS/CP) permet de mettre en place des interventions adaptées (PPRE, accompagnement orthophonique) avant que les difficultés ne s'installent durablement.",
      },
      {
        sentence:
          "La suppression phonémique (« Dis pain sans le /p/ ») est une tâche de conscience phonologique plus complexe que la fusion syllabique.",
        isCorrect: true,
        explanation:
          "Exact. La suppression phonémique requiert d'isoler mentalement un phonème, de le supprimer et de recombiner les phonèmes restants — une opération d'une grande exigence cognitive. La fusion syllabique (« ca + na + pe = canape ») est plus accessible car elle opère sur des unités plus larges.",
      },
      {
        sentence:
          "Travailler la conscience phonologique à l'oral n'a pas d'impact sur l'apprentissage de l'orthographe.",
        isCorrect: false,
        explanation:
          "FAUX. La conscience phonologique est un prérequis pour la voie phonologique de l'orthographe (encodage : transcription des sons en graphèmes). Un élève qui ne segmente pas les phonèmes à l'oral ne peut pas encoder les mots correctement à l'écrit. L'impact sur l'orthographe est documenté par de nombreuses études longitudinales.",
      },
    ],
  },
};
