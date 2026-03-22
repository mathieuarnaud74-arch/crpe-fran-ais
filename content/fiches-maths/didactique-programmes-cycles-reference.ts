import type { Fiche } from "@/features/fiches/types";

export const didactiqueProgrammesCyclesReference: Fiche = {
  id: "didactique-programmes-cycles-reference",
  slug: "programmes-maths-cycles-reperes",
  title: "Programmes de maths cycles 1-2-3 : repères clés",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_maths",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "programmes",
    "cycles",
    "progression",
    "attendus de fin de cycle",
    "compétences",
    "socle commun",
    "Éduscol",
  ],
  notionsLiees: [
    "didactique-numeration-cycles-sprint",
    "didactique-resolution-problemes-sprint",
    "didactique-geometrie-manipulation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Connaître les grandes lignes des programmes de mathématiques des cycles 1, 2 et 3 est indispensable au CRPE. Cette fiche synthétise les repères essentiels : thèmes abordés à chaque cycle, attendus de fin de cycle, et principes didactiques transversaux (résolution de problèmes, calcul mental, manipulation). Les programmes actuels (2020, ajustés 2023) structurent les mathématiques en quatre domaines au primaire : nombres et calcul, grandeurs et mesures, espace et géométrie, organisation et gestion de données (à partir du cycle 2).",
    sections: [
      {
        id: "cycle-1",
        title: "Cycle 1 — Maternelle (PS-MS-GS)",
        badge: "Cycle 1",
        blocks: [
          {
            kind: "rule",
            content:
              "En cycle 1, les mathématiques relèvent du domaine « Construire les premiers outils pour structurer sa pensée ». Deux sous-domaines : « Découvrir les nombres et leurs utilisations » et « Explorer des formes, des grandeurs, des suites organisées ». L'approche est sensorielle et manipulatoire : le jeu, la manipulation d'objets et les situations vécues sont les vecteurs d'apprentissage.",
          },
          {
            kind: "table",
            caption: "Attendus de fin de cycle 1 en mathématiques",
            headers: ["Sous-domaine", "Attendus principaux"],
            rows: [
              [
                "Nombres",
                "Dénombrer des collections jusqu'à 10 (voire au-delà en GS). Dire la suite des nombres jusqu'à 30. Lire et écrire les nombres jusqu'à 10. Résoudre des problèmes de quantités (ajouter, enlever).",
              ],
              [
                "Formes et grandeurs",
                "Reconnaître et nommer quelques formes planes (carré, triangle, rond, rectangle) et solides (cube, boule). Classer des objets selon un critère de taille, masse, contenance. Reproduire un assemblage de formes.",
              ],
            ],
          },
          {
            kind: "tip",
            text: "En cycle 1, le dénombrement (associer un nombre à une collection) est l'enjeu central. L'élève construit progressivement les principes du comptage : correspondance terme à terme, ordre stable, cardinalité (le dernier nombre dit désigne la quantité totale).",
          },
        ],
      },
      {
        id: "cycle-2",
        title: "Cycle 2 — CP-CE1-CE2",
        badge: "Cycle 2",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cycle 2 est le cycle des apprentissages fondamentaux en mathématiques. Les quatre domaines se structurent : nombres et calcul (central), grandeurs et mesures, espace et géométrie. La résolution de problèmes est le fil directeur de tout l'enseignement. Le calcul mental quotidien est obligatoire.",
          },
          {
            kind: "table",
            caption: "Attendus de fin de cycle 2 en mathématiques",
            headers: ["Domaine", "Attendus principaux"],
            rows: [
              [
                "Nombres et calcul",
                "Comprendre et utiliser les nombres entiers (jusqu'à 1 000 au CE2). Nommer, lire, écrire, représenter des nombres. Calculer avec des nombres entiers (addition, soustraction, multiplication). Résoudre des problèmes en utilisant les quatre opérations.",
              ],
              [
                "Grandeurs et mesures",
                "Comparer, estimer, mesurer des longueurs, masses, contenances, durées, prix. Utiliser le système métrique pour les longueurs. Résoudre des problèmes impliquant des grandeurs.",
              ],
              [
                "Espace et géométrie",
                "Se repérer dans l'espace. Reconnaître, nommer, décrire, reproduire des figures simples (triangle, rectangle, carré, cercle). Utiliser la règle et l'équerre. Reconnaître et utiliser la symétrie axiale.",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Division au cycle 2",
                explanation:
                  "La division posée n'est pas au programme du cycle 2. Cependant, le sens de la division (partage, groupement) est travaillé dès le CE1 à travers la résolution de problèmes. L'algorithme posé est introduit en cycle 3.",
              },
            ],
          },
        ],
      },
      {
        id: "cycle-3",
        title: "Cycle 3 — CM1-CM2-6ème",
        badge: "Cycle 3",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cycle 3 est le cycle de consolidation. Les quatre domaines se complètent d'un quatrième : organisation et gestion de données. Les nombres s'étendent aux fractions et aux décimaux. La géométrie passe de la perception aux propriétés. Le raisonnement prend une place croissante.",
          },
          {
            kind: "table",
            caption: "Attendus de fin de cycle 3 en mathématiques",
            headers: ["Domaine", "Attendus principaux"],
            rows: [
              [
                "Nombres et calcul",
                "Utiliser et représenter les grands nombres entiers, les fractions simples, les nombres décimaux. Calculer avec des nombres décimaux. Résoudre des problèmes à plusieurs étapes. Maîtriser les quatre opérations posées (y compris la division).",
              ],
              [
                "Grandeurs et mesures",
                "Calculer le périmètre et l'aire de figures simples. Convertir des unités. Résoudre des problèmes de grandeurs composées (vitesse, débit). Utiliser les formules d'aires et de volumes.",
              ],
              [
                "Espace et géométrie",
                "Reconnaître, décrire et construire des figures à l'aide de propriétés. Utiliser les notions de parallélisme et de perpendicularité. Connaître les propriétés des triangles et quadrilatères. Construire le symétrique d'une figure. Se repérer sur une droite graduée, dans le plan (coordonnées).",
              ],
              [
                "Organisation de données",
                "Lire et interpréter des tableaux et graphiques. Calculer une moyenne. Résoudre des problèmes de proportionnalité (coefficient, tableau, règle de trois).",
              ],
            ],
          },
        ],
      },
      {
        id: "principes-transversaux",
        title: "Principes didactiques transversaux",
        badge: "Transversal",
        blocks: [
          {
            kind: "rule",
            content:
              "Les programmes identifient six compétences mathématiques travaillées à tous les cycles : chercher, modéliser, représenter, raisonner, calculer, communiquer. Trois principes didactiques traversent les trois cycles : (1) la résolution de problèmes comme moteur de l'apprentissage (pas comme application finale), (2) le calcul mental quotidien (automatismes), (3) la manipulation puis la représentation puis l'abstraction (concret → imagé → abstrait).",
          },
          {
            kind: "table",
            caption: "Les six compétences mathématiques des programmes",
            headers: ["Compétence", "Description"],
            rows: [
              ["Chercher", "S'engager dans une démarche, essayer, tester, conjecturer."],
              ["Modéliser", "Traduire une situation réelle en langage mathématique (schéma, équation)."],
              ["Représenter", "Utiliser des représentations variées (dessin, schéma, tableau, graphique)."],
              ["Raisonner", "Justifier ses démarches, argumenter, démontrer (progressivement)."],
              ["Calculer", "Calcul mental, calcul posé, calcul instrumenté (calculatrice en cycle 3)."],
              ["Communiquer", "Exprimer sa démarche à l'oral et à l'écrit, utiliser un vocabulaire mathématique précis."],
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, on peut vous demander de situer une activité dans un cycle et de justifier son adéquation avec les attendus du programme. Toujours vérifier la cohérence entre le contenu (ex : fractions → cycle 3) et les compétences visées.",
          },
        ],
      },
    ],
    keyPoints: [
      "Cycle 1 : manipulation sensorielle, dénombrement jusqu'à 10, formes simples. Pas de numération positionnelle.",
      "Cycle 2 : apprentissages fondamentaux. Entiers jusqu'à 1 000, addition/soustraction/multiplication posées, géométrie perceptive → instrumentée, mesures simples. Division posée non au programme.",
      "Cycle 3 : consolidation. Fractions, décimaux, division posée, géométrie des propriétés, proportionnalité, organisation de données.",
      "La résolution de problèmes est le fil directeur de l'enseignement des maths à tous les cycles, pas une application finale.",
      "Progression concret → imagé → abstrait à respecter pour chaque notion nouvelle.",
      "Six compétences transversales : chercher, modéliser, représenter, raisonner, calculer, communiquer.",
    ],
    quiz: [
      {
        sentence:
          "La division posée fait partie des attendus de fin de cycle 2 (CE2).",
        isCorrect: false,
        explanation:
          "FAUX. La division posée est un attendu de cycle 3 (CM1-CM2). Au cycle 2, le sens de la division est travaillé (problèmes de partage et de groupement) mais l'algorithme posé n'est pas enseigné.",
      },
      {
        sentence:
          "Les fractions simples (1/2, 1/4, 3/4) sont introduites dès le cycle 2 dans les programmes actuels.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes 2020 ajustés introduisent les fractions simples (demi, quart, tiers) dès le CE1-CE2 dans le cadre de la mesure de grandeurs et du partage. L'étude systématique des fractions (comparaison, opérations) relève du cycle 3.",
      },
      {
        sentence:
          "La proportionnalité est un thème exclusivement réservé au cycle 3.",
        isCorrect: true,
        explanation:
          "VRAI. La proportionnalité (reconnaître une situation de proportionnalité, utiliser un coefficient, tableau de proportionnalité) est introduite en cycle 3. Au cycle 2, les élèves résolvent des problèmes multiplicatifs simples qui préparent la proportionnalité.",
      },
      {
        sentence:
          "En cycle 1, les élèves doivent savoir écrire tous les nombres jusqu'à 30.",
        isCorrect: false,
        explanation:
          "FAUX. En fin de cycle 1, les élèves doivent savoir lire et écrire les nombres jusqu'à 10. La suite orale est attendue jusqu'à 30, mais l'écriture chiffrée au-delà de 10 n'est pas un attendu de fin de maternelle.",
      },
      {
        sentence:
          "La résolution de problèmes doit être le point de départ de l'apprentissage mathématique, pas une application finale selon les programmes.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes sont explicites : la résolution de problèmes est le moteur de l'activité mathématique. Les notions et techniques sont introduites pour résoudre des problèmes, pas l'inverse. C'est un principe fondamental à connaître pour le CRPE.",
      },
    ],
  },
};
