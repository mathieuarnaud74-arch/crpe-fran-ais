import type { Fiche } from "@/features/fiches/types";

export const figuresStyleReference: Fiche = {
  id: "lexique-figures-style-reference",
  slug: "figures-de-style-guide-reference",
  title: "Figures de style : guide de référence",
  domaine: "lexique",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "figures de style",
    "métaphore",
    "comparaison",
    "métonymie",
    "anaphore",
    "hyperbole",
    "litote",
    "oxymore",
    "analyse littéraire",
  ],
  notionsLiees: [
    "lexique-figures-de-style-sprint",
    "lexique-denotation-connotation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les figures de style sont des procédés d'expression qui s'écartent de l'usage ordinaire de la langue pour produire un effet particulier. Leur identification et leur analyse font partie des compétences attendues au CRPE, tant pour l'épreuve disciplinaire que pour la didactique de la lecture littéraire. Cette fiche classe les figures par famille et fournit des exemples tirés de la littérature française.",
    sections: [
      {
        id: "analogie",
        title: "Figures d'analogie",
        badge: "Ressemblance",
        blocks: [
          {
            kind: "rule",
            content:
              "Les figures d'analogie établissent un rapport de ressemblance entre deux éléments (le comparé et le comparant). Elles constituent le socle de l'image littéraire.",
          },
          {
            kind: "table",
            caption: "Figures d'analogie — définitions et exemples",
            headers: ["Figure", "Définition", "Exemple littéraire"],
            rows: [
              [
                "Comparaison",
                "Rapprochement explicite entre deux éléments au moyen d'un outil de comparaison (comme, tel, semblable à…).",
                "« La terre est bleue comme une orange. » — Éluard",
              ],
              [
                "Métaphore",
                "Rapprochement implicite (sans outil de comparaison) entre deux éléments. Peut être filée sur plusieurs phrases.",
                "« Cette faucille d'or dans le champ des étoiles. » — Hugo (la lune = faucille d'or)",
              ],
              [
                "Personnification",
                "Attribution de caractéristiques humaines à un objet, un animal ou une abstraction.",
                "« La mer se retirait comme un voleur pris sur le fait. » — Prévert",
              ],
              [
                "Allégorie",
                "Représentation concrète et prolongée d'une idée abstraite, souvent personnifiée.",
                "La Justice représentée par une femme aux yeux bandés tenant une balance.",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Comparaison vs métaphore",
                explanation:
                  "La différence repose sur la présence ou l'absence d'un outil de comparaison. « Il est fort comme un lion » = comparaison. « Ce lion a rugi » (en parlant d'un homme) = métaphore.",
              },
              {
                label: "Métaphore filée",
                explanation:
                  "Une métaphore filée développe le même champ comparant sur plusieurs phrases ou vers. Ne pas la confondre avec une simple accumulation de métaphores indépendantes.",
              },
            ],
          },
        ],
      },
      {
        id: "opposition",
        title: "Figures d'opposition",
        badge: "Contraste",
        blocks: [
          {
            kind: "rule",
            content:
              "Les figures d'opposition mettent en contraste des éléments de sens contraire pour créer un effet de surprise, de tension ou de nuance.",
          },
          {
            kind: "table",
            caption: "Figures d'opposition — définitions et exemples",
            headers: ["Figure", "Définition", "Exemple littéraire"],
            rows: [
              [
                "Antithèse",
                "Opposition de deux termes ou groupes de sens contraire dans une même phrase ou un même vers.",
                "« Je vis, je meurs ; je me brûle et me noie. » — Louise Labé",
              ],
              [
                "Oxymore",
                "Alliance de deux termes contradictoires dans un même groupe syntaxique.",
                "« Cette obscure clarté qui tombe des étoiles. » — Corneille",
              ],
              [
                "Paradoxe",
                "Affirmation qui contredit l'opinion commune ou la logique apparente.",
                "« Il faut se méfier des penseurs dont l'esprit ne fonctionne qu'à partir d'une citation. » — Cioran",
              ],
              [
                "Chiasme",
                "Croisement syntaxique de termes selon le schéma AB / BA, souvent porteur d'une opposition ou d'une symétrie.",
                "« Il faut manger pour vivre et non pas vivre pour manger. » — Molière",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Antithèse vs oxymore",
                explanation:
                  "L'antithèse oppose des termes dans la phrase (ils peuvent être éloignés). L'oxymore unit deux termes contradictoires dans le même groupe nominal ou verbal (« un silence assourdissant »).",
              },
            ],
          },
        ],
      },
      {
        id: "amplification-attenuation",
        title: "Figures d'amplification et d'atténuation",
        badge: "Intensité",
        blocks: [
          {
            kind: "rule",
            content:
              "Ces figures modifient l'intensité de l'expression : elles grossissent (amplification) ou adoucissent (atténuation) la réalité décrite.",
          },
          {
            kind: "table",
            caption:
              "Figures d'amplification et d'atténuation — définitions et exemples",
            headers: ["Figure", "Définition", "Exemple littéraire"],
            rows: [
              [
                "Hyperbole",
                "Exagération de la réalité pour frapper l'imagination.",
                "« Je meurs de faim. » / « Un bruit à réveiller les morts. »",
              ],
              [
                "Litote",
                "Expression atténuée d'une idée pour en dire plus en disant moins.",
                "« Va, je ne te hais point. » — Corneille (= je t'aime)",
              ],
              [
                "Euphémisme",
                "Atténuation d'une réalité jugée brutale, triste ou choquante.",
                "« Il nous a quittés » (= il est mort). « Les non-voyants » (= les aveugles).",
              ],
              [
                "Gradation",
                "Énumération de termes selon une progression croissante (climax) ou décroissante (anticlimax).",
                "« Va, cours, vole, et nous venge. » — Corneille (gradation ascendante)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Litote vs euphémisme",
                explanation:
                  "La litote dit moins pour signifier plus (le sens réel est plus fort que l'expression). L'euphémisme adoucit une réalité pénible sans chercher à amplifier le sens. « Je ne te hais point » (litote : = je t'aime passionnément) ≠ « Il s'en est allé » (euphémisme : = il est mort).",
              },
            ],
          },
        ],
      },
      {
        id: "substitution",
        title: "Figures de substitution",
        badge: "Remplacement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Les figures de substitution remplacent un terme par un autre qui entretient avec lui un rapport logique (contiguïté, inclusion, périphrase).",
          },
          {
            kind: "table",
            caption: "Figures de substitution — définitions et exemples",
            headers: ["Figure", "Définition", "Exemple"],
            rows: [
              [
                "Métonymie",
                "Remplacement d'un terme par un autre lié par un rapport logique (contenant/contenu, cause/effet, lieu/institution).",
                "« Boire un verre » (contenant pour contenu). « L'Élysée a déclaré » (lieu pour personne).",
              ],
              [
                "Synecdoque",
                "Cas particulier de métonymie : la partie pour le tout ou le tout pour la partie.",
                "« Les voiles au loin » (= les bateaux). « La France a gagné » (= l'équipe de France).",
              ],
              [
                "Périphrase",
                "Remplacement d'un mot par un groupe de mots qui le décrit sans le nommer.",
                "« La Ville lumière » (= Paris). « Le roi des animaux » (= le lion).",
              ],
              [
                "Antonomase",
                "Emploi d'un nom propre comme nom commun, ou inversement.",
                "« Un harpagon » (= un avare, d'après le personnage de Molière).",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Métonymie vs synecdoque",
                explanation:
                  "La synecdoque est un type de métonymie fondé sur le rapport partie/tout. « Les voiles » (partie du bateau pour le bateau entier) = synecdoque. « Boire un verre » (contenant pour contenu) = métonymie au sens strict.",
              },
            ],
          },
        ],
      },
      {
        id: "construction",
        title: "Figures de construction",
        badge: "Syntaxe",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Les figures de construction agissent sur l'ordre, la répétition ou la suppression de termes dans la phrase. Elles relèvent de la syntaxe plutôt que du sens.",
          },
          {
            kind: "table",
            caption: "Figures de construction — définitions et exemples",
            headers: ["Figure", "Définition", "Exemple littéraire"],
            rows: [
              [
                "Anaphore",
                "Répétition d'un mot ou groupe en début de vers, phrase ou proposition successifs.",
                "« Moi président de la République, je… Moi président de la République, je… » — (discours politique)",
              ],
              [
                "Parallélisme",
                "Reprise d'une même structure syntaxique dans des propositions successives.",
                "« La nuit était sombre, le vent était froid, la route était longue. »",
              ],
              [
                "Chiasme",
                "Structure croisée AB/BA qui peut souligner une opposition ou une complémentarité.",
                "« Les vieillards meurent, les jeunes combattent. → AB/BA : sujet-verbe / sujet-verbe inversé sémantiquement. »",
              ],
              [
                "Asyndète",
                "Suppression des mots de liaison (conjonctions) entre des propositions ou termes coordonnés.",
                "« Je suis venu, j'ai vu, j'ai vaincu. » — César",
              ],
              [
                "Polysyndète",
                "Répétition volontaire des conjonctions de coordination pour créer un effet d'accumulation.",
                "« Et le ciel, et la mer, et la plaine, et la ville. »",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Anaphore vs répétition simple",
                explanation:
                  "L'anaphore est spécifiquement la répétition en début de vers, phrase ou proposition. Une répétition au milieu ou à la fin porte d'autres noms (épiphore pour la fin).",
              },
              {
                label: "Chiasme : figure d'opposition ET de construction",
                explanation:
                  "Le chiasme est classé dans les figures de construction (croisement syntaxique) mais il produit souvent un effet d'opposition. Il peut figurer dans les deux catégories.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "La comparaison utilise un outil de comparaison (comme, tel…) ; la métaphore est un rapprochement implicite sans outil.",
      "L'oxymore unit des termes contradictoires dans le même groupe syntaxique ; l'antithèse les oppose dans la phrase sans les fusionner.",
      "La litote dit moins pour signifier plus ; l'euphémisme adoucit une réalité pénible sans chercher l'amplification.",
      "La synecdoque est un cas particulier de métonymie fondé sur le rapport partie/tout.",
      "L'anaphore est la répétition en début de vers ou de phrase ; l'épiphore est la répétition en fin.",
      "Identifier une figure de style exige de repérer l'écart par rapport à l'usage ordinaire, puis de nommer le procédé et d'analyser son effet.",
    ],
    quiz: [
      {
        sentence:
          "« Cette obscure clarté qui tombe des étoiles » est une antithèse.",
        isCorrect: false,
        explanation:
          "FAUX. C'est un oxymore : « obscure » et « clarté » sont des termes contradictoires réunis dans le même groupe nominal. L'antithèse opposerait ces termes dans des parties distinctes de la phrase.",
      },
      {
        sentence:
          "« Va, je ne te hais point » est une litote qui signifie en réalité « je t'aime ».",
        isCorrect: true,
        explanation:
          "VRAI. La litote consiste à dire moins pour signifier plus. Chimène dit qu'elle ne hait pas Rodrigue, ce qui signifie en réalité qu'elle l'aime profondément.",
      },
      {
        sentence:
          "Dans « Boire un verre », on observe une synecdoque.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une métonymie (contenant pour contenu). La synecdoque repose spécifiquement sur le rapport partie/tout. Le verre n'est pas une partie de la boisson.",
      },
      {
        sentence:
          "L'anaphore consiste à répéter un mot en fin de vers ou de phrase.",
        isCorrect: false,
        explanation:
          "FAUX. L'anaphore est la répétition en début de vers, phrase ou proposition. La répétition en fin se nomme épiphore.",
      },
      {
        sentence:
          "« Il faut manger pour vivre et non pas vivre pour manger » est un chiasme.",
        isCorrect: true,
        explanation:
          "VRAI. La structure croisée AB/BA (manger-vivre / vivre-manger) est caractéristique du chiasme. Il crée ici une opposition sémantique.",
      },
      {
        sentence:
          "La personnification consiste à remplacer un nom commun par un nom propre.",
        isCorrect: false,
        explanation:
          "FAUX. La personnification attribue des caractéristiques humaines à un objet ou une abstraction. Remplacer un nom commun par un nom propre (ou l'inverse) est une antonomase.",
      },
      {
        sentence:
          "« Va, cours, vole, et nous venge » est une gradation ascendante.",
        isCorrect: true,
        explanation:
          "VRAI. Les verbes sont ordonnés selon une intensité croissante (aller → courir → voler), ce qui constitue une gradation ascendante (climax).",
      },
      {
        sentence:
          "La métaphore filée développe un même champ comparant sur plusieurs phrases ou vers.",
        isCorrect: true,
        explanation:
          "VRAI. La métaphore filée prolonge un réseau d'images issues du même comparant. Par exemple, filer la métaphore du voyage tout au long d'un poème.",
      },
    ],
  },
};
