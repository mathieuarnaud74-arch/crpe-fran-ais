import type { Fiche } from "@/features/fiches/types";

export const didactiquePreparerSeanceMathsOperatoire: Fiche = {
  id: "didactique-preparer-seance-maths-operatoire",
  slug: "preparer-seance-maths-de-a-a-z",
  title: "Préparer une séance de maths : de l'objectif à la trace écrite",
  domaine: "didactique_maths",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "préparation de séance",
    "objectif d'apprentissage",
    "progression",
    "situation problème",
    "institutionnalisation",
    "trace écrite",
    "variables didactiques",
    "Éduscol",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "didactique-institutionnalisation-sprint",
    "didactique-situations-recherche-sprint",
    "didactique-brousseau-contrat-situations-sprint",
    "didactique-concevoir-sequence-operatoire",
    "didactique-variables-didactiques-reference",
  ],
  exercicesAssocies: [
    "math_didactique_resolution_problemes",
    "math_didactique_variables",
  ],
  content: {
    model: "operatoire",
    startingQuestion:
      "Je dois préparer une séance de mathématiques : par où commencer et comment structurer la préparation ?",
    decisionTree: {
      type: "question",
      text: "L'objectif d'apprentissage de la séance est-il clairement identifié (en termes de SAVOIR, pas d'activité) ?",
      yes: {
        type: "question",
        text: "S'agit-il d'une séance de DÉCOUVERTE/CONSTRUCTION d'un nouveau savoir ou d'une séance d'ENTRAÎNEMENT/CONSOLIDATION ?",
        yes: {
          type: "question",
          text: "Séance de découverte — avez-vous une situation-problème (ou situation de recherche) déclenchante ?",
          yes: {
            type: "leaf",
            label: "Séance de découverte — structurer en 4 temps",
            rule: "Organiser la séance en 4 phases : (1) DÉVOLUTION — présenter la situation, s'assurer que tous l'ont comprise sans donner la solution ; (2) RECHERCHE — les élèves travaillent (seuls/binômes/groupes), l'enseignant observe les stratégies sans valider prématurément ; (3) MISE EN COMMUN / VALIDATION — confronter les stratégies, discuter, valider collectivement ; (4) INSTITUTIONNALISATION — formuler le savoir, écrire la trace référence. Prévoir les variables didactiques pour adapter la difficulté en cours de séance.",
            example:
              "Découverte du théorème de Pythagore en 4ème : déclenchement avec des carreaux (construire un carré sur chaque côté), recherche de la relation entre les surfaces, mise en commun et validation, institutionnalisation : « Dans un triangle rectangle, le carré de l'hypoténuse est égal à la somme des carrés des deux autres côtés. »",
          },
          no: {
            type: "leaf",
            label: "Chercher une situation-problème d'abord",
            rule: "Sans situation-problème déclenchante, une séance de découverte risque de se réduire à un cours magistral peu efficace. Trouver ou concevoir un problème : accessible (les élèves peuvent s'engager), résistant (non trivial), lié au savoir visé, et permettant des stratégies variées. Consulter les ressources Éduscol, les manuels agréés, les banques de problèmes IREM.",
            example:
              "Pour introduire les fractions : problème du partage équitable (4 enfants se partagent 3 sandwichs — comment faire ?). Le problème est accessible, résistant (on ne peut pas donner un sandwich entier), et conduit naturellement à 3/4.",
          },
        },
        no: {
          type: "question",
          text: "Séance d'entraînement — avez-vous identifié les erreurs types à prévenir pour ce savoir ?",
          yes: {
            type: "leaf",
            label: "Séance d'entraînement — progresser de simple à complexe",
            rule: "Organiser en 3 niveaux : (1) CONSOLIDATION — exercices proches de la situation de découverte, même structure, contexte familier ; (2) TRANSFERT — exercices dans un contexte nouveau mais même structure mathématique ; (3) ENRICHISSEMENT — exercices plus complexes, transversaux, ou exercices d'analyse d'erreurs. Inclure des exercices ciblant les erreurs identifiées. Prévoir une différenciation (aide pour certains, tâche complexe pour d'autres).",
            example:
              "Entraînement sur les fractions équivalentes : (1) 1/2 = ?/4 (consolidation) ; (2) appliquer dans un problème de prix (transfert) ; (3) « Arthur dit que 2/3 > 3/4, a-t-il raison ? » (analyse d'erreur, enrichissement).",
          },
          no: {
            type: "leaf",
            label: "Identifier les erreurs types d'abord",
            rule: "Avant de choisir les exercices, identifier les erreurs prévisibles en consultant : les fiches d'analyse d'erreurs Éduscol, la recherche sur les obstacles épistémologiques liés au savoir visé, ses propres observations de classes. Les exercices d'entraînement doivent cibler ces erreurs spécifiquement pour qu'elles soient prévenues ou détectées.",
            example:
              "Pour les fractions : erreurs typiques = traiter le numérateur et dénominateur comme des entiers indépendants (1/2 + 1/3 = 2/5), ou inverser numérateur/dénominateur. Prévoir des exercices qui confrontent ces erreurs.",
          },
        },
      },
      no: {
        type: "leaf",
        label: "Définir l'objectif d'abord — en lien avec les programmes",
        rule: "Sans objectif clair, la préparation est impossible. Formuler l'objectif en termes de SAVOIR (et non d'activité) : « À la fin de la séance, les élèves savent/peuvent… ». Vérifier dans les programmes Éduscol que cet objectif correspond bien au cycle et à la période. Un objectif d'activité (« les élèves vont manipuler des figures ») ne suffit pas : il faut identifier quel savoir mathématique précis est visé.",
        example:
          "Objectif d'activité (insuffisant) : « les élèves vont faire des exercices sur les fractions ». Objectif de savoir (correct) : « les élèves savent comparer deux fractions en utilisant la réduction au même dénominateur » (cycle 3, CM2). L'objectif de savoir oriente le choix de la situation et de la trace écrite.",
      },
    },
    workedExample: {
      phrase:
        "Préparer une séance de découverte de la multiplication en CE1 (cycle 2) — objectif : comprendre la multiplication comme addition itérée.",
      steps: [
        "Étape 1 — Identifier l'objectif de savoir (en lien Éduscol cycle 2) : « Comprendre que la multiplication est un raccourci pour une addition d'égaux termes répétés : 3 × 4 = 4 + 4 + 4. »",
        "Étape 2 — Choisir la situation déclenchante : « La maîtresse a 4 boîtes. Dans chaque boîte, il y a 3 crayons. Combien de crayons en tout ? » — problème accessible (CP/CE1 : dénombrement), résistant (on ne peut pas faire bêtement 4 + 3), lié au savoir visé.",
        "Étape 3 — Identifier les variables didactiques : nombre de boîtes (4), nombre d'objets par boîte (3), matériel disponible (cubes, jetons, dessin). Prévoir : si trop facile, augmenter les nombres ; si trop difficile, donner des jetons pour représenter concrètement.",
        "Étape 4 — Planifier les 4 phases : (1) Dévolution (5 min) : lire le problème, reformuler, s'assurer que tous comprennent la question ; (2) Recherche (10 min) : individuel puis binômes — l'enseignant observe les stratégies (dessin, addition répétée, comptage) sans valider ; (3) Mise en commun (10 min) : un élève présente sa méthode addition (3+3+3+3=12), l'enseignant note au tableau les deux écritures 3+3+3+3 et 4×3 ; (4) Institutionnalisation (5 min) : « 4 fois 3, c'est 3+3+3+3 = 12. On écrit 4 × 3. On dit 4 fois 3. » Trace référence dans le cahier.",
        "Étape 5 — Préparer la trace écrite institutionnalisée : « 4 × 3 = 3 + 3 + 3 + 3 = 12. La multiplication est un raccourci pour une addition de termes égaux. » + exemple illustré.",
        "Étape 6 — Anticiper les erreurs : confusion entre 4 × 3 et 4 + 3 (vérifier avec la situation concrète), difficulté à faire le lien entre le problème et l'écriture symbolique (rester au concret plus longtemps).",
      ],
    },
    quiz: [
      {
        sentence:
          "L'objectif d'une séance de mathématiques doit être formulé en termes d'activité : « les élèves vont résoudre des problèmes de multiplication ».",
        isCorrect: false,
        explanation:
          "FAUX. Un objectif d'activité décrit ce que les élèves font, pas ce qu'ils apprennent. Un objectif pédagogique correct décrit le SAVOIR visé : « À la fin de la séance, les élèves comprennent que a × b = b + b + … (a fois) ». Cette formulation permet à l'enseignant de vérifier si l'objectif est atteint et guide le choix de la situation, des exercices, et de la trace écrite à institutionnaliser.",
      },
      {
        sentence:
          "Pendant la phase de recherche d'une situation-problème, l'enseignant ne doit pas interagir avec les élèves pour ne pas rompre la situation a-didactique.",
        isCorrect: false,
        explanation:
          "FAUX (nuance importante). L'enseignant peut et doit interagir pendant la recherche, mais en veillant à NE PAS VALIDER prématurément ni fournir la solution. Son rôle est d'observer les stratégies, de relancer les élèves bloqués par des questions ouvertes (« As-tu essayé avec des dessins ? », « Qu'est-ce qui te pose problème ? »), et d'ajuster les variables didactiques si la situation est trop difficile ou trop facile. Rester totalement passif prive les élèves d'un étayage nécessaire.",
      },
      {
        sentence:
          "La trace écrite doit être produite avec les élèves lors de la phase d'institutionnalisation, pas dictée uniquement par l'enseignant.",
        isCorrect: true,
        explanation:
          "VRAI dans les bonnes pratiques actuelles. Une trace co-construite (élèves proposent des formulations, l'enseignant guide vers le vocabulaire précis) est mieux mémorisée et mieux comprise qu'une trace dictée. Cela dit, l'enseignant garde la responsabilité de la formulation finale : il valide, corrige les imprécisions, et garantit que le savoir est correctement énoncé dans le langage mathématique de la discipline. La co-construction ne signifie pas que tout ce que disent les élèves est retenu tel quel.",
      },
      {
        sentence:
          "Dans une séance d'entraînement, tous les élèves doivent réaliser exactement les mêmes exercices pour garantir l'équité.",
        isCorrect: false,
        explanation:
          "FAUX. L'équité pédagogique ne signifie pas l'uniformité des tâches. Une différenciation pédagogique bien menée permet à chaque élève de progresser depuis son niveau : exercices de consolidation pour les élèves en difficulté, exercices de transfert pour les élèves à l'aise, tâches enrichissantes (problèmes ouverts, généralisation) pour les élèves avancés. Ce que garantit l'équité, c'est que tous visent le même objectif fondamental du programme — pas qu'ils empruntent le même chemin.",
      },
      {
        sentence:
          "Les variables didactiques d'une situation doivent être fixées avant la séance et ne peuvent pas être modifiées pendant le cours.",
        isCorrect: false,
        explanation:
          "FAUX. Anticiper les variables didactiques dans la préparation est important (pour avoir des « plans B »), mais l'enseignant ajuste en temps réel selon ce qu'il observe. Si la situation est trop difficile pour la plupart, réduire le nombre ou la complexité (variable didactique de complexité numérique). Si elle est trop facile, augmenter. C'est l'ajustement en direct des variables didactiques qui permet à la situation d'exercer sa résistance optimale selon le groupe-classe réel, et non le groupe-classe imaginé lors de la préparation.",
      },
    ],
    didacticNote:
      "La préparation d'une séance de mathématiques est évaluée à l'oral du CRPE à travers l'épreuve de leçon : le jury demande souvent de justifier les choix didactiques (pourquoi cette situation ? quelles variables didactiques ? comment gérez-vous la mise en commun ?). Il est essentiel de maîtriser le vocabulaire précis : objectif de savoir (pas d'activité), situation a-didactique, dévolution, variables didactiques, institutionnalisation, trace écrite. Ces termes issus de la théorie des situations de Brousseau font partie du cadre théorique de référence des programmes et du CRPE.",
  },
};
