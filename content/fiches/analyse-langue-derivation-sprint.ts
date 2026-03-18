import type { Fiche } from "@/features/fiches/types";

export const derivationSprint: Fiche = {
  id: "analyse-langue-derivation-sprint",
  slug: "derivation-sprint",
  title: "La dérivation",
  subtitle: "Révision express — 5 min",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["dérivation", "préfixe", "suffixe", "radical", "morphologie"],
  notionsLiees: ["formation-des-mots-sprint", "champs-lexicaux-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la dérivation affixale (préfixe et suffixe). La composition (portefeuille, chou-fleur) est traitée dans la fiche « Formation des mots ». L'enjeu au CRPE est double : analyser un mot inconnu par ses morphèmes et concevoir des activités de dérivation en cycle 3.",
    oneLiner:
      "La dérivation forme de nouveaux mots en ajoutant un préfixe (avant le radical) ou un suffixe (après) à un mot de base. Le préfixe modifie le sens sans changer la catégorie grammaticale ; le suffixe peut changer la catégorie (travailler [verbe] → travailleur [nom]).",
    exampleCorrect: {
      sentence:
        "Réécriture : ré- (préfixe de répétition) + écrire (radical verbal) + -ure (suffixe nominalisant) → nom féminin signifiant « action d'écrire à nouveau ».",
      explanation:
        "L'analyse morphémique est correcte. Le préfixe ré- n'a pas changé la catégorie du radical (verbe → verbe), mais le suffixe -ure a nominalisé l'ensemble. Ce type de segmentation est attendu dans les exercices de morphologie au CRPE.",
    },
    exampleWrong: {
      sentence:
        "Dans « individu », « in- » est le préfixe de négation (comme dans « injuste »).",
      explanation:
        "FAUX. Dans « individu » (du latin individuum, indivisible), le préfixe in- est un préfixe de négation d'origine latine, mais le radical -dividu n'existe pas comme mot autonome en français. Ce n'est donc pas un dérivé transparent : on ne peut pas déduire le sens de « individu » en séparant in- + dividu. La dérivation productive suppose un radical libre identifiable.",
    },
    mainTrap:
      "Certains préfixes sont homophones mais portent des sens différents : in- (négation : injuste, incapable) et in- (direction/intériorité : infiltrer, innover). De même, dé- peut exprimer l'inversion (défaire), la privation (déboisement) ou l'intensité (dévaler). Au CRPE, il faut savoir justifier le sens du préfixe dans le contexte du mot analysé, pas le mémoriser mécaniquement.",
    quiz: [
      {
        sentence:
          "Dans « prévisible », « pré- » est un préfixe qui modifie la catégorie grammaticale du mot de base.",
        isCorrect: false,
        explanation:
          "FAUX. Les préfixes ne changent pas la catégorie grammaticale : « visible » est un adjectif, « prévisible » aussi. Seuls les suffixes ont ce pouvoir de transposition catégorielle. Le préfixe pré- ajoute ici le sens d'antériorité.",
      },
      {
        sentence:
          "Le suffixe « -tion » (ex. : éducation, rédaction) transforme généralement un verbe en nom.",
        isCorrect: true,
        explanation:
          "Exact. -tion est un suffixe nominalisant très productif en français : éduquer → éducation, rédiger → rédaction, construire → construction. Il indique l'action ou son résultat. C'est un suffixe à enseigner explicitement en cycle 3 pour enrichir le vocabulaire.",
      },
      {
        sentence:
          "« Démocratie » est un dérivé de « démo- » (préfixe) + « -cratie » (suffixe).",
        isCorrect: false,
        explanation:
          "FAUX. « Démocratie » est un mot composé d'éléments grecs savants : démo- (peuple) et -cratie (pouvoir). Ce ne sont pas un préfixe et un suffixe français productifs indépendants — ce sont des éléments de composition d'origine grecque. La dérivation affixale concerne des affixes productifs en français.",
      },
      {
        sentence:
          "La dérivation impropre consiste à changer la catégorie d'un mot sans lui ajouter d'affixe.",
        isCorrect: true,
        explanation:
          "Exact. La dérivation impropre (ou conversion) change la catégorie par simple changement de contexte : « le beau » (beau adjectif substantivé), « un triste » (adjectif nominalisé), « manger » → « le manger » (verbe nominalisé). Aucun affixe n'est ajouté.",
      },
      {
        sentence:
          "Le suffixe « -able » (portable, aimable) forme toujours des adjectifs à partir de verbes.",
        isCorrect: false,
        explanation:
          "Pas toujours. -able forme des adjectifs à partir de verbes dans la majorité des cas (porter → portable, aimer → aimable), mais aussi à partir de noms (modes → modable) et, dans certains emplois, le sens peut varier. L'affirmation « toujours » est trop exclusive — au CRPE, méfiance vis-à-vis des absolus.",
      },
    ],
  },
};
