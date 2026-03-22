import type { Fiche } from "@/features/fiches/types";

export const grammairePropositionsClassificationSprint: Fiche = {
  id: "grammaire-propositions-classification-sprint",
  slug: "propositions-independante-principale-subordonnee-sprint",
  title: "Propositions independantes, principales et subordonnees",
  subtitle:
    "Demeler l'architecture secrete des phrases complexes : chaque proposition a un role, encore faut-il savoir lequel",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "proposition independante",
    "proposition principale",
    "proposition subordonnee",
    "phrase complexe",
    "phrase simple",
    "juxtaposition",
    "coordination",
    "subordination",
    "subordonnee relative",
    "subordonnee completive",
    "subordonnee circonstancielle",
  ],
  notionsLiees: [
    "grammaire-phrase-complexe-sprint",
    "grammaire-subordonnees-relatives-sprint",
    "grammaire-subordonnees-circonstancielles-sprint",
    "grammaire-predicat-structure-sprint",
  ],
  exercicesAssocies: ["grm_propositions_classification"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint couvre l'essentiel sur les propositions independantes, principales et subordonnees au CRPE. Elle s'appuie sur la terminologie officielle Eduscol et cible les confusions les plus frequentes dans les annales.",
    oneLiner:
      "Une phrase complexe est comme un immeuble : chaque proposition est un etage. Certains etages sont autonomes (independantes), d'autres portent le batiment (principales), d'autres encore s'appuient sur les premiers (subordonnees). Une proposition independante ne depend d'aucune autre et n'en regit aucune. Une proposition principale contient (inclut) une subordonnee. Une proposition subordonnee est incluse dans une principale, introduite par un mot subordonnant. Les trois modes de liaison dans la phrase complexe sont la juxtaposition (virgule, point-virgule), la coordination (conjonction de coordination) et la subordination (mot subordonnant). Savoir les reperer, c'est savoir lire l'architecture de toute phrase francaise.",
    exampleCorrect: {
      sentence:
        "\u00ab Le renard qui passait par la vit le corbeau qui tenait un fromage dans son bec. \u00bb",
      explanation:
        "Cette phrase contient trois propositions. La proposition principale est \u00ab Le renard vit le corbeau \u00bb : c'est elle qui porte la structure de la phrase et qui regit les deux subordonnees. La premiere subordonnee relative est \u00ab qui passait par la \u00bb : elle est introduite par le pronom relatif \u00ab qui \u00bb (sujet de \u00ab passait \u00bb) et elle est expansion du nom \u00ab renard \u00bb (fonction : epithete du nom \u00ab renard \u00bb). La seconde subordonnee relative est \u00ab qui tenait un fromage dans son bec \u00bb : elle est introduite par le pronom relatif \u00ab qui \u00bb (sujet de \u00ab tenait \u00bb) et elle est expansion du nom \u00ab corbeau \u00bb (fonction : epithete du nom \u00ab corbeau \u00bb). On a donc bien une principale + deux subordonnees relatives adjectives. Le squelette de la phrase est : [principale [sub. relative 1] ... [sub. relative 2]].",
    },
    exampleWrong: {
      sentence:
        "\u00ab Il pleut et je reste chez moi. \u00bb -- Un candidat analyse cette phrase en disant : \u00ab Il pleut \u00bb est la proposition principale et \u00ab je reste chez moi \u00bb est la proposition subordonnee.",
      explanation:
        "C'est l'erreur la plus frequente au CRPE. Ici, les deux propositions sont reliees par la conjonction de coordination \u00ab et \u00bb : il s'agit donc de deux propositions independantes coordonnees. Aucune n'est principale, aucune n'est subordonnee. Une proposition n'est principale que si elle regit (contient, inclut) au moins une proposition subordonnee. Deux propositions coordonnees par \u00ab et \u00bb, \u00ab mais \u00bb, \u00ab ou \u00bb, etc., sans aucun mot subordonnant, sont toujours des independantes. La coordination place les propositions sur le meme plan ; la subordination cree une relation d'inclusion (la subordonnee est a l'interieur de la principale).",
    },
    mainTrap:
      "Deux pieges majeurs au CRPE : (1) Confondre independante et principale -- une proposition n'est principale que si elle regit au moins une subordonnee. Deux propositions coordonnees par \u00ab et \u00bb sans subordination sont deux INDEPENDANTES, pas une principale et une subordonnee. Le critere est simple : y a-t-il un mot subordonnant (conjonction de subordination, pronom relatif, mot interrogatif) ? Si non, pas de subordination, donc pas de principale. (2) Confondre relative et completive en \u00ab que \u00bb -- dans \u00ab Le livre que je lis \u00bb, \u00ab que \u00bb est un pronom relatif (il remplace \u00ab le livre \u00bb et a une fonction dans la subordonnee : COD de \u00ab lis \u00bb). Dans \u00ab Je pense que tu as raison \u00bb, \u00ab que \u00bb est une conjonction de subordination (il n'a aucune fonction grammaticale a l'interieur de la subordonnee, il sert uniquement a l'introduire). Le test : peut-on remplacer \u00ab que \u00bb par \u00ab lequel / laquelle \u00bb ? Si oui, c'est un pronom relatif ; si non, c'est une conjonction de subordination.",
    quiz: [
      {
        sentence:
          "Dans la phrase \u00ab Il pleut et je reste chez moi \u00bb, les deux propositions sont des propositions independantes coordonnees.",
        isCorrect: true,
        explanation:
          "Les deux propositions sont reliees par la conjonction de coordination \u00ab et \u00bb. Aucune ne regit de subordonnee, aucune n'est incluse dans une autre : ce sont bien deux independantes coordonnees. Pour qu'il y ait une principale, il faudrait qu'un mot subordonnant (conjonction de subordination, pronom relatif) introduise l'une des propositions. Ici, \u00ab et \u00bb est une conjonction de coordination qui place les deux propositions sur le meme plan.",
      },
      {
        sentence:
          "Dans la phrase \u00ab Je sais que tu viendras \u00bb, la proposition \u00ab que tu viendras \u00bb est une subordonnee relative.",
        isCorrect: false,
        explanation:
          "C'est une subordonnee completive conjonctive, pas une relative. Le mot \u00ab que \u00bb est ici une conjonction de subordination : il n'a aucune fonction grammaticale a l'interieur de la subordonnee (on ne peut pas dire \u00ab *lequel tu viendras \u00bb). La subordonnee \u00ab que tu viendras \u00bb est COD du verbe \u00ab sais \u00bb. Dans une relative, \u00ab que \u00bb serait un pronom relatif avec une fonction dans la subordonnee (ex. : \u00ab Le livre que je lis \u00bb \u2192 \u00ab que \u00bb = COD de \u00ab lis \u00bb, remplacable par \u00ab lequel \u00bb).",
      },
      {
        sentence:
          "Dans la phrase \u00ab Quand le soleil se couche, les oiseaux se taisent \u00bb, la proposition principale est \u00ab les oiseaux se taisent \u00bb.",
        isCorrect: true,
        explanation:
          "La proposition \u00ab quand le soleil se couche \u00bb est une subordonnee circonstancielle de temps, introduite par la conjonction de subordination \u00ab quand \u00bb. Elle est incluse dans la phrase dont \u00ab les oiseaux se taisent \u00bb est la proposition principale. C'est bien la principale qui regit la subordonnee : sans elle, la subordonnee circonstancielle ne pourrait pas exister de facon autonome. La principale est le pilier qui porte la subordonnee.",
      },
      {
        sentence:
          "La juxtaposition, c'est quand deux propositions independantes sont separees par une virgule, un point-virgule ou des deux-points, sans mot de liaison.",
        isCorrect: true,
        explanation:
          "C'est la definition exacte de la juxtaposition selon la terminologie officielle Eduscol. Exemples : \u00ab Le vent soufflait, la pluie tombait \u00bb (virgule) ; \u00ab Il fait froid ; je rentre \u00bb (point-virgule) ; \u00ab Je ne sors pas : il pleut \u00bb (deux-points). Les propositions juxtaposees sont des independantes -- elles sont sur le meme plan, simplement separees par un signe de ponctuation au lieu d'etre reliees par une conjonction.",
      },
      {
        sentence:
          "Dans la phrase \u00ab L'homme qui court est mon voisin \u00bb, la proposition \u00ab qui court \u00bb est une subordonnee relative adjective, expansion du nom \u00ab homme \u00bb.",
        isCorrect: true,
        explanation:
          "La proposition \u00ab qui court \u00bb est bien une subordonnee relative introduite par le pronom relatif \u00ab qui \u00bb (qui a la fonction sujet du verbe \u00ab court \u00bb a l'interieur de la subordonnee). Elle fonctionne comme une expansion du nom \u00ab homme \u00bb -- sa fonction est epithete du nom. C'est une subordonnee relative adjective car elle equivaut a un adjectif qualificatif (\u00ab l'homme courant \u00bb). La proposition principale est \u00ab L'homme est mon voisin \u00bb.",
      },
      {
        sentence:
          "Dans la phrase \u00ab Je crois qu'il sait que tu mens \u00bb, il y a deux propositions subordonnees et une seule proposition principale.",
        isCorrect: true,
        explanation:
          "Cette phrase presente un enchassement a deux niveaux. La proposition principale est \u00ab Je crois \u00bb. La premiere subordonnee completive est \u00ab qu'il sait que tu mens \u00bb (COD de \u00ab crois \u00bb). A l'interieur de cette premiere subordonnee, la seconde subordonnee completive est \u00ab que tu mens \u00bb (COD de \u00ab sait \u00bb). La proposition \u00ab il sait \u00bb est a la fois subordonnee (par rapport a \u00ab je crois \u00bb) et principale (par rapport a \u00ab que tu mens \u00bb). On a donc bien une principale (\u00ab je crois \u00bb) et deux subordonnees enchassees.",
      },
    ],
    linkToReference: undefined,
  },
};
