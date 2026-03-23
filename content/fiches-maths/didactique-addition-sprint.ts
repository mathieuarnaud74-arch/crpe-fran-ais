import type { Fiche } from "@/features/fiches/types";

export const didactiqueAdditionSprint: Fiche = {
  id: "didactique-addition-sprint",
  slug: "didactique-addition-sprint",
  title: "Didactique de l'addition",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "addition",
    "structures additives",
    "Vergnaud",
    "cycle 2",
    "CE1",
    "commutativité",
    "associativité",
    "tables d'addition",
    "calcul réfléchi",
  ],
  notionsLiees: [
    "didactique-soustraction-sprint",
    "didactique-numeration-cycles-sprint",
    "didactique-resolution-problemes-sprint",
    "didactique-vergnaud-structures-sprint",
  ],
  exercicesAssocies: ["math_didactique_numeration"],
  content: {
    model: "sprint",
    disclaimer:
      "L'addition est la première opération formellement enseignée à l'école (CP-CE1), mais sa didactique est plus complexe qu'il n'y paraît. Le CRPE évalue votre capacité à distinguer les différents sens de l'addition (réunion vs ajout), analyser des erreurs d'élèves et concevoir des progressions s'appuyant sur la manipulation et le calcul réfléchi avant l'algorithme.",
    oneLiner:
      "L'addition recouvre plusieurs structures de problèmes (Vergnaud, champ conceptuel des structures additives) : la réunion (combiner deux quantités), l'ajout (augmenter une quantité), et la comparaison additive (trouver un écart). Enseigner l'addition, c'est construire le sens de ces situations AVANT de mécaniser l'algorithme posé. La commutativité (a + b = b + a) et l'associativité ((a + b) + c = a + (b + c)) sont des propriétés à faire découvrir, pas à faire mémoriser sans sens.",
    exampleCorrect: {
      sentence:
        "Un enseignant de CP propose d'abord des problèmes de 'réunion' (« J'ai 4 billes rouges et 3 billes bleues. Combien de billes en tout ? ») avec des jetons, avant d'introduire la notation symbolique 4 + 3 = 7.",
      explanation:
        "La progression est correcte. Elle suit le schéma enactif → iconique → symbolique de Bruner : manipulation d'objets réels (jetons) → schématisation (dessin, ardoise) → symbolisation (écriture mathématique). En passant d'abord par la manipulation, l'élève construit le SENS de l'opération (réunir deux collections) avant d'en apprendre la notation. Cette approche est recommandée par Éduscol et s'inscrit dans la tradition constructiviste (Piaget) et dans les travaux de Vergnaud sur les structures additives.",
    },
    exampleWrong: {
      sentence:
        "Apprendre les tables d'addition par cœur dès le début du CP est la méthode la plus efficace pour maîtriser l'addition.",
      explanation:
        "FAUX. Mémoriser les tables sans avoir construit le sens de l'addition conduit à un savoir fragile : l'élève récite mais ne comprend pas. Si la mémorisation automatisée des faits additifs est bien un objectif (fin de CE1 selon Éduscol), elle doit être PRÉCÉDÉE d'activités de découverte et de compréhension. Les recherches en didactique des mathématiques (Brissiaud, Baruk) montrent que la construction du sens de la décomposition des nombres (décompositions de 10 : 3+7, 4+6, 5+5…) et des stratégies de calcul réfléchi (compter à partir du plus grand, doubler, compléter à 10) favorise une mémorisation plus solide et durable que la répétition mécanique.",
    },
    mainTrap:
      "Penser que l'addition et la soustraction sont deux opérations indépendantes à enseigner séparément. Dans le champ conceptuel des structures additives de Vergnaud, addition et soustraction sont profondément liées : résoudre '7 - 3 = ?' revient à trouver le complément dans '3 + ? = 7'. Cette réversibilité doit être exploitée pédagogiquement : l'enseignant qui travaille l'addition doit aussi préparer la soustraction, en proposant des problèmes à 'inconnue variable' (nombre de départ, ajout, ou total inconnus).",
    quiz: [
      {
        sentence:
          "Le problème « Paul a 5 billes. Il en gagne 3 de plus. Combien en a-t-il maintenant ? » relève d'une structure d'ajout, non de réunion.",
        isCorrect: true,
        explanation:
          "Exact. La structure d'AJOUT (ou transformation positive) décrit un état initial qui augmente dans le temps (état initial 5 → transformation +3 → état final recherché). La structure de RÉUNION combine simultanément deux parties en un tout (2 collections séparées au même moment). Les programmes Éduscol demandent de travailler les deux types dès le CP, car ils ne mobilisent pas les mêmes schèmes représentatifs chez l'élève. Un élève qui ne réussit qu'un type a une compréhension partielle de l'addition.",
      },
      {
        sentence:
          "La commutativité de l'addition (5 + 3 = 3 + 5) est une propriété que les élèves découvrent naturellement sans enseignement explicite.",
        isCorrect: false,
        explanation:
          "FAUX pour de nombreux élèves. Si certains élèves découvrent intuitivement la commutativité, d'autres ont besoin d'un enseignement explicite. De plus, la commutativité n'est pas évidente dans tous les contextes : pour la réunion (je réunis 5 billes rouges et 3 bleues = je réunis 3 bleues et 5 rouges → vrai), elle l'est moins dans les situations d'ajout (« j'avais 5 billes, j'en ai gagné 3 » ≠ « j'avais 3 billes, j'en ai gagné 5 »). L'enseignant doit faire manipuler et discuter pour que la propriété soit réellement comprise, pas seulement connue comme règle.",
      },
      {
        sentence:
          "La stratégie « compter à partir du plus grand nombre » (pour 3 + 8, compter à partir de 8 : 9, 10, 11) est une stratégie de calcul réfléchi à enseigner explicitement.",
        isCorrect: true,
        explanation:
          "Exact. C'est la stratégie du 'max' ou 'counting on from larger' : au lieu de compter depuis 1, l'élève part du plus grand addend. Elle réduit le risque d'erreur de comptage et prépare à la mémorisation automatisée. Éduscol recommande d'enseigner explicitement plusieurs stratégies de calcul réfléchi : compter à partir du plus grand, utiliser les doubles (6+6, 7+7…), compléter à la dizaine (8+3 = 8+2+1 = 11), utiliser la commutativité. Ces stratégies sont les fondations du calcul mental efficace.",
      },
      {
        sentence:
          "L'algorithme de l'addition posée (en colonnes) doit être introduit dès le début du CP pour que les élèves s'habituent à l'écriture mathématique.",
        isCorrect: false,
        explanation:
          "FAUX. L'algorithme posé est abstrait et loin du sens des nombres. Introduit trop tôt, il empêche la construction du sens de l'opération. Éduscol recommande une progression : (1) manipulation et résolution de problèmes → (2) calcul en ligne → (3) calcul mental → (4) algorithme posé (réservé au CE1-CE2 pour les grands nombres). L'introduction prématurée de l'algorithme conduit des élèves à calculer mécaniquement sans sens, incapables de détecter des erreurs grossières (ex : 34 + 28 = 512, calculé par juxtaposition 3+2=5, 4+8=12).",
      },
      {
        sentence:
          "Dans le champ conceptuel des structures additives de Vergnaud, un problème peut nécessiter une addition même si son énoncé contient le mot 'différence'.",
        isCorrect: true,
        explanation:
          "Exact. Vergnaud montre que le mot employé dans l'énoncé ne détermine pas l'opération à effectuer. Un problème de comparaison (« Léa a 12 ans, son frère en a 9 de moins. Quel est leur écart d'âge ? ») peut se résoudre par soustraction (12 − 9) ou par addition avec inconnue (9 + ? = 12). Inversement, certains problèmes avec le mot 'ajouter' se résolvent par soustraction (« j'avais 5 billes, j'en ai maintenant 8, combien en ai-je ajouté ? »). Cette flexibilité est un marqueur de la compréhension profonde des structures additives.",
      },
    ],
  },
};
