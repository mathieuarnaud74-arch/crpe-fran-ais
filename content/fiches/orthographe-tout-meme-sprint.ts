import type { Fiche } from "@/features/fiches/types";

export const toutMemeSprint: Fiche = {
  id: "orthographe-tout-meme-sprint",
  slug: "tout-meme-sprint",
  title: "Accord de tout et même",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["tout", "même", "accord", "adverbe vs adjectif"],
  notionsLiees: ["accord-groupe-nominal"],
  exercicesAssocies: ["tri_mot_tout"],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche suppose que tu distingues déjà adjectif, adverbe et pronom. C'est l'un des points d'orthographe les plus piégeurs du CRPE.",
    oneLiner:
      "TOUT adverbe = normalement invariable, SAUF devant un adjectif féminin commençant par une consonne ou un h aspiré (toute petite, toute honteuse). MÊME adjectif = variable (les mêmes idées) ; MÊME adverbe (= aussi, jusque) = invariable (elles sont même venues).",
    exampleCorrect: {
      sentence: "Elles étaient tout étonnées de la nouvelle.",
      explanation:
        "\"tout\" (adverbe) est normalement INVARIABLE. La seule exception est devant un adjectif féminin commençant par une consonne ou un h aspiré (\"toute petite\", \"toutes honteuses\"). Ici, \"étonnées\" commence par une voyelle → pas d'exception → \"tout\" reste invariable. Correct : \"tout étonnées\".",
    },
    exampleWrong: {
      sentence: "Elles étaient tout honteuses.",
      explanation:
        "FAUX. \"tout\" modifie \"honteuses\" (féminin commençant par h aspiré) → exception : \"tout\" s'accorde → \"toutes honteuses\". Test : le h de \"honteuse\" est aspiré — on dit \"la honteuse\" (pas d'élision *l'honteuse) → consonne/h aspiré → accord obligatoire.",
    },
    mainTrap:
      "\"Tout\" devant un adjectif féminin : la règle de l'exception (voyelle ou h muet = invariable) est contre-intuitive. Mémo : quand on peut dire \"l'adjectif\" (élision → h muet ou voyelle) → tout invariable. Quand on dit \"la/les + adjectif\" sans élision (h aspiré ou consonne) → tout s'accorde. Exemple : \"tout aimables\" (l'aimable → h muet/voyelle → invariable) vs \"toutes petites\" (la petite → consonne → accord).",
    quiz: [
      {
        sentence: "\"Elles sont tout heureuses\" est correct.",
        isCorrect: true,
        explanation:
          "VRAI. \"Heureuse\" est féminin mais commence par un h muet (on dit \"l'heureuse\", avec élision) → exception : \"tout\" reste INVARIABLE devant un féminin commençant par une voyelle ou un h muet. \"Tout heureuses\" est correct.",
      },
      {
        sentence: "\"Elles sont tout émues\" est correct.",
        isCorrect: true,
        explanation:
          "Correct. \"Émues\" est féminin mais commence par une voyelle (\"é\") → exception : \"tout\" reste invariable. \"Tout émues\" est la forme correcte.",
      },
      {
        sentence: "\"Les élèves ont eu les mêmes résultats\" — \"mêmes\" est un adjectif et s'accorde.",
        isCorrect: true,
        explanation:
          "Correct. \"Mêmes\" qualifie \"résultats\" (masc. plur.) → adjectif variable → accord : \"mêmes\". Ici, \"même\" signifie \"identiques\" → fonction adjectivale.",
      },
      {
        sentence: "\"Même les professeurs sont venus\" — \"même\" s'accorde au pluriel : \"mêmes\".",
        isCorrect: false,
        explanation:
          "FAUX. Ici, \"même\" signifie \"y compris, jusqu'aux\" → adverbe de renchérissement → INVARIABLE. Correct : \"Même les professeurs sont venus.\" Test : peut-on remplacer par \"y compris\" ? Oui → adverbe invariable.",
      },
      {
        sentence: "\"Tout compte fait\" — \"tout\" est invariable dans cette locution.",
        isCorrect: true,
        explanation:
          "Correct. \"Tout compte fait\" est une locution adverbiale figée. \"Tout\" y est adverbe et reste invariable. À ne pas confondre avec \"tous comptes faits\" (variante également admise avec accord de \"tous\" en adjectif).",
      },
    ],
  },
};
