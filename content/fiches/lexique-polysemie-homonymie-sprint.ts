import type { Fiche } from "@/features/fiches/types";

export const polysemieHomonymieSprint: Fiche = {
  id: "lexique-polysemie-homonymie-sprint",
  slug: "polysemie-homonymie-sprint",
  title: "Polysémie et homonymie",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "polysémie",
    "homonymie",
    "homophones",
    "homographes",
    "sens figuré",
    "sens propre",
  ],
  notionsLiees: ["formation-des-mots-sprint", "champs-lexicaux-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite de la distinction polysémie/homonymie selon la terminologie officielle Éduscol 2021. La frontière entre les deux phénomènes repose sur le critère du lien sémantique entre les acceptions — c'est précisément sur cette zone que portent les pièges du CRPE.",
    oneLiner:
      "La polysémie désigne un même mot possédant plusieurs sens liés entre eux par analogie, métaphore ou métonymie (« souris » : rongeur → par analogie de forme, périphérique d'ordinateur). L'homonymie désigne des mots différents qui partagent la même forme sans lien de sens (« mousse » la plante et « mousse » le jeune marin). Parmi les homonymes, on distingue les homonymes homophones (même prononciation, écriture différente : vers / vert / verre) et les homonymes homographes (même écriture, sens différents : les fils de mon frère / les fils de laine).",
    exampleCorrect: {
      sentence:
        "Le mot « souris » est polysémique : souris (rongeur) → souris (d'ordinateur), par analogie de forme (petit objet que l'on tient dans la main, avec un fil évoquant la queue).",
      explanation:
        "Les deux sens de « souris » sont reliés par une extension métaphorique : le périphérique informatique a été nommé ainsi par analogie avec l'animal (forme arrondie, fil/queue). Le lien sémantique est perceptible : c'est bien de la polysémie. Un seul mot, plusieurs acceptions reliées, une seule entrée dans le dictionnaire.",
    },
    exampleWrong: {
      sentence:
        "« Mousse » (plante), « mousse » (jeune marin) et « mousse » (substance légère) sont un cas de polysémie car c'est le même mot avec plusieurs sens.",
      explanation:
        "FAUX. Ces trois « mousse » sont des homonymes, pas un mot polysémique. Ils ont des origines étymologiques distinctes et aucun lien de sens : mousse (plante, du francique *mosa), mousse (marin, de l'espagnol mozo), mousse (substance, du francique *mosa mais branche distincte). Le dictionnaire leur attribue des entrées séparées. Même forme ne signifie pas même mot.",
    },
    mainTrap:
      "Le critère discriminant est le lien sémantique entre les acceptions. Si les sens dérivent historiquement du même mot et qu'un lien par analogie, métaphore ou métonymie est perceptible, c'est de la polysémie (un mot, plusieurs sens). Si les mots ont des origines distinctes et qu'aucun lien de sens n'est perceptible, ce sont des homonymes (des mots différents qui coïncident par la forme). En pratique, le dictionnaire tranche : un mot polysémique a une seule entrée avec des définitions numérotées ; des homonymes ont des entrées séparées (souvent marquées par des exposants : mousse¹, mousse²).",
    quiz: [
      {
        sentence:
          "Les homonymes homophones partagent la même prononciation mais ont une écriture et un sens différents, comme « vers » (direction), « vert » (couleur) et « verre » (récipient).",
        isCorrect: true,
        explanation:
          "Exact. C'est la définition même des homonymes homophones selon la terminologie Éduscol 2021 : même prononciation (/vɛʁ/), mais graphies et sens différents. Ils n'ont aucun lien sémantique entre eux — ce sont des mots distincts qui se prononcent de la même façon.",
      },
      {
        sentence:
          "Les homonymes homographes ont la même écriture mais des sens différents, comme « fils » dans « les fils de mon frère » et « les fils de laine ».",
        isCorrect: true,
        explanation:
          "Exact. « Fils » (/fis/, descendant) et « fils » (/fil/, brins) s'écrivent de la même façon mais ont des sens sans rapport et des prononciations différentes. Ce sont des homonymes homographes. Ici, la différence de prononciation aide à les distinguer, mais ce n'est pas toujours le cas (« livre » le livre / la livre se prononcent identiquement).",
      },
      {
        sentence:
          "Le mot « opération » (chirurgicale / mathématique / militaire) est un cas d'homonymie car les sens sont très éloignés les uns des autres.",
        isCorrect: false,
        explanation:
          "FAUX. Malgré la diversité des domaines, les sens d'« opération » sont reliés par un noyau sémantique commun : action méthodique et organisée visant un résultat. Les extensions se sont faites par analogie à partir de ce sens central. Le lien est perceptible : c'est de la polysémie, pas de l'homonymie. Un seul mot, une seule entrée dans le dictionnaire.",
      },
      {
        sentence:
          "En classe de cycle 3, travailler la polysémie aide les élèves en compréhension de lecture car ils apprennent à sélectionner le bon sens d'un mot selon le contexte.",
        isCorrect: true,
        explanation:
          "Exact. La compétence à désambiguïser un mot polysémique en contexte est une compétence de lecture fondamentale. Les programmes de cycle 3 demandent explicitement de distinguer les différents sens d'un mot et de s'appuyer sur le contexte pour identifier le sens pertinent. Les élèves faibles lecteurs tendent à plaquer systématiquement le sens le plus courant d'un mot polysémique.",
      },
      {
        sentence:
          "Les mots « son » (bruit, du latin sonus), « son » (enveloppe du grain, du francique *sunna) et « son » (déterminant possessif, du latin suum) sont un cas de polysémie d'un même mot.",
        isCorrect: false,
        explanation:
          "FAUX. Ce sont trois homonymes. Ils ont des origines étymologiques distinctes et aucun lien de sens entre eux. Le dictionnaire leur consacre des entrées séparées. La coïncidence de forme (même graphie, même prononciation) ne suffit pas à faire un mot polysémique : le critère est le lien sémantique, pas la forme.",
      },
    ],
  },
};
