import type { Fiche } from "@/features/fiches/types";

export const grandeursMesurerConstruireAngleOperatoire: Fiche = {
  id: "grandeurs-mesurer-construire-angle-operatoire",
  slug: "mesurer-construire-angle-rapporteur-pas-a-pas",
  title: "Mesurer et construire un angle au rapporteur",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "angle",
    "rapporteur",
    "mesure",
    "construction",
    "degré",
    "aigu",
    "obtus",
    "droit",
    "plat",
  ],
  notionsLiees: [
    "geometrie-angles-sprint",
    "geometrie-angles-paralleles-sprint",
    "geometrie-triangles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Dois-tu mesurer un angle existant ou construire un angle d'une mesure donnée ?",
    decisionTree: {
      type: "question",
      text: "Dois-tu mesurer un angle déjà tracé ?",
      yes: {
        type: "question",
        text: "As-tu identifié le sommet et les deux côtés de l'angle ?",
        yes: {
          type: "leaf",
          label: "Placer le rapporteur et lire la graduation",
          rule: "1. Placer le centre du rapporteur sur le sommet de l'angle. 2. Aligner le 0° sur l'un des côtés de l'angle. 3. Lire la graduation sur l'autre côté. Attention : le rapporteur a deux échelles (intérieure et extérieure). Utiliser celle qui part de 0° sur le côté aligné.",
          example:
            "Angle aigu : la lecture donne un nombre entre 0° et 90°. Si tu lis 135° pour un angle qui semble aigu, tu utilises la mauvaise échelle.",
        },
        no: {
          type: "leaf",
          label: "Identifier le sommet et les côtés",
          rule: "L'angle est défini par trois points : le sommet (au milieu) et un point sur chaque côté. Notation : l'angle ÂBC a pour sommet B. Si les côtés sont trop courts, les prolonger avec la règle pour faciliter la lecture sur le rapporteur.",
        },
      },
      no: {
        type: "question",
        text: "Dois-tu construire un angle d'une mesure donnée ?",
        yes: {
          type: "leaf",
          label: "Tracer puis reporter la mesure",
          rule: "1. Tracer un côté de l'angle (demi-droite). 2. Placer le centre du rapporteur sur l'extrémité (futur sommet). 3. Aligner le 0° sur le côté tracé. 4. Marquer un point à la graduation voulue. 5. Tracer le second côté passant par ce point.",
          example:
            "Construire un angle de 72° : tracer [OA), placer le rapporteur, marquer B à 72°, tracer [OB). Vérifier en relisant l'angle.",
        },
        no: {
          type: "leaf",
          label: "Vérifier la nature de l'angle",
          rule: "Avant de mesurer, estimer la nature : aigu (< 90°), droit (= 90°), obtus (entre 90° et 180°), plat (= 180°). Cette estimation permet de choisir la bonne échelle du rapporteur et de détecter une erreur de lecture.",
        },
      },
    },
    workedExample: {
      phrase:
        "Construire un triangle ABC avec AB = 5 cm, l'angle en A = 60° et l'angle en B = 80°.",
      steps: [
        "Étape 1 — Tracer le segment [AB] de 5 cm avec la règle graduée.",
        "Étape 2 — En A, construire un angle de 60° : placer le rapporteur centré en A, aligner le 0° sur [AB], marquer un point à 60°, tracer la demi-droite [Ax).",
        "Étape 3 — En B, construire un angle de 80° : placer le rapporteur centré en B, aligner le 0° sur [BA] (attention au sens), marquer un point à 80°, tracer la demi-droite [By).",
        "Étape 4 — Le point C est l'intersection des deux demi-droites [Ax) et [By). Tracer le triangle ABC.",
        "Étape 5 — Vérification : l'angle en C doit valoir 180° − 60° − 80° = 40°. Mesurer avec le rapporteur pour confirmer. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Un angle droit mesure exactement 90°.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition. On le reconnaît au petit carré dessiné dans le coin de l'angle.",
      },
      {
        sentence:
          "Un rapporteur a deux graduations pour éviter d'avoir à retourner l'instrument.",
        isCorrect: true,
        explanation:
          "VRAI. Les deux échelles (0°→180° et 180°→0°) permettent de mesurer un angle quel que soit le sens dans lequel on aligne le 0°. Il faut choisir l'échelle qui part de 0° sur le côté aligné.",
      },
      {
        sentence:
          "Un angle de 200° est un angle obtus.",
        isCorrect: false,
        explanation:
          "FAUX. Un angle obtus est compris entre 90° et 180° (strictement). Un angle de 200° est un angle rentrant (ou réflexe), supérieur à 180°. La classification : aigu (0°-90°), droit (90°), obtus (90°-180°), plat (180°), rentrant (180°-360°).",
      },
      {
        sentence:
          "Pour mesurer un angle dont les côtés sont trop courts, on peut les prolonger sans changer la mesure de l'angle.",
        isCorrect: true,
        explanation:
          "VRAI. La mesure d'un angle ne dépend pas de la longueur de ses côtés. Prolonger les côtés facilite la lecture sur le rapporteur sans modifier l'angle.",
      },
      {
        sentence:
          "Deux angles supplémentaires ont une somme de 90°.",
        isCorrect: false,
        explanation:
          "FAUX. Deux angles supplémentaires ont une somme de 180° (pas 90°). Ce sont les angles complémentaires qui ont une somme de 90°. Moyen mnémotechnique : Complémentaires → quatre-vingt-dix (C → 90), Supplémentaires → cent quatre-vingts (S → 180).",
      },
    ],
    didacticNote:
      "L'utilisation du rapporteur est au programme du cycle 3. Les difficultés récurrentes : choisir la bonne échelle, aligner correctement le centre et le zéro, et lire la graduation sur un côté qui ne touche pas exactement une graduation. Au CRPE, on peut demander de décrire les erreurs typiques d'élèves avec le rapporteur et de proposer des remédiations.",
  },
};
