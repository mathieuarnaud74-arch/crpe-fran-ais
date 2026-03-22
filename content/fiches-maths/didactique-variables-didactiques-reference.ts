import type { Fiche } from "@/features/fiches/types";

export const didactiqueVariablesDidactiquesReference: Fiche = {
  id: "didactique-variables-didactiques-reference",
  slug: "variables-didactiques-adapter-difficulte",
  title: "Variables didactiques : adapter la difficulté",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_maths",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "variables didactiques",
    "différenciation",
    "situation-problème",
    "Brousseau",
    "adaptation",
    "complexité",
    "milieu",
  ],
  notionsLiees: [
    "didactique-differenciation-reference",
    "didactique-erreurs-eleves-reference",
    "didactique-resolution-problemes-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Une variable didactique est un élément d'une situation-problème que l'enseignant peut modifier pour changer le niveau de difficulté ou la stratégie de résolution attendue, sans changer le type de savoir visé. Concept central de la théorie des situations de Brousseau (1986), les variables didactiques sont l'outil principal de la différenciation en mathématiques. Cette fiche détaille le concept, illustre par domaine et propose une méthode pour le CRPE.",
    sections: [
      {
        id: "definition",
        title: "Définition et cadre théorique",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "Selon Brousseau, une variable didactique est un paramètre de la situation que l'enseignant peut fixer et dont la modification entraîne un changement dans les procédures de résolution des élèves. Elle se distingue des variables contextuelles (habillage, thème) qui ne modifient pas les stratégies mathématiques. Modifier une variable didactique change la difficulté cognitive du problème ; modifier une variable contextuelle ne change que l'habillage.",
          },
          {
            kind: "table",
            caption: "Variable didactique vs variable contextuelle",
            headers: ["Critère", "Variable didactique", "Variable contextuelle"],
            rows: [
              [
                "Définition",
                "Paramètre dont la modification change la stratégie de résolution",
                "Paramètre dont la modification ne change que l'habillage",
              ],
              [
                "Exemple (addition)",
                "Taille des nombres (23 + 15 vs 237 + 158) → passage avec/sans retenue",
                "Contexte (billes, bonbons, euros) → même opération",
              ],
              [
                "Impact sur l'élève",
                "Change la procédure mobilisée ou la difficulté cognitive",
                "Change la motivation ou la compréhension du contexte, pas la mathématique",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, une question fréquente est : « Identifiez les variables didactiques de cette situation et expliquez l'effet de leur modification sur les procédures des élèves. » Toujours distinguer ce qui modifie la mathématique de ce qui modifie l'habillage.",
          },
        ],
      },
      {
        id: "exemples-numeration-calcul",
        title: "Variables didactiques en numération et calcul",
        badge: "Nombres",
        blocks: [
          {
            kind: "table",
            caption: "Exemples de variables didactiques en numération et calcul",
            headers: ["Situation", "Variable didactique", "Effet de la modification"],
            rows: [
              [
                "Addition posée",
                "Présence/absence de retenue",
                "Sans retenue : procédure directe. Avec retenue : mobilise la compréhension de l'échange dizaine/unité.",
              ],
              [
                "Addition posée",
                "Nombre de chiffres des opérandes",
                "2 chiffres → procédure accessible dès CE1. 4-5 chiffres → exige une bonne maîtrise de la numération positionnelle.",
              ],
              [
                "Problème additif",
                "Place de l'inconnue (état initial, transformation, état final)",
                "État final cherché → addition directe. État initial cherché → nécessite d'inverser l'opération.",
              ],
              [
                "Comparaison de fractions",
                "Même numérateur / même dénominateur / dénominateurs différents",
                "Même dénominateur → comparaison directe des numérateurs. Dénominateurs différents → mise au même dénominateur, beaucoup plus exigeant.",
              ],
            ],
          },
        ],
      },
      {
        id: "exemples-geometrie",
        title: "Variables didactiques en géométrie",
        badge: "Géométrie",
        blocks: [
          {
            kind: "table",
            caption: "Exemples de variables didactiques en géométrie",
            headers: ["Situation", "Variable didactique", "Effet de la modification"],
            rows: [
              [
                "Reconnaissance de figures",
                "Orientation de la figure",
                "Orientation prototypique (triangle « pointe en haut ») → reconnaissance perceptive. Orientation inhabituelle → oblige à vérifier les propriétés.",
              ],
              [
                "Reproduction de figure",
                "Présence/absence de quadrillage",
                "Avec quadrillage → repérage facilité, comptage de carreaux. Sans quadrillage → nécessite l'usage d'instruments (règle, compas, équerre).",
              ],
              [
                "Construction du symétrique",
                "Position de l'axe (horizontal, vertical, oblique)",
                "Axe vertical → plus intuitif. Axe oblique → beaucoup plus difficile, requiert une procédure rigoureuse point par point.",
              ],
              [
                "Patron de solide",
                "Nombre de faces",
                "Cube (6 faces identiques) → plus accessible. Pyramide à base pentagonale → combinatoire plus complexe.",
              ],
            ],
          },
        ],
      },
      {
        id: "exemples-grandeurs",
        title: "Variables didactiques en grandeurs et mesures",
        badge: "Grandeurs",
        blocks: [
          {
            kind: "table",
            caption: "Exemples de variables didactiques en grandeurs et mesures",
            headers: ["Situation", "Variable didactique", "Effet de la modification"],
            rows: [
              [
                "Conversion d'unités",
                "Unités de même dimension vs dimensions différentes (m → cm vs m² → cm²)",
                "Conversion linéaire (×100) vs conversion d'aire (×10 000) → la deuxième est source d'erreurs majeures.",
              ],
              [
                "Calcul d'aire",
                "Figure usuelle vs figure complexe (composée ou avec partie à retrancher)",
                "Figure usuelle → application directe de la formule. Figure complexe → décomposition/recomposition.",
              ],
              [
                "Problème de durées",
                "Franchissement d'un seuil (ex : de 10h45 à 11h15 vs de 10h20 à 10h50)",
                "Sans franchissement → addition directe. Avec franchissement de l'heure → gestion du système sexagésimal.",
              ],
            ],
          },
        ],
      },
      {
        id: "methode-crpe",
        title: "Méthode pour le CRPE",
        badge: "Méthode",
        blocks: [
          {
            kind: "rule",
            content:
              "Pour identifier les variables didactiques d'une situation au CRPE : (1) Résoudre soi-même le problème et repérer les points de difficulté ; (2) Se demander « quel paramètre, si je le modifie, change la procédure de résolution ? » ; (3) Pour chaque variable identifiée, décrire l'effet sur les procédures des élèves (simplification ou complexification) ; (4) Proposer des valeurs de la variable pour différencier (élèves en difficulté vs élèves avancés).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Nombre de données dans l'énoncé ≠ variable didactique",
                explanation:
                  "Ajouter une donnée inutile (distracteur) complexifie la compréhension de l'énoncé, pas la mathématique. C'est une variable de la tâche mais pas une variable didactique au sens strict de Brousseau.",
              },
              {
                label: "Modifier l'habillage n'est pas différencier",
                explanation:
                  "Changer « des billes » en « des bonbons » ne modifie rien à la difficulté mathématique. La différenciation par variables didactiques agit sur les paramètres mathématiques (taille des nombres, position de l'inconnue, nature des données).",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Une variable didactique modifie la stratégie de résolution ; une variable contextuelle ne modifie que l'habillage.",
      "Exemples clés : taille des nombres, présence de retenue, place de l'inconnue, orientation des figures, présence de quadrillage, nature des unités.",
      "Modifier une variable didactique est le levier principal de la différenciation en mathématiques.",
      "Au CRPE, toujours distinguer ce qui change la mathématique (variable didactique) de ce qui change le décor (variable contextuelle).",
      "Méthode : résoudre le problème → identifier les paramètres → tester l'effet de leur modification sur les procédures.",
    ],
    quiz: [
      {
        sentence:
          "Changer le contexte d'un problème (« des pommes » au lieu de « des billes ») est une modification de variable didactique.",
        isCorrect: false,
        explanation:
          "FAUX. Le contexte est une variable contextuelle. Elle modifie l'habillage du problème mais pas la stratégie mathématique de résolution. Une variable didactique modifie la procédure (ex : passer de nombres sans retenue à avec retenue).",
      },
      {
        sentence:
          "Dans un problème additif, déplacer la position de l'inconnue (de l'état final vers l'état initial) est une modification de variable didactique qui augmente la difficulté.",
        isCorrect: true,
        explanation:
          "VRAI. Chercher l'état final (a + b = ?) est plus simple que chercher l'état initial (? + b = c) car le second exige d'inverser l'opération. La position de l'inconnue est une variable didactique majeure dans les problèmes additifs.",
      },
      {
        sentence:
          "En géométrie, changer l'orientation d'un triangle (de « pointe en haut » à « pointe à droite ») est une modification de variable didactique.",
        isCorrect: true,
        explanation:
          "VRAI. L'orientation modifie la procédure de reconnaissance : une orientation prototypique permet la reconnaissance perceptive, tandis qu'une orientation inhabituelle oblige l'élève à vérifier les propriétés. C'est une variable didactique reconnue en didactique de la géométrie.",
      },
      {
        sentence:
          "La théorie des variables didactiques a été développée par Vergnaud dans le cadre de la théorie des champs conceptuels.",
        isCorrect: false,
        explanation:
          "FAUX. Les variables didactiques sont un concept central de la théorie des situations didactiques de Brousseau (1986), pas de la théorie des champs conceptuels de Vergnaud. Les deux cadres théoriques sont complémentaires mais distincts.",
      },
      {
        sentence:
          "La différenciation par variables didactiques permet de proposer le même type de problème à tous les élèves, en ajustant les paramètres selon le niveau.",
        isCorrect: true,
        explanation:
          "VRAI. C'est l'intérêt majeur des variables didactiques pour la différenciation : tous les élèves travaillent sur le même problème mathématique, mais avec des paramètres adaptés (nombres plus petits, retenue absente, quadrillage fourni) pour les élèves en difficulté.",
      },
    ],
  },
};
