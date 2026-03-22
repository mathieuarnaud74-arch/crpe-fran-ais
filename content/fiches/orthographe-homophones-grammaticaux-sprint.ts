import type { Fiche } from "@/features/fiches/types";

export const orthographeHomophonesGrammaticauxSprint: Fiche = {
  id: "orthographe-homophones-grammaticaux-sprint",
  slug: "homophones-grammaticaux-sprint",
  title: "Les homophones grammaticaux courants",
  subtitle: "Distinguer a/à, ou/où, et/est, on/ont, ce/se, son/sont",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["homophone", "orthographe", "grammaire", "a/à", "ou/où", "et/est"],
  notionsLiees: [
    "orthographe-homophones-grammaticaux-reference",
    "grammaire-nature-mots-sprint",
  ],
  exercicesAssocies: [
    "orthographe-homophones-sprint",
  ],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint présente les règles essentielles de manière condensée. Pour un traitement complet avec exercices progressifs, consultez la fiche de référence.",
    oneLiner:
      "Les homophones grammaticaux sont des mots qui se prononcent de la même façon mais qui appartiennent à des classes grammaticales différentes — leur orthographe dépend de leur fonction dans la phrase.",
    exampleCorrect: {
      sentence: "Il a mangé à la cantine, où on lui a servi son repas.",
      explanation:
        "« a » est le verbe avoir conjugué au présent (on peut le remplacer par « avait ») ; « à » est une préposition (impossible de le remplacer par « avait ») ; « où » est un pronom relatif de lieu ; « on » est un pronom indéfini sujet ; « son » est un déterminant possessif.",
    },
    exampleWrong: {
      sentence: "Il à manger a la cantine, ou ont lui à servi sont repas.",
      explanation:
        "Chaque homophone est mal choisi : « à » au lieu de « a » (verbe avoir), « a » au lieu de « à » (préposition), « ou » au lieu de « où » (lieu), « ont » au lieu de « on » (pronom sujet), « sont » au lieu de « son » (possessif).",
    },
    mainTrap:
      "Le piège principal est de confondre le verbe et son homophone non verbal. L'astuce systématique : essayer de remplacer le mot par une autre forme du même paradigme. Si « a » peut devenir « avait », c'est le verbe. Si « est » peut devenir « était », c'est le verbe. Si « ont » peut devenir « avaient », c'est le verbe. Si « son » peut devenir « mon/ton », c'est le déterminant possessif. Si « ce » peut devenir « cet/cette », c'est le déterminant démonstratif.",
    quiz: [
      {
        sentence:
          "Pour distinguer « a » de « à », on peut remplacer par « avait » : si la phrase reste correcte, il s'agit du verbe « avoir ».",
        isCorrect: true,
        explanation:
          "C'est la règle de substitution classique. « Il a faim » → « Il avait faim » fonctionne, donc c'est bien le verbe « avoir » conjugué.",
      },
      {
        sentence:
          "« Ou » avec un accent grave indique une alternative entre deux possibilités.",
        isCorrect: false,
        explanation:
          "C'est l'inverse : « ou » sans accent exprime l'alternative (on peut le remplacer par « ou bien »). « Où » avec accent grave indique le lieu ou le temps.",
      },
      {
        sentence:
          "Pour distinguer « et » de « est », on remplace par « et puis » : si cela fonctionne, il s'agit de la conjonction de coordination.",
        isCorrect: true,
        explanation:
          "« et » est une conjonction de coordination qu'on peut remplacer par « et aussi » ou « et puis ». « est » est le verbe être qu'on peut remplacer par « était ».",
      },
      {
        sentence:
          "« On » est toujours sujet du verbe et peut être remplacé par « il » ou « nous » selon le contexte.",
        isCorrect: true,
        explanation:
          "« On » est un pronom indéfini, toujours sujet. En cas de doute avec « ont » (verbe avoir, 3ᵉ personne du pluriel), on remplace par « avaient » : si cela fonctionne, c'est « ont ».",
      },
      {
        sentence:
          "« Ce » et « se » appartiennent à la même classe grammaticale : ce sont tous deux des pronoms.",
        isCorrect: false,
        explanation:
          "« Se » est un pronom personnel réfléchi (il se lave), tandis que « ce » peut être un déterminant démonstratif (ce livre) ou un pronom démonstratif (ce qui, c'est). Ils n'appartiennent pas à la même classe.",
      },
      {
        sentence:
          "Pour vérifier qu'il s'agit bien de « sont » (verbe être), on peut le remplacer par « étaient ».",
        isCorrect: true,
        explanation:
          "Si la substitution par « étaient » fonctionne, c'est le verbe être conjugué à la 3ᵉ personne du pluriel. Sinon, c'est « son », déterminant possessif (remplaçable par « mon » ou « ton »).",
      },
    ],
    linkToReference: "orthographe-homophones-grammaticaux-reference",
  },
};
