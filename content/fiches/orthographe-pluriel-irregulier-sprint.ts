import type { Fiche } from "@/features/fiches/types";

export const plurielIrregulierSprint: Fiche = {
  id: "orthographe-pluriel-irregulier-sprint",
  slug: "pluriel-irregulier-sprint",
  title: "Les pluriels irréguliers qui piègent au CRPE",
  subtitle: "Fiche express",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "pluriel",
    "irrégulier",
    "-al/-aux",
    "-ail/-aux",
    "-ou/-oux",
    "-eu/-eux",
  ],
  notionsLiees: ["accord-groupe-nominal", "pluriel-noms-composes"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche se concentre sur les pluriels irréguliers les plus fréquents au CRPE. Les rectifications orthographiques de 1990 n'ont pas modifié ces règles.",
    oneLiner:
      "La plupart des noms en -al font leur pluriel en -aux (cheval → chevaux), mais il existe des EXCEPTIONS courantes en -als (bal, carnaval, festival…). Les noms en -ou prennent -s sauf SEPT mots célèbres qui prennent -x (bijou, caillou, chou, genou, hibou, joujou, pou).",
    exampleCorrect: {
      sentence: "des travaux",
      explanation:
        "\"travail\" fait partie des noms en -ail qui changent en -aux au pluriel : travail → travaux, vitrail → vitraux, corail → coraux, émail → émaux. C'est la forme irrégulière à connaître — la majorité des noms en -ail prennent simplement -s (des rails, des détails).",
    },
    exampleWrong: {
      sentence: "des bals",
      explanation:
        "Attention : \"bal\" ne fait PAS \"baux\" ! C'est une exception à la règle -al → -aux. Le pluriel correct est bien \"des bals\". Les principales exceptions sont : bal, carnaval, festival, récital, régal, chacal, qui gardent un pluriel en -als.",
    },
    mainTrap:
      "La règle -al → -aux semble simple, mais ses exceptions sont très nombreuses et fréquemment testées au CRPE. Retenir au minimum : bal, carnaval, festival, récital, régal, chacal → -als. De même, ne pas confondre « travail → travaux » (irrégulier) avec « détail → détails » (régulier) : seuls quelques noms en -ail changent en -aux.",
    quiz: [
      {
        sentence:
          "\"Des bijoux\" est correct : \"bijou\" fait partie des sept noms en -ou qui prennent -x au pluriel.",
        isCorrect: true,
        explanation:
          "VRAI. Les sept noms en -ou qui prennent -x au pluriel sont : bijou, caillou, chou, genou, hibou, joujou, pou → bijoux, cailloux, choux, genoux, hiboux, joujoux, poux.",
      },
      {
        sentence:
          "\"Des clous\" est une erreur : tous les noms en -ou prennent -x au pluriel.",
        isCorrect: false,
        explanation:
          "FAUX. La grande majorité des noms en -ou prennent -s au pluriel : des clous, des sous, des trous, des verrous. Seuls sept noms en -ou prennent -x (bijou, caillou, chou, genou, hibou, joujou, pou).",
      },
      {
        sentence:
          "\"Des carnavals\" est correct car \"carnaval\" est une exception à la règle -al → -aux.",
        isCorrect: true,
        explanation:
          "VRAI. \"Carnaval\" fait partie des exceptions qui gardent un pluriel régulier en -als : des carnavals, comme des bals, des festivals, des récitals.",
      },
      {
        sentence:
          "\"Des vitraux\" est la forme correcte du pluriel de \"vitrail\".",
        isCorrect: true,
        explanation:
          "VRAI. \"Vitrail\" fait partie des noms en -ail qui forment leur pluriel en -aux : vitrail → vitraux, comme travail → travaux, corail → coraux, émail → émaux.",
      },
      {
        sentence:
          "\"Des chevals\" est une forme acceptable dans le registre familier.",
        isCorrect: false,
        explanation:
          "FAUX. \"Des chevals\" n'est jamais acceptable, quel que soit le registre. Le seul pluriel correct est \"des chevaux\". \"Cheval\" suit la règle régulière des noms en -al → -aux, sans exception.",
      },
      {
        sentence:
          "\"Des genous\" est correct car on ajoute simplement -s aux noms en -ou.",
        isCorrect: false,
        explanation:
          "FAUX. \"Genou\" fait partie des sept noms en -ou qui prennent -x au pluriel : des genoux. La forme \"genous\" est incorrecte.",
      },
    ],
  },
};
