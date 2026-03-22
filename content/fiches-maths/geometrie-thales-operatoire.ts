import type { Fiche } from "@/features/fiches/types";

export const geometrieThalesOperatoire: Fiche = {
  id: "geometrie-thales-operatoire",
  slug: "appliquer-thales-pas-a-pas",
  title: "Appliquer le théorème de Thalès pas à pas",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "Thalès",
    "configuration triangle",
    "configuration papillon",
    "proportionnalité",
    "parallélisme",
    "réciproque",
    "longueur",
  ],
  notionsLiees: [
    "geometrie-thales-sprint",
    "geometrie-theoremes-reference",
    "geometrie-pythagore-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Que dois-tu faire : calculer une longueur manquante ou prouver un parallélisme ?",
    decisionTree: {
      type: "question",
      text: "Dois-tu calculer une longueur inconnue ?",
      yes: {
        type: "question",
        text: "As-tu vérifié que deux droites sont parallèles dans la figure ?",
        yes: {
          type: "question",
          text: "Quelle est la configuration ? Les deux sécantes se coupent-elles entre les parallèles (papillon) ou du même côté (triangle) ?",
          yes: {
            type: "leaf",
            label: "Configuration triangle : M et N sur les côtés",
            rule: "Si (MN) // (BC) avec M ∈ [AB] et N ∈ [AC], écrire les rapports : AM/AB = AN/AC = MN/BC. Résoudre l'égalité qui contient l'inconnue par produit en croix.",
            example:
              "AM = 4, AB = 10, AN = 3. Par Thalès : 4/10 = 3/AC → AC = 3 × 10/4 = 7,5.",
          },
          no: {
            type: "leaf",
            label: "Configuration papillon : intersection entre les parallèles",
            rule: "Si les droites (AB) et (CD) se coupent en O avec (AC) // (BD), écrire : OA/OB = OC/OD = AC/BD. Les rapports comparent les segments sur chaque sécante, mesurés depuis le point d'intersection O.",
            example:
              "OA = 3, OB = 5, OC = 4,5. Par Thalès : 3/5 = 4,5/OD → OD = 4,5 × 5/3 = 7,5.",
          },
        },
        no: {
          type: "leaf",
          label: "Vérifier le parallélisme d'abord",
          rule: "Le théorème de Thalès ne s'applique QUE si deux droites sont parallèles. Chercher dans l'énoncé une indication de parallélisme : « (MN) // (BC) », « ABCD est un trapèze (un seul couple de côtés parallèles) », ou une propriété connue (milieux → droite des milieux // au troisième côté).",
        },
      },
      no: {
        type: "question",
        text: "Dois-tu prouver que deux droites sont parallèles ? (réciproque de Thalès)",
        yes: {
          type: "leaf",
          label: "Réciproque de Thalès",
          rule: "Calculer les rapports AM/AB et AN/AC (avec M ∈ [AB], N ∈ [AC]). Si AM/AB = AN/AC ET que les points sont dans le même ordre sur chaque droite (M entre A et B, N entre A et C), alors (MN) // (BC).",
          example:
            "AM = 2, AB = 6, AN = 3, AC = 9. AM/AB = 1/3, AN/AC = 1/3. Rapports égaux + même ordre → (MN) // (BC).",
        },
        no: {
          type: "leaf",
          label: "Identifier ce qu'on cherche",
          rule: "Relire l'énoncé. Thalès sert soit à calculer une longueur (théorème direct, nécessite un parallélisme connu), soit à prouver un parallélisme (réciproque, nécessite l'égalité de deux rapports).",
        },
      },
    },
    workedExample: {
      phrase:
        "Dans le triangle RST, le point U est sur [RS] et V sur [RT] tels que (UV) // (ST). On donne RU = 6 cm, RS = 15 cm, RV = 4 cm. Calculer RT et UV sachant que ST = 12,5 cm.",
      steps: [
        "Étape 1 — Identifier la configuration : U ∈ [RS], V ∈ [RT], (UV) // (ST). C'est une configuration triangle.",
        "Étape 2 — Écrire les rapports de Thalès : RU/RS = RV/RT = UV/ST.",
        "Étape 3 — Calculer le rapport connu : RU/RS = 6/15 = 2/5.",
        "Étape 4 — Calculer RT : RV/RT = 2/5, donc 4/RT = 2/5 → RT = 4 × 5/2 = 10 cm.",
        "Étape 5 — Calculer UV : UV/ST = 2/5, donc UV/12,5 = 2/5 → UV = 12,5 × 2/5 = 5 cm.",
        "Étape 6 — Vérification : RU/RS = 6/15 = 0,4 ; RV/RT = 4/10 = 0,4 ; UV/ST = 5/12,5 = 0,4. Les trois rapports sont bien égaux. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour appliquer le théorème de Thalès, il faut obligatoirement que deux droites soient parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. Le parallélisme est la condition d'application. Sans lui, les rapports de segments ne sont pas nécessairement égaux.",
      },
      {
        sentence:
          "Dans la réciproque de Thalès, il suffit que deux rapports soient égaux pour conclure au parallélisme.",
        isCorrect: false,
        explanation:
          "FAUX. Il faut aussi vérifier que les points sont dans le même ordre sur les deux droites (condition d'alignement). Sans cette vérification, la conclusion peut être erronée.",
      },
      {
        sentence:
          "Si le rapport de Thalès vaut 1/3, alors la longueur du petit segment vaut le tiers de la longueur du grand.",
        isCorrect: true,
        explanation:
          "VRAI. Le rapport 1/3 signifie que toutes les longueurs correspondantes sont dans le rapport 1 pour 3 : c'est un coefficient de réduction.",
      },
      {
        sentence:
          "Le théorème de Thalès permet aussi de calculer des mesures d'angles.",
        isCorrect: false,
        explanation:
          "FAUX. Thalès donne uniquement des proportions de longueurs. Pour les angles, utiliser les propriétés des parallèles (angles alternes-internes, correspondants) ou la trigonométrie.",
      },
      {
        sentence:
          "Dans une configuration papillon, les deux sécantes se croisent entre les deux droites parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. C'est ce qui distingue la configuration papillon (point d'intersection entre les parallèles) de la configuration triangle (point d'intersection d'un même côté des parallèles).",
      },
    ],
    didacticNote:
      "Le théorème de Thalès est au programme du cycle 4 (collège) et constitue un classique de l'épreuve de maths du CRPE. Les erreurs les plus fréquentes : oublier de vérifier le parallélisme, confondre les configurations, ou écrire des rapports incohérents (mélanger partie/tout et partie/partie). Au CRPE, on attend souvent une rédaction rigoureuse : hypothèses, application du théorème, calcul, conclusion.",
  },
};
