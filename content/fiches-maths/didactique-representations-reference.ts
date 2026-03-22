import type { Fiche } from "@/features/fiches/types";

export const didactiqueRepresentationsReference: Fiche = {
  id: "didactique-representations-reference",
  slug: "representations-maths-concret-abstrait",
  title: "Représentations en maths : du concret à l'abstrait",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_maths",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "représentations",
    "concret",
    "imagé",
    "abstrait",
    "CPA",
    "manipulation",
    "modélisation",
    "schéma en barres",
    "droite graduée",
  ],
  notionsLiees: [
    "didactique-programmes-cycles-reference",
    "didactique-fractions-decimaux-sprint",
    "didactique-numeration-cycles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les représentations jouent un rôle central dans l'apprentissage des mathématiques. La progression Concret → Pictural → Abstrait (CPA, aussi appelée « enactive → iconique → symbolique » selon Bruner) est le fil directeur de l'enseignement : on manipule d'abord des objets réels, puis on les représente par des schémas, puis on passe à l'écriture symbolique. Cette fiche recense les principales représentations utilisées à l'école primaire et leur rôle didactique.",
    sections: [
      {
        id: "modele-cpa",
        title: "Le modèle CPA (Concret – Pictural – Abstrait)",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "Le modèle CPA, inspiré de Bruner (1966), structure l'apprentissage en trois phases : (1) Concret : l'élève manipule des objets réels (bûchettes, cubes, bandes de papier) ; (2) Pictural : l'élève utilise des représentations visuelles (schémas, dessins, diagrammes) ; (3) Abstrait : l'élève utilise les écritures symboliques (nombres, signes opératoires, formules). Ce n'est pas une séquence linéaire : les allers-retours entre les trois niveaux sont essentiels.",
          },
          {
            kind: "table",
            caption: "Les trois niveaux de représentation (CPA)",
            headers: ["Niveau", "Support", "Exemple (addition 34 + 28)"],
            rows: [
              [
                "Concret (enactif)",
                "Objets manipulables : bûchettes, cubes emboîtables, jetons, réglettes Cuisenaire",
                "Poser 3 paquets de 10 + 4 unités, puis 2 paquets de 10 + 8 unités. Regrouper : échanger 10 unités contre 1 paquet de 10.",
              ],
              [
                "Pictural (iconique)",
                "Schémas, dessins, schéma en barres, droite graduée, tableau de numération",
                "Dessiner des barres de dizaines et des points d'unités. Représenter le regroupement par un cercle.",
              ],
              [
                "Abstrait (symbolique)",
                "Écritures mathématiques : nombres, signes +, −, ×, ÷, =, formules",
                "34 + 28 = 62, avec la retenue notée dans le calcul posé.",
              ],
            ],
          },
          {
            kind: "tip",
            text: "La méthode de Singapour, souvent citée au CRPE, applique systématiquement le modèle CPA. Le schéma en barres (bar model) est l'outil pictural central de cette approche.",
          },
        ],
      },
      {
        id: "representations-nombres",
        title: "Représentations pour les nombres et le calcul",
        badge: "Nombres",
        blocks: [
          {
            kind: "table",
            caption: "Principales représentations en numération et calcul",
            headers: ["Représentation", "Description", "Usage didactique"],
            rows: [
              [
                "Matériel de numération",
                "Cubes-unités, barres-dizaines, plaques-centaines, cubes-milliers (matériel base 10 ou Dienes)",
                "Construire la compréhension de la valeur de position et des échanges (10 unités = 1 dizaine). Essentiel en cycle 2.",
              ],
              [
                "Droite graduée",
                "Ligne horizontale avec des graduations régulières, sur laquelle on place les nombres",
                "Comparer, ordonner, repérer les fractions et décimaux comme des nombres (pas seulement des « parts »). Essentiel en cycle 3.",
              ],
              [
                "Schéma en barres",
                "Rectangles proportionnels aux quantités, juxtaposés ou empilés pour visualiser les relations",
                "Modéliser les problèmes additifs (partie-tout) et multiplicatifs (groupes identiques, comparaison). Outil clé de la méthode Singapour.",
              ],
              [
                "Tableau de numération",
                "Colonnes : milliers | centaines | dizaines | unités (étendu aux dixièmes, centièmes…)",
                "Lire, écrire, décomposer les nombres. Comprendre la valeur de chaque chiffre. Indispensable pour les décimaux.",
              ],
              [
                "Réglettes Cuisenaire",
                "Réglettes colorées de longueurs 1 à 10, chaque longueur = une couleur",
                "Explorer les relations entre nombres (compléments, doubles, moitiés), les fractions, la proportionnalité.",
              ],
            ],
          },
        ],
      },
      {
        id: "representations-geometrie",
        title: "Représentations pour la géométrie",
        badge: "Géométrie",
        blocks: [
          {
            kind: "table",
            caption: "Principales représentations en géométrie",
            headers: ["Représentation", "Description", "Usage didactique"],
            rows: [
              [
                "Objets du quotidien",
                "Boîtes (pavés droits), balles (sphères), boîtes de conserve (cylindres)",
                "Cycle 1 : première rencontre avec les solides. Trier, classer, nommer.",
              ],
              [
                "Géoplans et trames",
                "Planches à clous ou trames pointées sur papier",
                "Reproduire des figures, explorer les propriétés (alignement, perpendicularité) sans instrument.",
              ],
              [
                "Papier quadrillé / pointé",
                "Support avec repères réguliers (carrés ou points isométriques)",
                "Faciliter les constructions, les reproductions, les symétries. Variable didactique : retirer le quadrillage augmente la difficulté.",
              ],
              [
                "Logiciels de géométrie dynamique",
                "GeoGebra, Cabri-Géomètre",
                "Cycle 3 : explorer les propriétés par le déplacement (une figure qui « résiste » au déplacement possède la propriété). Introduit en cycle 3.",
              ],
            ],
          },
        ],
      },
      {
        id: "representations-grandeurs",
        title: "Représentations pour les grandeurs et mesures",
        badge: "Grandeurs",
        blocks: [
          {
            kind: "table",
            caption: "Principales représentations en grandeurs et mesures",
            headers: ["Représentation", "Description", "Usage didactique"],
            rows: [
              [
                "Tableau de conversion",
                "Tableau à colonnes (km, hm, dam, m, dm, cm, mm) où l'on positionne les chiffres",
                "Aide procédurale pour les conversions. Risque : utilisation mécanique sans compréhension du sens des unités.",
              ],
              [
                "Comparaison directe et indirecte",
                "Comparer deux longueurs en les juxtaposant (directe) ou avec un intermédiaire comme une ficelle (indirecte)",
                "Cycle 1-2 : construire le sens de la mesure avant d'introduire les unités conventionnelles.",
              ],
              [
                "Pavage et unités d'aire",
                "Recouvrir une surface avec des carreaux (carrés-unités) pour en mesurer l'aire",
                "Construire le concept d'aire avant les formules. Montrer que l'aire ne dépend pas de la forme du pavage (si l'unité est la même).",
              ],
            ],
          },
        ],
      },
      {
        id: "erreurs-representations",
        title: "Pièges et limites des représentations",
        badge: "Vigilance",
        blocks: [
          {
            kind: "watchout",
            items: [
              {
                label: "Représentation unique → conception restreinte",
                explanation:
                  "Utiliser toujours la même représentation (ex : le « camembert » pour les fractions) crée une conception restreinte. Un élève qui ne connaît les fractions que comme « parts de gâteau » ne saura pas placer 7/4 sur une droite graduée. Varier les représentations est essentiel.",
              },
              {
                label: "Le matériel ne suffit pas sans mise en mots",
                explanation:
                  "Manipuler sans verbaliser n'ancre pas l'apprentissage. L'enseignant doit explicitement faire le lien entre la manipulation et l'écriture mathématique : « Tu as échangé 10 unités contre 1 dizaine, c'est pourquoi on écrit 1 de retenue. »",
              },
              {
                label: "Le schéma en barres n'est pas universel",
                explanation:
                  "Le schéma en barres est très efficace pour les problèmes additifs et multiplicatifs, mais moins adapté pour la géométrie ou les probabilités. Choisir la représentation adaptée au contenu mathématique.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Le modèle CPA (Concret → Pictural → Abstrait) de Bruner structure l'enseignement : manipulation → schéma → écriture symbolique, avec des allers-retours.",
      "Représentations clés en numération : matériel base 10, droite graduée, schéma en barres, tableau de numération, réglettes Cuisenaire.",
      "Représentations clés en géométrie : objets réels, géoplans, quadrillage, logiciels de géométrie dynamique.",
      "Varier les représentations est indispensable pour éviter les conceptions restreintes (ex : fraction = part de gâteau).",
      "La manipulation sans verbalisation est inefficace : toujours expliciter le lien entre le concret et l'abstrait.",
    ],
    quiz: [
      {
        sentence:
          "Le modèle CPA impose un passage séquentiel strict du concret vers l'abstrait, sans retour en arrière possible.",
        isCorrect: false,
        explanation:
          "FAUX. Le modèle CPA n'est pas linéaire. Les allers-retours entre concret, pictural et abstrait sont essentiels. Un élève en difficulté au niveau abstrait doit pouvoir revenir au concret ou au pictural pour reconstruire sa compréhension.",
      },
      {
        sentence:
          "La droite graduée est une représentation essentielle pour construire le sens des fractions et des décimaux comme des nombres.",
        isCorrect: true,
        explanation:
          "VRAI. La droite graduée permet de voir les fractions et décimaux comme des points sur un continuum numérique, pas seulement comme des « parts de quelque chose ». Elle est recommandée par les programmes dès le cycle 3.",
      },
      {
        sentence:
          "Utiliser exclusivement le « camembert » (diagramme circulaire) pour représenter les fractions est une bonne pratique pédagogique.",
        isCorrect: false,
        explanation:
          "FAUX. Le camembert limite la conception de la fraction à « part d'un tout circulaire ». L'élève ne saura pas placer 7/4 (fraction impropre) ni comprendre la fraction comme un nombre. Varier : bandes, droite graduée, collection d'objets, mesures.",
      },
      {
        sentence:
          "Le schéma en barres (bar model) de la méthode de Singapour est un outil de modélisation qui se situe au niveau pictural du modèle CPA.",
        isCorrect: true,
        explanation:
          "VRAI. Le schéma en barres est une représentation picturale (iconique) qui aide l'élève à passer du concret à l'abstrait. Il modélise les relations entre les données d'un problème sous forme de rectangles proportionnels.",
      },
      {
        sentence:
          "En géométrie, les logiciels de géométrie dynamique (GeoGebra) permettent de vérifier une propriété en déplaçant les éléments de la figure.",
        isCorrect: true,
        explanation:
          "VRAI. La géométrie dynamique permet de tester si une propriété « résiste » au déplacement : si les diagonales d'un quadrilatère restent perpendiculaires quelle que soit la déformation, c'est une propriété de la figure, pas un cas particulier. C'est un outil puissant introduit en cycle 3.",
      },
    ],
  },
};
