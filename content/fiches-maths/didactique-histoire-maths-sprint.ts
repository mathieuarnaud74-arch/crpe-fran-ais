import type { Fiche } from "@/features/fiches/types";

export const didactiqueHistoireMathsSprint: Fiche = {
  id: "didactique-histoire-maths-sprint",
  slug: "histoire-des-mathematiques-crpe-reperes",
  title: "Histoire des mathématiques : repères essentiels pour le CRPE",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "histoire des mathématiques",
    "Thalès",
    "Pythagore",
    "Euclide",
    "Al-Khwarizmi",
    "Descartes",
    "numération",
    "algèbre",
    "épistémologie",
    "CRPE oral",
  ],
  notionsLiees: [
    "didactique-programmes-cycles-reference",
    "didactique-representations-reference",
    "didactique-situations-recherche-sprint",
  ],
  exercicesAssocies: ["math_histoire_mathematiques"],
  content: {
    model: "sprint",
    disclaimer:
      "L'histoire des mathématiques est mobilisée au CRPE pour montrer que les savoirs mathématiques sont des constructions humaines et culturelles. Elle nourrit l'analyse épistémologique des notions enseignées et apparaît dans certaines questions de l'épreuve écrite et de l'oral.",
    oneLiner:
      "L'histoire des mathématiques permet de comprendre POURQUOI les concepts ont été construits (quel problème résolvaient-ils ?) et comment leur enseignement peut s'appuyer sur cette genèse. Elle montre que les mathématiques ne sont pas un ensemble de vérités abstraites tombées du ciel, mais des outils forgés pour répondre à des besoins concrets : mesurer, partager, construire, calculer, prévoir.",
    exampleCorrect: {
      sentence:
        "Pour introduire les fractions en CM1, un enseignant raconte que les Égyptiens de l'Antiquité n'utilisaient que des fractions unitaires (1/2, 1/3, 1/4…) et pose la question : « Comment auraient-ils écrit 3/4 ? » (réponse : 1/2 + 1/4). Cette approche historique motive la compréhension des fractions équivalentes.",
      explanation:
        "C'est un usage pertinent de l'histoire. Le problème historique (les fractions égyptiennes, papyrus de Rhind, ~1650 av. J.-C.) illustre que 3/4 n'est pas « naturel » — il a fallu l'inventer. La question posée fait réfléchir à la décomposition de fractions et crée un obstacle cognitif productif. L'histoire joue ici son rôle épistémologique : montrer que les conventions actuelles sont des constructions, pas des évidences.",
    },
    exampleWrong: {
      sentence:
        "Dire aux élèves : « Pythagore a découvert son théorème il y a 2600 ans » sans lien avec la notion enseignée ni avec la démarche mathématique.",
      explanation:
        "Usage anecdotique de l'histoire, sans portée didactique. L'information historique est vraie mais elle n'aide pas les élèves à comprendre le théorème. Un usage pertinent consisterait à montrer la preuve par les carreaux (tablette babylonienne antérieure à Pythagore) ou à poser le problème concret qui a motivé la découverte (construire un angle droit avec une corde à 12 nœuds, outil des arpenteurs égyptiens : triangle 3-4-5).",
    },
    mainTrap:
      "Réduire l'histoire des mathématiques à une collection d'anecdotes sur les « grands mathématiciens ». Ce qui est utile au CRPE, c'est l'HISTOIRE DES NOTIONS (comment la notion a émergé, quels problèmes elle résolvait, quelles difficultés ont dû être surmontées), pas la biographie des savants. Les obstacles épistémologiques historiques (ex : résistance à l'idée de nombre négatif, refus du zéro comme nombre) sont souvent des obstacles didactiques que les élèves rencontrent aussi aujourd'hui.",
    quiz: [
      {
        sentence:
          "Le théorème de Pythagore était connu des Babyloniens avant Pythagore lui-même (VIe siècle av. J.-C.).",
        isCorrect: true,
        explanation:
          "VRAI. La tablette babylonienne Plimpton 322 (~1800 av. J.-C.) montre que les Babyloniens connaissaient les triplets pythagoriciens (3,4,5 ; 5,12,13…) bien avant Pythagore. Les arpenteurs égyptiens utilisaient la corde à 12 nœuds (triangle 3-4-5) pour construire des angles droits. Pythagore (ou son école) est crédité d'avoir DÉMONTRÉ la propriété générale, pas de l'avoir découverte. Cette nuance illustre que mathématiques pratiques (observation, outil) et mathématiques théoriques (démonstration) ont des histoires distinctes.",
      },
      {
        sentence:
          "Le mot « algèbre » vient du titre d'un ouvrage de René Descartes, « La Géométrie » (1637).",
        isCorrect: false,
        explanation:
          "FAUX. Le mot « algèbre » vient de l'arabe « al-jabr » (la réduction, la restauration), titre d'un ouvrage du mathématicien Muhammad Ibn Musa Al-Khwarizmi (IXe siècle, Bagdad) : « Kitāb al-mukhtaṣar fī ḥisāb al-jabr wa-l-muqābala ». C'est lui qui a systématisé la résolution d'équations du second degré. Son nom latinisé, « Algorithmi », a donné le mot « algorithme ». Descartes, lui, a fondé la géométrie analytique (plan cartésien) et a introduit la notation exponentielle (x²) en 1637.",
      },
      {
        sentence:
          "Le zéro comme chiffre à part entière a été introduit dans le système de numération de position par les mathématiciens indiens (VIIe siècle ap. J.-C.).",
        isCorrect: true,
        explanation:
          "VRAI. Le zéro en tant que chiffre positionnel (marqueur de la position vide dans une écriture positionnelle) a été formalisé par Brahmagupta en Inde au VIIe siècle (628 ap. J.-C.). Les Mayas avaient aussi un zéro indépendamment. Ce concept a ensuite été transmis en Europe via les mathématiciens arabes (Al-Khwarizmi). En Europe, l'adoption du zéro et de la numération indo-arabe (Fibonacci, XIIIe siècle) a mis des siècles, en raison de la résistance culturelle à l'idée d'un « rien » qui compte. Cet obstacle historique rappelle les difficultés des élèves avec le zéro aujourd'hui.",
      },
      {
        sentence:
          "Les Grecs anciens considéraient que √2 était irrationnel, ce qui constitua un scandale mathématique à l'époque.",
        isCorrect: true,
        explanation:
          "VRAI. La découverte que √2 ne peut pas s'écrire comme un rapport de deux entiers (irrationnalité) est attribuée à l'école pythagoricienne (Ve siècle av. J.-C.), et elle causa un véritable conflit philosophique car elle brisait la croyance que « tout est nombre » (c'est-à-dire rapport d'entiers). La légende veut qu'Hippase de Métaponte, qui aurait divulgué cette découverte, fut noyé. Cet épisode illustre comment un obstacle mathématique peut avoir des enjeux culturels et philosophiques forts, tout comme certains élèves « résistent » à l'existence des nombres décimaux non périodiques.",
      },
      {
        sentence:
          "Utiliser l'histoire des mathématiques en classe est une recommandation explicite des programmes Éduscol pour l'école primaire.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes de cycle 2 et cycle 3 (Éduscol, Bulletin officiel) mentionnent explicitement que « l'histoire des mathématiques nourrit la curiosité et montre que les mathématiques sont une science vivante » et que des « repères culturels et historiques » doivent être intégrés à l'enseignement. L'usage de l'histoire n'est pas anecdotique ni réservé au collège/lycée : dès le primaire, des repères sur l'origine des nombres, des systèmes de numération variés (égyptien, romain, maya), ou des instruments historiques (abaque, boulier) enrichissent la compréhension des notions.",
      },
    ],
  },
};
