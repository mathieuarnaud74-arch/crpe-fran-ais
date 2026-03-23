import type { Fiche } from "@/features/fiches/types";

export const didactiqueMultiplicationSprint: Fiche = {
  id: "didactique-multiplication-sprint",
  slug: "didactique-multiplication-sprint",
  title: "Didactique de la multiplication",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "multiplication",
    "structures multiplicatives",
    "Vergnaud",
    "addition itérée",
    "produit scalaire",
    "tables de multiplication",
    "cycle 2",
    "CE1",
    "CE2",
    "commutativité",
    "distributivité",
  ],
  notionsLiees: [
    "didactique-addition-sprint",
    "didactique-division-sprint",
    "didactique-calcul-pose-sprint",
    "didactique-vergnaud-structures-sprint",
    "didactique-resolution-problemes-sprint",
  ],
  exercicesAssocies: ["math_didactique_multiplication"],
  content: {
    model: "sprint",
    disclaimer:
      "La multiplication est souvent réduite à l'apprentissage des tables, mais sa didactique couvre les deux sens fondamentaux (addition itérée et produit scalaire), la construction du sens de l'opération, et la progression vers les algorithmes. Au CRPE, les questions portent sur l'analyse des erreurs aux tables, les structures de problèmes multiplicatifs et les stratégies de calcul réfléchi.",
    oneLiner:
      "La multiplication recouvre deux structures principales (Vergnaud, champ conceptuel des structures multiplicatives) : l'ADDITION ITÉRÉE (3 fois 4 = 4 + 4 + 4) et le PRODUIT SCALAIRE / proportionnalité (3 groupes de 4, ou toute situation de proportionnalité simple). Enseigner la multiplication, c'est d'abord faire comprendre ces deux sens via des situations concrètes AVANT de mémoriser les tables et d'appliquer l'algorithme posé.",
    exampleCorrect: {
      sentence:
        "Un enseignant de CE1 introduit la multiplication avec le problème : « 4 enfants reçoivent chacun 3 bonbons. Combien de bonbons en tout ? » et demande aux élèves de calculer d'abord par addition itérée (3+3+3+3), puis d'écrire 4×3.",
      explanation:
        "La démarche est pertinente. En partant d'une situation concrète (addition répétée), l'élève comprend que 4×3 est un raccourci pour 3+3+3+3. Cette mise en relation entre la multiplication et l'addition itérée fonde le sens de l'opération. L'introduction progressive (addition → multiplication) est recommandée par Éduscol. Note : la multiplication introduite comme addition itérée prépare aussi à la commutativité (3×4 = 4×3 se vérifie par manipulation, même si 3+3+3+3 ≠ 4+4+4 physiquement).",
    },
    exampleWrong: {
      sentence:
        "La commutativité de la multiplication (3×4 = 4×3) est évidente et n'a pas besoin d'être enseignée explicitement.",
      explanation:
        "FAUX pour les élèves de cycle 2. Si 3×4 = 4×3 est une évidence mathématique, elle n'est pas évidente pour un enfant de CE1 : « 3 fois 4 » (3 groupes de 4) n'est pas immédiatement identique à « 4 fois 3 » (4 groupes de 3) dans sa représentation mentale. La vérification par manipulation (disposer des objets en tableau rectangulaire et le retourner) est nécessaire pour que l'élève COMPRENNE la commutativité, au lieu de simplement la mémoriser comme règle. Sans compréhension, les erreurs aux tables persistent (confondre 6×8 et 8×6 selon leur position dans le tableau).",
    },
    mainTrap:
      "Réduire l'enseignement de la multiplication à l'apprentissage des tables par cœur. Les tables sont bien un OBJECTIF final (automatisation nécessaire au CE2, selon Éduscol), mais les mémoriser sans avoir construit le sens produit un savoir fragile et des difficultés à résoudre des problèmes multiplicatifs. La progression efficace passe par : (1) addition itérée avec manipulation → (2) tableau rectangulaire et commutativité → (3) stratégies de calcul réfléchi (doubler, compléter, utiliser des faits connus) → (4) mémorisation progressive des tables → (5) algorithme posé.",
    quiz: [
      {
        sentence:
          "Le problème « Un livre coûte 6 €. Combien coûtent 5 livres ? » relève d'une structure multiplicative d'addition itérée.",
        isCorrect: true,
        explanation:
          "Exact. Ce problème est résolu par 5×6 = 30 €, qui est structurellement une addition itérée : 6+6+6+6+6. C'est le sens le plus accessible de la multiplication pour les élèves de CE1. La situation de proportionnalité simple (5 fois la même quantité) est la porte d'entrée naturelle dans la multiplication. Dès le CE2, ce sens sera élargi aux problèmes de proportionnalité à deux variables (vitesse × temps = distance, prix unitaire × quantité = prix total).",
      },
      {
        sentence:
          "La table de multiplication par 1 (1×1=1, 1×2=2…) est la plus facile à mémoriser et doit donc être enseignée en premier.",
        isCorrect: false,
        explanation:
          "FAUX sur le plan didactique. Les recherches sur l'apprentissage des tables suggèrent que les tables les plus faciles à mémoriser sont celles de 2, 5 et 10, car elles reposent sur des régularités facilement perceptibles (doublement, compte par 5, zéro à la fin). La table de 1 est triviale mathématiquement mais peu riche pour construire le sens multiplicatif. Les progressions efficaces commencent souvent par la table de 2 (doublement, lié à la paire) puis 5 et 10, avant d'aborder les tables plus difficiles (7, 8, 9).",
      },
      {
        sentence:
          "Un élève de CE2 qui écrit 34 × 5 = 150 en calculant 30×5 + 4×5 = 150+20 = 170 et obtient un résultat faux (150 au lieu de 170) manifeste une erreur de distributivité.",
        isCorrect: true,
        explanation:
          "Exactement. L'élève applique correctement la distributivité (34×5 = 30×5 + 4×5) mais commet une erreur de calcul final en additionnant incorrectement 150 + 20 = 150 au lieu de 170. L'utilisation de la distributivité est pertinente (c'est une stratégie de calcul réfléchi efficace), mais l'élève a fait une erreur dans l'addition des produits partiels. L'enseignant doit valoriser la stratégie correcte et cibler la remédiation sur l'addition des grands nombres.",
      },
      {
        sentence:
          "L'algorithme de multiplication posée doit être introduit en CE1 pour préparer les élèves aux calculs du CE2.",
        isCorrect: false,
        explanation:
          "FAUX. L'algorithme de multiplication posée (avec retenues) est un objectif de CE2 dans les programmes Éduscol (multiplication d'un nombre à 3 chiffres par un nombre à 1 chiffre). En CE1, les objectifs sont : tables de multiplication (2, 3, 4, 5, 10), multiplication en ligne (2 chiffres × 1 chiffre sans retenue), et résolution de problèmes multiplicatifs simples. Introduire l'algorithme posé prématurément perturbe la construction du sens et génère des confusions avec l'algorithme d'addition.",
      },
      {
        sentence:
          "La propriété de distributivité de la multiplication sur l'addition (a × (b + c) = a×b + a×c) est une stratégie de calcul réfléchi exploitable dès le CE2.",
        isCorrect: true,
        explanation:
          "Exact. La distributivité est explicitement au programme du cycle 3, mais ses applications pratiques en calcul réfléchi peuvent être introduites dès le CE2 sous forme de décomposition : 7×8 = 7×(5+3) = 35+21 = 56, ou 6×9 = 6×(10−1) = 60−6 = 54. Ces stratégies, travaillées dans le cadre du calcul mental, permettent aux élèves de retrouver les faits multiplicatifs non mémorisés plutôt que de bloquer ou d'utiliser une addition itérée longue.",
      },
    ],
  },
};
