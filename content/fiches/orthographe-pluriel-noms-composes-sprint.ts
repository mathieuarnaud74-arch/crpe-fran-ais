import type { Fiche } from "@/features/fiches/types";

export const plurielNomsComposesSprint: Fiche = {
  id: "orthographe-pluriel-noms-composes-sprint",
  slug: "pluriel-noms-composes-sprint",
  title: "Pluriel des noms composés",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["noms composés", "pluriel", "trait d'union", "orthographe lexicale"],
  notionsLiees: ["accord-groupe-nominal"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche traite des noms composés avec trait d'union (orthographe traditionnelle). La réforme de 1990 a simplifié certains cas : vérifier les deux graphies est une bonne pratique.",
    oneLiner:
      "Seuls les NOMS et les ADJECTIFS prennent la marque du pluriel. Les VERBES, ADVERBES et PRÉPOSITIONS restent INVARIABLES. Quand le sens rend le pluriel absurde (\"porte-monnaie\" = sac à monnaie, pas des monnaies), le nom peut rester invariable.",
    exampleCorrect: {
      sentence: "des chefs-d'œuvre / des arcs-en-ciel",
      explanation:
        "\"chefs-d'œuvre\" : \"chef\" est un nom → prend -s (\"chefs\") ; \"d'œuvre\" = préposition + nom mais figé, \"œuvre\" reste invariable selon l'usage traditionnel. \"arcs-en-ciel\" : \"arc\" = nom → prend -s ; \"en\" = préposition (invariable) ; \"ciel\" = nom mais l'expression est figée → reste invariable.",
    },
    exampleWrong: {
      sentence: "des porte-monnaies",
      explanation:
        "Selon l'orthographe traditionnelle : \"porte\" = verbe (invariable) + \"monnaie\" = nom. Comme on ne transporte pas plusieurs monnaies mais de la monnaie, \"monnaie\" reste invariable → \"des porte-monnaie\". La réforme 1990 admet \"porte-monnaies\".",
    },
    mainTrap:
      "\"des garde-fous\" vs \"des garde-robes\" : dans \"garde-fou\", \"garde\" est un nom (le garde qui garde) → prend -s (\"gardes-fous\") selon certaines analyses. Dans \"garde-robe\", \"garde\" est un verbe → invariable (\"des garde-robes\"). Ces cas font débat entre grammairiens : au CRPE, justifier l'analyse est plus important qu'une réponse unique.",
    quiz: [
      {
        sentence: "\"Des essuie-glaces\" est la forme correcte du pluriel de \"essuie-glace\".",
        isCorrect: true,
        explanation:
          "\"essuie\" = verbe (invariable) + \"glace\" = nom → \"glace\" prend -s au pluriel : \"des essuie-glaces\". La réforme 1990 confirme cette graphie.",
      },
      {
        sentence: "\"Des après-midis\" est la seule forme correcte du pluriel de \"après-midi\".",
        isCorrect: false,
        explanation:
          "FAUX. \"Après-midi\" est invariable selon la tradition (\"adverbe\" + \"nom\" figé) : \"des après-midi\". La réforme 1990 admet \"des après-midis\". Les deux formes sont acceptées au CRPE ; \"après-midi\" invariable reste la référence classique.",
      },
      {
        sentence: "\"Des tire-bouchons\" est correct : \"bouchon\" est un nom et prend -s au pluriel.",
        isCorrect: true,
        explanation:
          "\"tire\" = verbe (invariable) + \"bouchon\" = nom → prend -s. \"Des tire-bouchons\" est la forme correcte et fait consensus.",
      },
      {
        sentence: "\"Des basses-cours\" est la forme correcte du pluriel de \"basse-cour\".",
        isCorrect: true,
        explanation:
          "\"basse\" = adjectif (variable) + \"cour\" = nom (variable) → les deux prennent -s au pluriel : \"des basses-cours\". Nom + adjectif ou adjectif + nom : les deux éléments variables s'accordent.",
      },
      {
        sentence: "\"Des abat-jours\" est correct car \"abat\" est un verbe et \"jour\" est un nom.",
        isCorrect: false,
        explanation:
          "FAUX. La forme correcte est \"des abat-jour\" (invariable). \"abat\" = verbe (invariable) + \"jour\" = nom, mais le sens est \"ce qui abat le jour\" → le sens de collectif/singulier fige \"jour\" au singulier. Usage attesté : \"abat-jour\" invariable.",
      },
    ],
  },
};
