import type { Fiche } from "@/features/fiches/types";

export const famillesMotsSprint: Fiche = {
  id: "lexique-familles-mots-sprint",
  slug: "familles-mots-sprint",
  title: "Familles de mots : base, radical, racine",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "familles de mots",
    "base",
    "radical",
    "racine",
    "dérivation",
    "étymologie",
  ],
  notionsLiees: ["formation-des-mots-sprint", "champs-lexicaux-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche clarifie la distinction entre base, radical et racine — trois termes souvent confondus dans les copies du CRPE. La terminologie officielle Éduscol 2021 utilise « base » et « affixe » pour décrire la formation des mots par dérivation. Le terme « radical » reste courant dans les grammaires scolaires, mais il faut savoir le distinguer précisément de « base » et de « racine ».",
    oneLiner:
      "Une famille de mots regroupe tous les mots formés à partir d'un même élément de base, partageant un lien de sens. La base est le mot ou la forme qui sert de point de départ à une dérivation (« chanter » est la base de « chanteur »). Le radical est la forme que prend la base quand elle entre en combinaison avec un affixe (dans « chanteur », le radical est « chant- »). La racine est l'élément étymologique originel, souvent latin ou grec (la racine latine « cant- » pour chanter). La base opère en synchronie (état actuel de la langue), la racine en diachronie (histoire de la langue).",
    exampleCorrect: {
      sentence:
        "« Terre, terrain, terrestre, enterrer, déterrer, terrien, atterrir » forment une famille de mots. La base de « enterrer » est « terre » ; le radical dans « terr-estre » est « terr- » ; la racine latine est terra.",
      explanation:
        "Tous ces mots partagent l'élément « terr- » et un lien de sens avec la notion de sol/terre. La base « terre » est le mot existant en français actuel à partir duquel les dérivés sont formés (en- + terre + -er). Le radical « terr- » est la forme réduite de la base dans la combinaison avec les affixes. La racine latine terra est l'étymon historique.",
    },
    exampleWrong: {
      sentence:
        "« Terrible » et « terrain » appartiennent à la même famille de mots car ils commencent tous les deux par « terr- ».",
      explanation:
        "FAUX. « Terrible » vient du latin terrere (effrayer), tandis que « terrain » vient de terra (terre). La ressemblance formelle (terr-) est trompeuse : les racines latines sont différentes, et les sens ne sont pas liés. Pour appartenir à la même famille, il faut un lien de forme ET de sens. C'est un piège classique du CRPE : ne jamais se fier à la seule apparence graphique.",
    },
    mainTrap:
      "La confusion la plus fréquente au CRPE est d'employer indifféremment « base », « radical » et « racine ». Or ces trois termes désignent des réalités distinctes. La base est le mot de départ en français contemporain (synchronie) : « faire » est la base de « refaire ». Le radical est la forme que prend la base devant un affixe : « fais- » dans « faisable ». La racine est l'étymon historique (diachronie) : la racine latine facere. Autre piège : regrouper dans une famille des mots qui partagent une forme commune mais pas de lien de sens (faux amis morphologiques).",
    quiz: [
      {
        sentence:
          "Pour appartenir à la même famille de mots, deux mots doivent partager à la fois un élément formel commun (radical) et un lien de sens.",
        isCorrect: true,
        explanation:
          "Exact. Le double critère forme + sens est indispensable. « Terrible » et « terrain » partagent la séquence « terr- » (forme) mais n'ont aucun lien de sens (effrayer vs sol). Ils n'appartiennent pas à la même famille. À l'inverse, « terre » et « atterrir » partagent le radical « terr- » et un lien de sens (rapport au sol) : même famille.",
      },
      {
        sentence:
          "La base et le radical sont toujours identiques dans un mot dérivé.",
        isCorrect: false,
        explanation:
          "FAUX. La base est le mot complet servant de point de départ, tandis que le radical est la forme que prend la base dans la construction. Exemple : la base est « fleur », mais le radical dans « fleur-iste » est « fleur- » (identique ici), tandis que dans « flor-al » le radical est « flor- » (forme savante). La base peut avoir plusieurs radicaux (allomorphes) selon les dérivés.",
      },
      {
        sentence:
          "La racine d'un mot est un concept diachronique qui renvoie à l'étymologie, tandis que la base est un concept synchronique qui opère en français actuel.",
        isCorrect: true,
        explanation:
          "Exact. La racine se situe dans l'histoire de la langue : c'est l'étymon originel (souvent latin ou grec). La base se situe dans l'état actuel du français : c'est le mot existant à partir duquel un locuteur forme un dérivé. Un élève de cycle 3 travaille surtout avec les bases (morphologie synchronique), tandis que la racine relève de l'étymologie (approche diachronique).",
      },
      {
        sentence:
          "Famille de mots et champ lexical désignent la même réalité linguistique, seul le terme change.",
        isCorrect: false,
        explanation:
          "FAUX. La famille de mots est fondée sur un critère morphologique (partage d'un radical et lien de sens). Le champ lexical est fondé sur un critère thématique (mots se rapportant au même thème, quelle que soit leur forme). « Mer, naviguer, vague, marin » forment un champ lexical. Seuls « mer, marin, maritime » forment une famille de mots (radical mar-/mer-). « Naviguer » et « vague » n'en font pas partie.",
      },
      {
        sentence:
          "Un mot peut avoir plusieurs radicaux selon le dérivé : « fleur » donne « fleur-iste » mais aussi « flor-al » avec un radical savant d'origine latine.",
        isCorrect: true,
        explanation:
          "Exact. On parle d'allomorphie du radical. Le français a souvent un radical populaire (hérité du latin parlé : fleur) et un radical savant (emprunté au latin écrit : flor-). Autres exemples : « eau / aqu- » (aquatique), « œil / ocul- » (oculaire), « cheval / équ- » (équestre). Ces doublets sont fréquents et constituent un savoir attendu au CRPE.",
      },
    ],
  },
};
