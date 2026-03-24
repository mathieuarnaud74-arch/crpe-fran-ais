import type { Fiche } from "@/features/fiches/types";

export const didactiqueDifferenciationOperatoire: Fiche = {
  id: "didactique-differenciation-operatoire",
  slug: "differenciation-maths-arbre-decision",
  title: "Différencier en mathématiques : choisir la bonne stratégie",
  domaine: "didactique_maths",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "différenciation pédagogique",
    "hétérogénéité",
    "étayage",
    "enrichissement",
    "adaptation",
    "variables didactiques",
    "inclusion",
    "cycle 2",
    "cycle 3",
    "besoins éducatifs particuliers",
  ],
  notionsLiees: [
    "didactique-differenciation-reference",
    "didactique-variables-didactiques-reference",
    "didactique-preparer-seance-maths-operatoire",
    "didactique-evaluation-remediation-sprint",
    "didactique-analyser-erreur-operatoire",
  ],
  exercicesAssocies: [
    "math_didactique_differenciation",
    "math_didactique_differenciation_pedagogique",
  ],
  content: {
    model: "operatoire",
    startingQuestion:
      "J'ai des élèves avec des niveaux très hétérogènes en mathématiques : comment adapter mon enseignement efficacement ?",
    decisionTree: {
      type: "question",
      text: "La différenciation doit-elle porter sur l'OBJECTIF (certains élèves visent un objectif simplifié) ou sur les MOYENS (tous les élèves visent le même objectif, mais par des chemins différents) ?",
      yes: {
        type: "question",
        text: "Différenciation des OBJECTIFS — les élèves en grande difficulté ont-ils des lacunes sur des prérequis du cycle précédent ?",
        yes: {
          type: "leaf",
          label: "Remédiation sur les prérequis manquants",
          rule: "Identifier précisément le prérequis manquant par une évaluation diagnostique ciblée. Pendant que la classe travaille sur l'objectif en cours, proposer aux élèves concernés des exercices de remédiation sur le prérequis. Organiser des groupes de besoin (pas des groupes de niveau fixes) ou du soutien individualisé. Cette différenciation d'objectif est exceptionnelle : l'idéal est que tous les élèves visent le même objectif fondamental du programme.",
          example:
            "En CM1, lors d'une séance sur la multiplication de fractions, un élève ne maîtrise pas encore la multiplication entière. Pendant que les autres travaillent les fractions, lui reçoit un exercice de remédiation sur la multiplication posée (objectif de CE2), avec l'aide d'un AESH ou d'une fiche-outil.",
        },
        no: {
          type: "leaf",
          label: "Simplifier la tâche par les variables didactiques",
          rule: "Si les prérequis sont acquis mais la tâche trop complexe, jouer sur les variables didactiques sans changer l'objectif : réduire la complexité numérique (petits nombres), fournir une représentation concrète (matériel de manipulation), décomposer la tâche en étapes plus petites, fournir une aide partielle (amorce, schéma). L'objectif de savoir reste le même pour tous.",
          example:
            "Problème de proportionnalité : pour les élèves en difficulté, fournir un tableau à compléter (structure donnée) avec des nombres simples (×2, ×5). Pour les autres, des nombres quelconques sans structure donnée.",
        },
      },
      no: {
        type: "question",
        text: "Différenciation des MOYENS — les élèves avancés ont-ils déjà atteint l'objectif du jour ?",
        yes: {
          type: "question",
          text: "Les élèves avancés ont atteint l'objectif — proposer un enrichissement. Quel type d'enrichissement ?",
          yes: {
            type: "leaf",
            label: "Approfondissement : tâche complexe ou généralisation",
            rule: "Proposer un problème ouvert, une généralisation (« et si les nombres étaient différents ? »), une preuve à chercher, un problème transversal, ou une mise en lien avec d'autres notions. Ne jamais anticiper le programme du cycle suivant : approfondir le niveau actuel. L'enrichissement ne doit pas être perçu comme une punition (« travail supplémentaire ») mais comme une extension stimulante.",
            example:
              "Après avoir maîtrisé le calcul de l'aire du rectangle, proposer : « Peut-on construire deux rectangles différents avec le même périmètre mais des aires différentes ? » (problème ouvert liant aire et périmètre, sans anticiper sur des formules de cycle 4).",
          },
          no: {
            type: "leaf",
            label: "Tutorat entre pairs ou rôle de tuteur",
            rule: "Un élève qui maîtrise bien un savoir peut être invité à expliquer sa stratégie à un pair en difficulté. Cette approche bénéficie aux deux : l'élève-tuteur consolide sa compréhension en l'expliquant (effet d'apprentissage par l'enseignement), et l'élève-tutoré reçoit une aide dans le « langage des élèves ». Encadrer cette activité : l'enseignant reste responsable de la validation.",
            example:
              "En CE2, après la séance sur la soustraction posée, demander à un élève qui a terminé et réussi d'expliquer sa méthode à son voisin qui bloque. L'enseignant observe et intervient si l'explication est erronée.",
          },
        },
        no: {
          type: "question",
          text: "Différenciation des SUPPORTS — les élèves ont-ils besoin de supports variés pour accéder à la même tâche ?",
          yes: {
            type: "leaf",
            label: "Différenciation par les supports et l'étayage",
            rule: "Pour les mêmes exercices, varier : (1) le matériel de manipulation (cubes, réglettes Cuisenaire, droite numérique) pour les élèves qui ont besoin du concret ; (2) les représentations (schéma, tableau, dessin) pour rendre le problème accessible ; (3) les aides lexicales (lexique mathématique, reformulations) pour les élèves allophones ou dyslexiques. L'étayage doit être progressivement retiré (désétayage) à mesure que l'élève gagne en autonomie.",
            example:
              "Problème de mesure pour tous. Pour certains : matériel de mesure concret (règle, cubes). Pour d'autres : schéma à compléter. Pour les élèves avancés : données sous forme d'un texte seul, sans aide visuelle.",
          },
          no: {
            type: "leaf",
            label: "Différenciation par le temps et l'organisation",
            rule: "Tous font la même tâche, mais certains ont plus de temps (aménagement PPRE/PAP), travaillent en groupe réduit (avec l'enseignant), ou utilisent des outils compensatoires (calculatrice pour les troubles dyscalculiques, synthèse vocale). Distinguer aménagements (organisation) et adaptations (modification de la tâche).",
            example:
              "Élève avec PAP dyscalculie : même exercice, mais autorisé à utiliser une calculatrice pour les calculs de base, ce qui lui permet de se concentrer sur la résolution du problème (compétence visée) plutôt que sur le calcul (compétence déjà identifiée comme difficile).",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "En CE2, séance sur la soustraction avec retenue. La classe est hétérogène : 5 élèves n'ont pas encore automatisé la soustraction sans retenue, 18 sont au niveau attendu, 4 ont déjà acquis la soustraction avec retenue. Comment différencier ?",
      steps: [
        "Étape 1 — Identifier les trois profils : Groupe A (5 élèves) : prérequis non acquis (soustraction sans retenue) ; Groupe B (18 élèves) : au niveau, travaillent sur l'objectif du jour (soustraction avec retenue) ; Groupe C (4 élèves) : objectif déjà acquis (enrichissement).",
        "Étape 2 — Différenciation pour le Groupe A : activité de remédiation sur la soustraction sans retenue avec du matériel concret (cubes, tableau des unités/dizaines). Pas d'objectif de retenue aujourd'hui. Ce groupe travaille en semi-autonomie avec une fiche-outil.",
        "Étape 3 — Différenciation pour le Groupe B (groupe central) : séance classique avec situation-problème (soustraction avec retenue), manipulation, institutionnalisation. C'est le groupe qui bénéficie de la gestion directe par l'enseignant.",
        "Étape 4 — Différenciation pour le Groupe C : après 10 minutes de travail autonome sur la tâche de base (pour vérifier l'acquisition), proposer un problème ouvert : « Avec les chiffres 3, 5, 7, 8, construis la plus grande soustraction possible (nombre à 4 chiffres moins nombre à 4 chiffres). »",
        "Étape 5 — Gestion du temps : l'enseignant passe d'abord avec le Groupe A pour lancer leur activité, puis anime la séance avec le Groupe B (la majorité), tout en gardant un œil sur le Groupe C en autonomie.",
        "Étape 6 — Trace commune : l'institutionnalisation finale est la même pour tous (Groupes B et C). Le Groupe A l'entend mais n'est pas encore évalué sur cet objectif.",
      ],
    },
    quiz: [
      {
        sentence:
          "La différenciation pédagogique implique que chaque élève a un programme individuel différent.",
        isCorrect: false,
        explanation:
          "FAUX. La différenciation ne signifie pas l'individualisation complète. Elle consiste à varier les MOYENS (supports, outils, temps, type d'aide) pour permettre à tous d'atteindre les mêmes objectifs fondamentaux du programme. Seuls les cas de handicap ou de besoins éducatifs particuliers importants (PPS, PAI) peuvent justifier des adaptations d'objectifs. Pour la grande majorité des élèves, la différenciation pédagogique joue sur les moyens, pas sur les buts.",
      },
      {
        sentence:
          "Les groupes de besoin en mathématiques doivent rester fixes toute l'année pour que les élèves aient des repères stables.",
        isCorrect: false,
        explanation:
          "FAUX. Les groupes de besoin sont des groupes TEMPORAIRES, constitués pour une notion ou une difficulté spécifique, et dissous dès que le besoin est résolu. Des groupes de niveau fixes toute l'année sont préjudiciables : ils figent les élèves dans une catégorie, créent des effets d'étiquetage (stigmatisation) et ne tiennent pas compte des progrès. Chaque notion peut avoir ses propres groupes de besoin, et un élève peut être dans le groupe avancé pour les fractions et le groupe en difficulté pour la géométrie.",
      },
      {
        sentence:
          "Donner plus d'exercices aux élèves rapides est une forme de différenciation par enrichissement.",
        isCorrect: false,
        explanation:
          "FAUX. Donner « plus de la même chose » (exercices supplémentaires du même niveau) n'est pas de l'enrichissement, c'est une charge de travail supplémentaire qui peut être vécue comme une punition. L'enrichissement consiste à proposer des tâches de NIVEAU PLUS ÉLEVÉ de complexité (problèmes ouverts, généralisations, connexions entre notions) ou de NATURE DIFFÉRENTE (investiguer, prouver, créer). La qualité du défi, pas la quantité, distingue l'enrichissement de la simple extension.",
      },
      {
        sentence:
          "Le « désétayage » (ou retrait progressif de l'étayage) est une étape essentielle de la différenciation pour que l'élève gagne en autonomie.",
        isCorrect: true,
        explanation:
          "VRAI. L'étayage (scaffolding, concept de Bruner et Vygotski) est une aide temporaire qui soutient l'élève dans sa zone proximale de développement. Si l'étayage n'est jamais retiré, l'élève devient dépendant de l'aide et ne développe pas son autonomie. Le désétayage progressif (retirer une aide à la fois, lorsque l'élève montre qu'il peut s'en passer) est l'objectif final de toute différenciation : permettre à l'élève de rejoindre ses pairs dans la tâche commune, avec le même niveau d'autonomie.",
      },
      {
        sentence:
          "La différenciation ne s'applique qu'aux élèves en difficulté ; les élèves qui réussissent n'en ont pas besoin.",
        isCorrect: false,
        explanation:
          "FAUX. La différenciation s'adresse à TOUS les élèves. Les élèves qui réussissent facilement ont aussi besoin d'une différenciation — vers le haut (enrichissement, approfondissement) — pour continuer à progresser et ne pas s'ennuyer. Un élève très avancé qui réalise toutes les tâches sans effort ne progresse pas. La pédagogie différenciée vise à faire progresser chaque élève depuis son niveau actuel, quelle que soit sa position dans le spectre de compétences.",
      },
    ],
    didacticNote:
      "La différenciation pédagogique est un thème central du CRPE, notamment à l'oral. Les jurys attendent des candidats qu'ils distinguent clairement différenciation des MOYENS (adaptation des supports, du matériel, du temps, de l'étayage) et différenciation des OBJECTIFS (rarement justifiée, réservée aux élèves en grande difficulté ou en situation de handicap). Il est également attendu que les candidats sachent articuler différenciation et évaluation formative : c'est l'évaluation continue qui permet d'identifier les besoins et d'ajuster les groupes de besoin. Citer Bruner (étayage), Vygotski (zone proximale de développement) et les textes Éduscol sur l'inclusion renforce la solidité des réponses.",
  },
};
