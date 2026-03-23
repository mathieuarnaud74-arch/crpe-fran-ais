import type { Fiche } from "@/features/fiches/types";

export const grandeursResolutionProblemesReference: Fiche = {
  id: "grandeurs-resolution-problemes-reference",
  slug: "resolution-problemes-strategies-modelisation",
  title: "Résolution de problèmes : stratégies et modélisation",
  domaine: "grandeurs_mesures",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "résolution de problèmes",
    "modélisation",
    "schéma",
    "grandeurs",
    "proportionnalité",
    "raisonnement",
    "étapes",
    "stratégies",
  ],
  notionsLiees: [
    "nombres-proportionnalite-reference",
    "nombres-probleme-proportionnalite-operatoire",
    "grandeurs-vitesse-temps-distance-operatoire",
    "grandeurs-echelles-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La résolution de problèmes est au cœur de l'enseignement des mathématiques au CRPE. Cette fiche présente les grandes stratégies de résolution, les étapes de modélisation, les types de problèmes courants et les erreurs fréquentes à anticiper. Elle s'appuie sur les travaux de Polya, Vergnaud et les recommandations Éduscol.",
    sections: [
      {
        id: "demarche-polya",
        title: "La démarche de Polya en 4 étapes",
        badge: "Méthodologie",
        blocks: [
          {
            kind: "rule",
            content:
              "George Polya (1945) propose une démarche universelle en 4 étapes : (1) Comprendre le problème — identifier les données, l'inconnue et les conditions. (2) Concevoir un plan — choisir une stratégie (schéma, équation, tableau, essai-erreur…). (3) Exécuter le plan — appliquer la stratégie en vérifiant chaque étape. (4) Examiner la solution — vérifier la cohérence du résultat avec l'énoncé.",
          },
          {
            kind: "table",
            caption: "Les 4 étapes de Polya appliquées",
            headers: ["Étape", "Question-clé", "Action concrète"],
            rows: [
              [
                "1. Comprendre",
                "Qu'est-ce qu'on cherche ? Qu'est-ce qu'on sait ?",
                "Souligner les données, reformuler la question, dessiner un croquis",
              ],
              [
                "2. Planifier",
                "Quelle stratégie utiliser ?",
                "Choisir : schéma, tableau, calcul direct, équation, réduction à un problème connu",
              ],
              [
                "3. Exécuter",
                "Chaque étape est-elle justifiée ?",
                "Poser le calcul, convertir les unités, vérifier les intermédiaires",
              ],
              [
                "4. Vérifier",
                "Le résultat a-t-il du sens ?",
                "Ordre de grandeur, unité cohérente, relecture de l'énoncé",
              ],
            ],
          },
        ],
      },
      {
        id: "types-problemes",
        title: "Typologie des problèmes au CRPE",
        badge: "Classification",
        blocks: [
          {
            kind: "rule",
            content:
              "Les problèmes du CRPE mobilisent principalement cinq grandes familles : (1) Problèmes additifs et soustractifs — recherche d'un état, d'une transformation ou d'une comparaison. (2) Problèmes multiplicatifs — produit cartésien, groupement, partage. (3) Problèmes de proportionnalité — 4e proportionnelle, pourcentages, échelles, vitesse. (4) Problèmes de grandeurs et mesures — aires, volumes, conversions, durées. (5) Problèmes de géométrie — constructions, calculs d'angles, applications de théorèmes.",
          },
          {
            kind: "table",
            caption: "Familles de problèmes et stratégies privilégiées",
            headers: ["Famille", "Exemples", "Stratégie principale"],
            rows: [
              [
                "Additif / soustractif",
                "Recherche d'un complément, d'un écart",
                "Schéma en barres, droite numérique",
              ],
              [
                "Multiplicatif",
                "Combien de façons d'associer…, partages égaux",
                "Tableau, arbre, regroupement",
              ],
              [
                "Proportionnalité",
                "Recette pour 8 personnes, vitesse, pourcentages",
                "Tableau de proportionnalité, coefficient, produit en croix",
              ],
              [
                "Grandeurs et mesures",
                "Aire d'un terrain, volume d'un réservoir, durée d'un trajet",
                "Conversion préalable, formule, décomposition en figures simples",
              ],
              [
                "Géométrie",
                "Périmètre composé, angle dans un triangle, application de Pythagore",
                "Figure annotée, théorème, calcul pas à pas",
              ],
            ],
          },
        ],
      },
      {
        id: "strategies-resolution",
        title: "Les 8 stratégies de résolution essentielles",
        badge: "Outils",
        blocks: [
          {
            kind: "rule",
            content:
              "Voici les stratégies les plus efficaces et les plus fréquemment attendues aux épreuves du CRPE :",
          },
          {
            kind: "table",
            caption: "Stratégies de résolution",
            headers: ["Stratégie", "Principe", "Quand l'utiliser"],
            rows: [
              [
                "Schéma / dessin",
                "Représenter visuellement les données",
                "Problèmes géométriques, de déplacement, de partage",
              ],
              [
                "Tableau",
                "Organiser les données en lignes et colonnes",
                "Proportionnalité, combinatoire, conversions",
              ],
              [
                "Équation",
                "Traduire l'énoncé en relation algébrique",
                "Problèmes avec une inconnue, mise en équation explicite",
              ],
              [
                "Essai-erreur organisé",
                "Tester des valeurs et ajuster",
                "Problèmes d'optimisation, de numération",
              ],
              [
                "Raisonnement à rebours",
                "Partir du résultat pour remonter aux données",
                "Problèmes « on obtient… quel était le nombre initial ? »",
              ],
              [
                "Décomposition",
                "Découper en sous-problèmes plus simples",
                "Figures complexes, problèmes à plusieurs étapes",
              ],
              [
                "Analogie / réduction",
                "Ramener à un problème connu plus simple",
                "Problèmes de même structure avec des nombres plus accessibles",
              ],
              [
                "Schéma en barres (Singapour)",
                "Représenter les quantités par des barres proportionnelles",
                "Problèmes additifs, multiplicatifs, comparaisons",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Le schéma en barres (méthode de Singapour) est particulièrement recommandé par Éduscol au cycle 2 et au cycle 3. Il permet de visualiser les relations entre quantités sans passer immédiatement par le calcul.",
          },
        ],
      },
      {
        id: "modelisation",
        title: "De l'énoncé au modèle mathématique",
        badge: "Modélisation",
        blocks: [
          {
            kind: "rule",
            content:
              "La modélisation consiste à passer du monde réel (l'énoncé) au monde mathématique (le calcul), puis à interpréter le résultat dans le contexte. Ce va-et-vient est au cœur des compétences attendues au CRPE. Les trois phases sont : (1) Mathématiser — traduire l'énoncé en objets mathématiques (nombres, figures, relations). (2) Calculer — appliquer les outils mathématiques appropriés. (3) Interpréter — donner du sens au résultat et vérifier sa cohérence.",
          },
          {
            kind: "example",
            sentence:
              "Énoncé : « Un jardinier veut clôturer un terrain rectangulaire de 25 m sur 18 m. Le grillage coûte 12,50 € le mètre. Quel est le coût total ? » → Mathématiser : P = 2 × (25 + 18) = 86 m, coût = 86 × 12,50 = 1 075 €.",
            annotation:
              "Interpréter : le coût est raisonnable pour 86 m de grillage. Si on avait trouvé 10 750 €, il faudrait vérifier (erreur de virgule possible).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "L'erreur d'interprétation finale",
                explanation:
                  "Un résultat décimal ou fractionnaire doit parfois être arrondi selon le contexte. Par exemple, « il faut 3,2 cars pour transporter 160 élèves à raison de 50 places par car » → la réponse est 4 cars (et non 3,2). L'arrondi par défaut est ici un arrondi par excès.",
              },
              {
                label: "Oublier les conversions d'unités",
                explanation:
                  "Avant tout calcul de grandeur, s'assurer que toutes les données sont dans la même unité. Mélanger cm et m dans un calcul d'aire donne un résultat aberrant.",
              },
            ],
          },
        ],
      },
      {
        id: "problemes-ouverts",
        title: "Problèmes ouverts et problèmes pour chercher",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Un problème ouvert (ou « problème pour chercher ») n'a pas de solution immédiate par application directe d'une procédure connue. Il invite à la recherche, au tâtonnement et à la justification. Caractéristiques : énoncé court, pas de question intermédiaire, plusieurs démarches possibles, la validation vient du raisonnement (et non de l'autorité du maître).",
          },
          {
            kind: "example",
            sentence:
              "« Avec les chiffres 1, 2, 3 et 4 (utilisés une seule fois chacun), combien de nombres de 4 chiffres peut-on écrire ? » → 4 × 3 × 2 × 1 = 24 nombres possibles.",
            annotation:
              "Stratégie : dénombrement systématique. Organiser sa recherche (arbre, liste ordonnée) pour ne rien oublier.",
          },
          {
            kind: "tip",
            text: "Au CRPE, les problèmes ouverts apparaissent souvent dans la partie didactique. On vous demande d'analyser la tâche de l'élève, d'anticiper les stratégies possibles ou d'identifier les variables didactiques du problème.",
          },
        ],
      },
      {
        id: "erreurs-frequentes",
        title: "Erreurs fréquentes et ordre de grandeur",
        badge: "Vigilance",
        blocks: [
          {
            kind: "table",
            caption: "Erreurs classiques en résolution de problèmes",
            headers: ["Type d'erreur", "Exemple", "Comment l'éviter"],
            rows: [
              [
                "Opération automatique",
                "Voir « de plus » et additionner, alors que le problème est soustractif",
                "Reformuler le problème avec ses propres mots avant de calculer",
              ],
              [
                "Oubli d'une étape",
                "Calculer l'aire mais oublier de convertir le résultat dans l'unité demandée",
                "Relire la question finale après chaque calcul",
              ],
              [
                "Mauvaise conversion",
                "Confondre 1 m² = 100 cm² (faux : 1 m² = 10 000 cm²)",
                "Poser le tableau de conversion en m → dm → cm pour les aires",
              ],
              [
                "Résultat sans unité",
                "Répondre « 86 » au lieu de « 86 m »",
                "Toujours accompagner le résultat de son unité",
              ],
              [
                "Absence de vérification",
                "Ne pas contrôler l'ordre de grandeur (un humain de 17 m de haut…)",
                "Estimer le résultat attendu avant de calculer",
              ],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "La démarche de Polya (comprendre → planifier → exécuter → vérifier) structure toute résolution de problème.",
      "Choisir la bonne stratégie (schéma, tableau, équation, essai-erreur…) est aussi important que le calcul lui-même.",
      "La modélisation = mathématiser → calculer → interpréter. Toujours revenir à l'énoncé pour vérifier le sens du résultat.",
      "Convertir les unités AVANT de calculer. Ne jamais mélanger des unités différentes dans une même opération.",
      "L'ordre de grandeur est un outil de vérification puissant : estimer le résultat attendu avant de calculer évite les erreurs grossières.",
      "Un résultat numérique sans interprétation contextuelle (unité, arrondi adapté) ne vaut pas de points au CRPE.",
    ],
    quiz: [
      {
        sentence:
          "La première étape de la démarche de Polya est de choisir une stratégie de résolution.",
        isCorrect: false,
        explanation:
          "FAUX. La première étape est de comprendre le problème (identifier données, inconnue, conditions). Le choix de la stratégie est la deuxième étape (concevoir un plan).",
      },
      {
        sentence:
          "Pour un problème de proportionnalité, le tableau de proportionnalité et le coefficient multiplicatif sont deux stratégies valides.",
        isCorrect: true,
        explanation:
          "VRAI. Le tableau organise les données et permet de repérer le coefficient. Le produit en croix, le passage à l'unité ou le coefficient multiplicatif sont des procédures équivalentes et valides.",
      },
      {
        sentence:
          "Si un calcul donne 3,2 autocars pour transporter des élèves, la réponse correcte est 3 autocars.",
        isCorrect: false,
        explanation:
          "FAUX. Il faut 4 autocars (arrondi par excès). Avec 3 autocars, il manquerait des places. L'interprétation du résultat dans le contexte est essentielle.",
      },
      {
        sentence:
          "Le schéma en barres est une stratégie recommandée par Éduscol pour les problèmes additifs et multiplicatifs.",
        isCorrect: true,
        explanation:
          "VRAI. La méthode de Singapour (schéma en barres) est recommandée par Éduscol aux cycles 2 et 3 pour visualiser les relations entre quantités.",
      },
      {
        sentence:
          "Un problème ouvert est un problème dont la solution est immédiate par application d'une formule connue.",
        isCorrect: false,
        explanation:
          "FAUX. Un problème ouvert n'a pas de solution immédiate par application directe d'une procédure connue. Il invite à la recherche, au tâtonnement et à la justification.",
      },
      {
        sentence:
          "Vérifier l'ordre de grandeur du résultat fait partie de la démarche de résolution.",
        isCorrect: true,
        explanation:
          "VRAI. L'étape 4 de Polya (examiner la solution) inclut la vérification de la cohérence du résultat. L'estimation préalable et le contrôle de l'ordre de grandeur sont des réflexes indispensables.",
      },
    ],
  },
};
