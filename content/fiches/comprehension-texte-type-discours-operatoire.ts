import type { Fiche } from "@/features/fiches/types";

export const typeDiscoursOperatoire: Fiche = {
  id: "comprehension-texte-type-discours-operatoire",
  slug: "type-discours-arbre-decision",
  title: "Identifier le type de discours : arbre de décision",
  domaine: "comprehension_texte",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "type de discours",
    "narratif",
    "descriptif",
    "argumentatif",
    "explicatif",
    "injonctif",
  ],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Le texte raconte-t-il une histoire avec des événements ?",
    decisionTree: {
      type: "question",
      text: "Le texte raconte-t-il une histoire avec des événements ?",
      yes: {
        type: "question",
        text: "Y a-t-il un schéma narratif (situation initiale, péripéties, dénouement) ?",
        yes: {
          type: "leaf",
          label: "Discours NARRATIF",
          rule: "Le discours narratif raconte une suite d'événements réels ou fictifs organisés dans le temps. Il suit généralement un schéma narratif : situation initiale, élément perturbateur, péripéties, résolution, situation finale. Temps dominants : passé simple / imparfait ou présent de narration.",
          example:
            "Un matin, le petit prince quitta sa planète. Il traversa plusieurs astéroïdes avant d'arriver sur la Terre. (récit structuré avec progression temporelle)",
        },
        no: {
          type: "question",
          text: "Le texte décrit-il un lieu, un personnage, un objet ?",
          yes: {
            type: "leaf",
            label: "Discours DESCRIPTIF",
            rule: "Le discours descriptif représente un lieu, un personnage, un objet ou une atmosphère en détaillant ses caractéristiques. Il utilise des expansions du nom (adjectifs, compléments du nom, relatives), des verbes d'état et l'imparfait dans un récit au passé.",
            example:
              "La maison était immense, couverte de lierre. Ses volets bleus, à demi fermés, laissaient filtrer une lumière dorée. (portrait d'un lieu, imparfait descriptif)",
          },
          no: {
            type: "leaf",
            label: "Narration mêlée de description",
            rule: "Le texte combine des éléments narratifs (événements, actions) et descriptifs (caractérisation de personnages, de lieux) sans schéma narratif complet. Il faut identifier le type dominant en analysant la proportion de passages narratifs et descriptifs.",
            example:
              "Il marchait le long du canal. L'eau était noire, immobile. Il s'arrêta pour observer un héron. (actions ponctuelles + notations descriptives entrelacées)",
          },
        },
      },
      no: {
        type: "question",
        text: "Le texte cherche-t-il à convaincre ou à défendre une thèse ?",
        yes: {
          type: "leaf",
          label: "Discours ARGUMENTATIF",
          rule: "Le discours argumentatif vise à convaincre ou persuader le lecteur en défendant une thèse à l'aide d'arguments et d'exemples. Il utilise des connecteurs logiques (car, donc, en revanche, certes… mais), des modalisateurs et un lexique évaluatif.",
          example:
            "La lecture quotidienne est indispensable car elle développe le vocabulaire, stimule l'imagination et renforce la concentration. C'est pourquoi les programmes insistent sur cet apprentissage. (thèse + arguments + connecteurs)",
        },
        no: {
          type: "question",
          text: "Le texte explique-t-il un phénomène ou donne-t-il des informations ?",
          yes: {
            type: "leaf",
            label: "Discours EXPLICATIF",
            rule: "Le discours explicatif (ou informatif) vise à faire comprendre un phénomène, un mécanisme ou une notion. Il répond à la question « pourquoi ? » ou « comment ? ». Il utilise le présent de vérité générale, un vocabulaire spécialisé et des connecteurs de cause/conséquence.",
            example:
              "Les marées sont provoquées par l'attraction de la Lune sur les masses d'eau terrestres. Ce phénomène se produit environ toutes les six heures. (explication d'un phénomène naturel, présent de vérité générale)",
          },
          no: {
            type: "question",
            text: "Le texte donne-t-il des ordres, des consignes, des conseils ?",
            yes: {
              type: "leaf",
              label: "Discours INJONCTIF",
              rule: "Le discours injonctif (ou prescriptif) donne des ordres, des consignes, des instructions ou des conseils. Il utilise l'impératif, l'infinitif à valeur d'ordre, le subjonctif ou le futur à valeur d'obligation. On le trouve dans les recettes, les règlements, les modes d'emploi.",
              example:
                "Préchauffez le four à 180 °C. Mélangez la farine et le sucre, puis ajoutez les œufs un à un. (consignes ordonnées, impératif)",
            },
            no: {
              type: "leaf",
              label: "Discours mixte — analyser les passages dominants",
              rule: "Certains textes ne relèvent pas d'un type unique. Il faut alors repérer les passages dominants et identifier le type de discours principal. Un même texte peut mêler narration et argumentation (fable), description et explication (documentaire illustré), etc.",
              example:
                "Dans une fable de La Fontaine, le récit (narratif) sert de support à une morale (argumentatif). Le type dominant dépend du passage analysé.",
            },
          },
        },
      },
    },
    workedExample: {
      phrase:
        "« La forêt s'étendait à perte de vue. Les chênes centenaires dressaient leurs branches noueuses vers le ciel gris. Un renard traversa le sentier, puis disparut dans les fougères. »",
      steps: [
        "Étape 1 — Le texte raconte-t-il une histoire avec des événements ? On observe des éléments narratifs (« traversa », « disparut ») mais aussi beaucoup de caractérisation du décor.",
        "Étape 2 — Y a-t-il un schéma narratif complet ? Non, il n'y a ni situation initiale structurée, ni élément perturbateur, ni dénouement.",
        "Étape 3 — Le texte décrit-il un lieu, un personnage, un objet ? Oui, les deux premières phrases décrivent la forêt (« s'étendait à perte de vue », « chênes centenaires », « branches noueuses », « ciel gris ») avec l'imparfait descriptif.",
        "Étape 4 — Conclusion : le type dominant est le discours DESCRIPTIF, ponctué d'une brève action narrative (le passage du renard au passé simple). La description du lieu constitue l'essentiel du texte.",
        "Étape 5 — Remarque didactique : au cycle 3, il est important d'apprendre aux élèves que les types de discours coexistent souvent dans un même texte. L'objectif est d'identifier le type dominant, pas de classer un texte dans une catégorie unique.",
      ],
    },
    quiz: [
      {
        sentence:
          "Le discours narratif se caractérise par la présence d'un schéma narratif et une progression temporelle.",
        isCorrect: true,
        explanation:
          "VRAI. Le discours narratif raconte une suite d'événements organisés dans le temps, généralement structurés selon un schéma narratif (situation initiale, péripéties, dénouement). C'est le type de discours dominant dans les contes, les romans et les nouvelles.",
      },
      {
        sentence:
          "Un texte explicatif et un texte argumentatif ont le même objectif : convaincre le lecteur.",
        isCorrect: false,
        explanation:
          "FAUX. Le texte explicatif vise à faire comprendre (il informe, il répond à « pourquoi ? »), tandis que le texte argumentatif vise à convaincre ou persuader en défendant une thèse. Leurs intentions communicatives sont distinctes.",
      },
      {
        sentence:
          "Une recette de cuisine est un exemple typique de discours injonctif.",
        isCorrect: true,
        explanation:
          "VRAI. La recette donne des consignes ordonnées à l'impératif ou à l'infinitif (« éplucher les pommes », « faites revenir les oignons »). C'est un discours injonctif (ou prescriptif) : il dicte une marche à suivre.",
      },
      {
        sentence:
          "Le discours descriptif utilise principalement le passé simple et des connecteurs temporels.",
        isCorrect: false,
        explanation:
          "FAUX. Le discours descriptif privilégie l'imparfait (dans un récit au passé) et les expansions du nom (adjectifs, compléments du nom, propositions relatives). Le passé simple et les connecteurs temporels (puis, ensuite, alors) sont caractéristiques du discours narratif.",
      },
      {
        sentence:
          "Un même texte peut combiner plusieurs types de discours.",
        isCorrect: true,
        explanation:
          "VRAI. Les textes réels mêlent souvent plusieurs types de discours. Par exemple, un roman alterne narration et description ; un article de presse peut combiner explication et argumentation. L'analyse consiste à identifier le type dominant.",
      },
    ],
    didacticNote:
      "Au cycle 3, les programmes (Eduscol 2021) demandent aux élèves de « reconnaître les principaux genres littéraires » et de « comprendre l'intention de l'auteur ». L'identification du type de discours dominant est un outil clé pour la compréhension : elle aide l'élève à anticiper la structure du texte et à ajuster sa stratégie de lecture. Commencer par les types les plus contrastés (narratif vs. explicatif) avant d'aborder les textes mixtes.",
  },
};
