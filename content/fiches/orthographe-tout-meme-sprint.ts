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
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche suppose que tu distingues déjà adjectif, adverbe et pronom. C'est l'un des points d'orthographe les plus piégeurs du CRPE.",
    oneLiner:
      "TOUT adverbe = normalement invariable, SAUF devant un adjectif féminin commençant par une consonne ou un h aspiré (toute petite, toute honteuse). MÊME adjectif = variable (les mêmes idées) ; MÊME adverbe (= aussi, jusque) = invariable (elles sont même venues).",
    exampleCorrect: {
      sentence: "Elles étaient tout étonnées de la nouvelle.",
      explanation:
        "\"tout\" modifie l'adjectif \"étonnées\" (féminin) → normalement accord, MAIS \"étonnée\" commence par une voyelle → exception : \"tout\" reste INVARIABLE devant un féminin commençant par une voyelle ou un h muet. Correct : \"tout étonnées\".",
    },
    exampleWrong: {
      sentence: "Elles étaient tout honteuses.",
      explanation:
        "FAUX. \"tout\" modifie \"honteuses\" (féminin, commence par \"h aspiré\") → \"tout\" s'accorde : \"toutes honteuses\". Le \"h\" de \"honteux\" est aspiré : on dit \"les honteuses\" (pas d'élision), d'où l'accord de \"tout\".",
    },
    mainTrap:
      "\"Tout\" devant un adjectif féminin : la règle de l'exception (voyelle ou h muet = invariable) est contre-intuitive. Mémo : quand on peut dire \"l'adjectif\" (élision → h muet ou voyelle) → tout invariable. Quand on dit \"la/les + adjectif\" sans élision (h aspiré ou consonne) → tout s'accorde. Exemple : \"tout aimables\" (l'aimable → h muet/voyelle → invariable) vs \"toutes petites\" (la petite → consonne → accord).",
    quiz: [
      {
        sentence: "\"Elles sont tout heureuses\" est correct.",
        isCorrect: false,
        explanation:
          "FAUX. \"Heureuse\" est féminin et commence par \"h aspiré\" (on dit \"les heureuses\", pas \"l'heureuses\") → \"tout\" s'accorde : \"toutes heureuses\".",
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
