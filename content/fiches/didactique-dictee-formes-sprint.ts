import type { Fiche } from "@/features/fiches/types";

export const dicteeFormesSprint: Fiche = {
  id: "didactique-dictee-formes-sprint",
  slug: "dictee-formes-sprint",
  title: "La dictée et ses formes didactiques",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "dictée",
    "orthographe",
    "dictée négociée",
    "phrase du jour",
    "Catach",
    "négociation graphique",
  ],
  notionsLiees: ["enseignement-orthographe-sprint", "erreurs-eleves-sprint"],
  exercicesAssocies: ["dictee_formes_didactiques"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les différentes formes de dictée comme outils d'apprentissage orthographique. Elle ne couvre pas l'orthographe disciplinaire elle-même mais les dispositifs didactiques associés.",
    oneLiner:
      "La dictée n'est pas qu'un outil d'évaluation : elle est un outil d'apprentissage quand elle prend des formes actives. La dictée négociée fait résoudre les problèmes orthographiques collectivement. La phrase dictée du jour (Cogis) demande aux élèves d'expliciter leurs choix graphiques. L'atelier de négociation graphique (ANG) favorise la justification entre pairs. La dictée traditionnelle (évaluation) doit être complétée par ces formes pour enseigner l'orthographe.",
    exampleCorrect: {
      sentence:
        "L'enseignant dicte une phrase, puis les élèves comparent leurs graphies en groupes et argumentent leurs choix en s'appuyant sur des règles.",
      explanation:
        "C'est le principe de la dictée négociée : elle transforme la dictée en situation d'apprentissage où les élèves construisent un raisonnement orthographique par la confrontation et l'argumentation.",
    },
    exampleWrong: {
      sentence:
        "Considérer que la dictée quotidienne (dictée + correction en rouge) suffit à améliorer l'orthographe des élèves sans travail de justification.",
      explanation:
        "La dictée traditionnelle seule relève de l'évaluation, pas de l'enseignement. Sans explicitation des raisonnements par les élèves, les erreurs se répètent. Les programmes préconisent des formes actives qui développent la réflexion métalinguistique.",
    },
    mainTrap:
      "Confondre « dictée d'apprentissage » (outil pour construire des savoirs orthographiques) et « dictée d'évaluation » (vérification de l'acquis). Le CRPE teste la connaissance des dispositifs actifs, pas la dictée traditionnelle seule.",
    quiz: [
      {
        sentence:
          "La dictée négociée consiste à faire comparer et argumenter les graphies entre élèves après une dictée individuelle, afin de développer le raisonnement orthographique.",
        isCorrect: true,
        explanation:
          "La dictée négociée repose sur la confrontation des graphies et l'argumentation entre pairs. Les élèves doivent justifier leurs choix en mobilisant des règles, ce qui développe la métacognition orthographique.",
      },
      {
        sentence:
          "La phrase dictée du jour (Cogis) est une dictée classique où l'enseignant dicte une phrase puis corrige au tableau.",
        isCorrect: false,
        explanation:
          "La phrase dictée du jour (Cogis) demande aux élèves d'expliciter et de confronter leurs choix graphiques. L'enseignant ne corrige pas directement : il recueille les propositions, les fait discuter, et guide la classe vers la norme en s'appuyant sur les raisonnements des élèves.",
      },
      {
        sentence:
          "Dans la typologie de Catach, les erreurs sont classées en erreurs phonétiques, phonogrammiques, morphogrammiques et logogrammiques, ce qui permet un diagnostic précis des difficultés orthographiques.",
        isCorrect: true,
        explanation:
          "Nina Catach distingue ces types d'erreurs selon le niveau linguistique concerné : transcription des sons (phonogrammes), marques grammaticales (morphogrammes), distinction des homophones (logogrammes). Cette classification permet à l'enseignant de cibler les remédiations.",
      },
      {
        sentence:
          "La copie différée est un exercice de simple reproduction sans lien avec l'apprentissage orthographique.",
        isCorrect: false,
        explanation:
          "La copie différée est un outil d'apprentissage orthographique : l'élève observe un mot ou une phrase, le cache, puis l'écrit de mémoire. Ce processus mobilise la mémorisation de la forme orthographique et renforce l'orthographe lexicale, bien au-delà de la simple copie.",
      },
      {
        sentence:
          "L'auto-dictée et la dictée préparée sont des dictées d'apprentissage, tandis que la dictée de contrôle est une dictée d'évaluation.",
        isCorrect: true,
        explanation:
          "L'auto-dictée (l'élève mémorise un texte puis se le dicte) et la dictée préparée (travail préalable sur les difficultés du texte) sont des outils d'apprentissage. La dictée de contrôle, sans préparation spécifique, sert à évaluer les acquis orthographiques.",
      },
    ],
  },
};
