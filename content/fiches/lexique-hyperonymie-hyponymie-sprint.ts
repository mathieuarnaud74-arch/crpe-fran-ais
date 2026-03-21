import type { Fiche } from "@/features/fiches/types";

export const hyperonymieHyponymieSprint: Fiche = {
  id: "lexique-hyperonymie-hyponymie-sprint",
  slug: "hyperonymie-hyponymie-sprint",
  title: "Hyperonymie et hyponymie",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "hyperonymie",
    "hyponymie",
    "relations sémantiques",
    "vocabulaire",
    "classification",
  ],
  notionsLiees: [
    "synonymie-antonymie-sprint",
    "champs-lexicaux-sprint",
    "formation-des-mots-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la relation d'inclusion sémantique (hyperonymie/hyponymie), une notion fondamentale en lexicologie et fréquemment évaluée au CRPE. Elle est aussi centrale en didactique du vocabulaire : apprendre à catégoriser est un objectif explicite des programmes de cycles 2 et 3.",
    oneLiner:
      "L'hyperonyme est un mot de sens plus général qui inclut le sens d'autres mots : « animal » est l'hyperonyme de « chat », « chien », « oiseau ». L'hyponyme est le mot de sens plus spécifique, inclus dans l'hyperonyme : « chat » est un hyponyme d'« animal ». Des mots qui partagent le même hyperonyme sont des co-hyponymes (chat, chien, oiseau sont co-hyponymes d'animal). Cette relation est hiérarchique et transitive : si « chat » est hyponyme d'« animal » et « animal » est hyponyme d'« être vivant », alors « chat » est hyponyme d'« être vivant ».",
    exampleCorrect: {
      sentence:
        "« Fleur » est l'hyperonyme de « rose », « tulipe », « marguerite ». On peut dire : « La rose est une fleur » (test d'inclusion : l'hyponyme EST UN(E) + hyperonyme).",
      explanation:
        "Le test « X est un(e) Y » vérifie la relation d'hyponymie. Si la phrase est naturelle et vraie, alors X est hyponyme de Y et Y est hyperonyme de X. Ce test est simple, fiable, et utilisable en classe dès le cycle 2. Il permet de distinguer la relation d'inclusion (hyperonymie) de la simple association thématique (champ lexical).",
    },
    exampleWrong: {
      sentence:
        "« Rouge » est un hyponyme de « couleur », donc « couleur » et « rouge » sont synonymes puisqu'on peut dire « un ballon rouge » ou « un ballon de couleur ».",
      explanation:
        "FAUX. Hyperonymie et synonymie sont deux relations distinctes. L'hyperonyme a un sens plus large que l'hyponyme : on perd en précision quand on remplace l'hyponyme par l'hyperonyme. « Un ballon rouge » et « un ballon de couleur » n'ont pas le même sens : le second perd l'information spécifique. Les synonymes, eux, sont substituables sans perte majeure de sens.",
    },
    mainTrap:
      "Confondre le champ lexical et la relation d'hyperonymie. Le champ lexical regroupe des mots liés à un même thème, quelles que soient les relations entre eux (« mer, vague, naviguer, salé » = champ lexical de la mer). L'hyperonymie est une relation hiérarchique d'inclusion : chaque hyponyme EST un exemplaire de l'hyperonyme. « Naviguer » appartient au champ lexical de la mer, mais n'est pas un hyponyme de « mer ». Au CRPE, on attend du candidat qu'il distingue nettement ces deux notions et qu'il utilise le bon terme.",
    quiz: [
      {
        sentence:
          "La relation d'hyperonymie est une relation d'inclusion : tout hyponyme est inclus dans la classe désignée par l'hyperonyme.",
        isCorrect: true,
        explanation:
          "Exact. C'est la définition même de l'hyperonymie : une relation hiérarchique d'inclusion sémantique. Tout chat est un animal (inclusion), mais tout animal n'est pas un chat. L'hyperonyme désigne la catégorie englobante, l'hyponyme désigne un élément de cette catégorie.",
      },
      {
        sentence:
          "« Meuble » est un hyperonyme de « table », et « table » est un hyperonyme de « table basse ». Donc « table basse » est un hyponyme de « meuble » : la relation est transitive.",
        isCorrect: true,
        explanation:
          "Exact. L'hyperonymie est transitive : si A est hyperonyme de B, et B est hyperonyme de C, alors A est hyperonyme de C. Cette propriété permet de construire des arborescences lexicales (taxonomies) à plusieurs niveaux, un exercice très formateur pour les élèves de cycle 3.",
      },
      {
        sentence:
          "Deux co-hyponymes sont toujours synonymes puisqu'ils partagent le même hyperonyme.",
        isCorrect: false,
        explanation:
          "FAUX. Les co-hyponymes partagent le même hyperonyme mais ne sont pas synonymes. « Chat » et « chien » sont tous deux hyponymes d'« animal », mais ils ne sont pas substituables l'un à l'autre. Les co-hyponymes se distinguent entre eux par des traits sémantiques spécifiques (les sèmes différentiels). C'est la co-hyponymie, pas la synonymie.",
      },
      {
        sentence:
          "Remplacer un hyponyme par son hyperonyme dans un texte permet de généraliser sans changer le sens de la phrase.",
        isCorrect: false,
        explanation:
          "FAUX. Remplacer un hyponyme par son hyperonyme entraîne une perte de précision. « J'ai cueilli une rose » devient « J'ai cueilli une fleur » : le sens est modifié, l'information spécifique disparaît. En revanche, cette substitution est un procédé de reprise anaphorique fréquent dans les textes (anaphore par hyperonyme), ce qui lie cette notion à la cohésion textuelle.",
      },
      {
        sentence:
          "En didactique, les activités de classement (regrouper des mots sous une étiquette commune) travaillent précisément la relation d'hyperonymie/hyponymie.",
        isCorrect: true,
        explanation:
          "Exact. Les activités de catégorisation lexicale (trier des mots en trouvant l'étiquette commune, construire des arborescences, jouer à l'intrus) mobilisent directement la relation d'hyperonymie. Ces activités sont recommandées dès le cycle 2 par les programmes pour structurer le lexique mental des élèves. Elles développent la capacité à organiser le vocabulaire en réseaux hiérarchiques.",
      },
    ],
  },
};
