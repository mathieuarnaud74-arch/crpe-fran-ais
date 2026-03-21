import type { Fiche } from "@/features/fiches/types";

export const ecritureCycle2Sprint: Fiche = {
  id: "didactique-ecriture-cycle2-sprint",
  slug: "ecriture-cycle2-sprint",
  title: "L'écriture au cycle 2",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "écriture",
    "cycle 2",
    "geste graphique",
    "cursive",
    "copie",
    "écriture inventée",
    "Ferreiro",
  ],
  notionsLiees: [
    "enseigner-production-ecrite",
    "conscience-phonologique-sprint",
  ],
  exercicesAssocies: ["ecriture_cycle2"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la didactique de l'écriture au cycle 2 (CP-CE1-CE2). Elle couvre les trois dimensions prescrites par les programmes : geste graphique, copie et production d'écrits.",
    oneLiner:
      "Au cycle 2, l'écriture articule trois dimensions : le geste graphique (tenue du crayon, ductus des lettres cursives), la copie (outil de mémorisation orthographique, pas simple reproduction), et la production autonome progressive (de la phrase au texte court). L'écriture inventée (Ferreiro) révèle les hypothèses de l'enfant sur le système écrit. La dictée à l'adulte assure la transition cycle 1 → cycle 2 en libérant de la contrainte graphique.",
    exampleCorrect: {
      sentence:
        "En CP, l'enseignant propose quotidiennement 10 minutes d'écriture cursive guidée (formation des lettres par familles de gestes) puis une courte production autonome (« Écris une phrase pour raconter ce que tu as aimé ce matin »).",
      explanation:
        "Cette pratique articule les trois composantes des programmes : le geste graphique (cursive guidée), la copie (modèles de lettres) et la production d'écrits (phrase autonome). La production est quotidienne et progressive, même si le résultat est imparfait.",
    },
    exampleWrong: {
      sentence:
        "Reporter la production écrite à plus tard sous prétexte que les élèves ne maîtrisent pas encore l'orthographe.",
      explanation:
        "L'écriture s'enseigne dès le CP, même imparfaitement. Les programmes insistent sur la production autonome précoce : les élèves apprennent à écrire en écrivant. Attendre la maîtrise de l'orthographe pour commencer à produire des écrits est une erreur didactique majeure.",
    },
    mainTrap:
      "Penser que l'écriture au cycle 2 se réduit au geste graphique. Les programmes articulent explicitement 3 composantes : copie, geste graphique ET production d'écrits. Ignorer la production autonome est une erreur fréquente au CRPE.",
    quiz: [
      {
        sentence:
          "L'écriture inventée (Ferreiro) consiste à laisser les jeunes élèves écrire comme ils pensent, ce qui révèle leurs hypothèses sur le fonctionnement du système écrit (stade pré-syllabique, syllabique, alphabétique).",
        isCorrect: true,
        explanation:
          "Emilia Ferreiro a montré que les enfants passent par des stades dans leur compréhension du principe alphabétique. L'écriture inventée permet à l'enseignant de repérer ces stades et d'adapter son enseignement. C'est un outil diagnostique, pas un laisser-faire.",
      },
      {
        sentence:
          "En France, le choix institutionnel pour l'écriture manuscrite est la cursive, car elle favorise la fluidité du geste et la liaison entre les lettres.",
        isCorrect: true,
        explanation:
          "Les programmes français prescrivent l'apprentissage de l'écriture cursive dès le cycle 1 (GS) et sa maîtrise progressive au cycle 2. La cursive est privilégiée car elle permet un tracé continu, favorise la fluidité et contribue à la mémorisation orthographique par le geste.",
      },
      {
        sentence:
          "La copie différée est un simple exercice de reproduction graphique sans enjeu orthographique.",
        isCorrect: false,
        explanation:
          "La copie différée est un outil d'apprentissage orthographique : l'élève lit un mot ou un groupe de mots, le mémorise, puis l'écrit sans modèle visible. Ce processus engage la mémorisation de la forme orthographique et dépasse largement la reproduction graphique.",
      },
      {
        sentence:
          "Les écrits intermédiaires (brouillons, listes, schémas) n'ont pas de valeur didactique au cycle 2 car ils ne sont pas des textes aboutis.",
        isCorrect: false,
        explanation:
          "Les écrits intermédiaires (brouillons, listes, schémas, écrits de travail) sont des outils d'apprentissage essentiels. Ils permettent aux élèves de planifier, d'organiser leurs idées et de réviser. Le processus d'écriture (planification, mise en texte, révision) s'enseigne dès le cycle 2.",
      },
      {
        sentence:
          "L'évaluation de l'écriture au cycle 2 doit porter sur trois dimensions : la lisibilité du tracé, la cohérence du contenu et la correction orthographique progressive.",
        isCorrect: true,
        explanation:
          "Les programmes préconisent une évaluation multidimensionnelle de l'écriture : le geste graphique (lisibilité, mise en page), le contenu (cohérence, pertinence) et l'orthographe (en tenant compte de la progressivité des apprentissages). L'étayage de l'enseignant adapte les exigences au niveau de l'élève.",
      },
    ],
  },
};
