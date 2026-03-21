import type { Fiche } from "@/features/fiches/types";

export const imperatifSprint: Fiche = {
  id: "conjugaison-imperatif-sprint",
  slug: "imperatif-sprint",
  title: "L'impératif : formes et emplois",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "impératif",
    "mode",
    "injonction",
    "2e personne",
    "orthographe impératif",
  ],
  notionsLiees: ["valeurs-du-present-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur l'impératif. L'impératif est un mode personnel de la conjugaison, à distinguer des modes impersonnels (infinitif, participe).",
    oneLiner:
      "L'impératif est un mode personnel qui ne se conjugue qu'à 3 personnes : 2e personne du singulier (Chante !), 1re personne du pluriel (Chantons !), 2e personne du pluriel (Chantez !). Il n'a pas de sujet exprimé. Règle orthographique clé : les verbes du 1er groupe ne prennent PAS de -s à la 2e personne du singulier (Mange ! Parle ! Chante !), sauf devant « en » et « y » pour raison euphonique (Manges-en ! Vas-y !). Les verbes comme « ouvrir, cueillir, offrir, souffrir » suivent la même règle (Ouvre ! Cueille !). Valeur principale : l'injonction (ordre, conseil, prière, interdiction avec la négation). Il existe un impératif passé, rare : auxiliaire à l'impératif présent + participe passé (Aie fini ! Soyons partis !).",
    exampleCorrect: {
      sentence: "Parle plus fort ! Écoutons la consigne. Regardez le tableau.",
      explanation:
        "Les trois personnes de l'impératif : 2e sg. (Parle — sans -s, 1er groupe), 1re pl. (Écoutons), 2e pl. (Regardez). Pas de sujet exprimé. « Parle » sans -s car « parler » est un verbe du 1er groupe.",
    },
    exampleWrong: {
      sentence: "Manges ta soupe !",
      explanation:
        "FAUX. « Manger » est un verbe du 1er groupe : pas de -s à la 2e personne du singulier de l'impératif. La forme correcte est « Mange ta soupe ! ». Le -s n'apparaît que devant « en » ou « y » : « Manges-en ! ».",
    },
    mainTrap:
      "Le piège principal est le -s à la 2e personne du singulier. Règle : les verbes du 1er groupe et les verbes à conjugaison similaire (ouvrir, offrir, cueillir, souffrir) ne prennent PAS de -s. Exceptions euphoniques : devant « en » et « y », on ajoute un -s de liaison (« Penses-y ! », « Manges-en ! »). Cas particulier : « Va ! » sans -s, mais « Vas-y ! » avec -s. Autre piège : confondre l'impératif avec l'indicatif présent — « tu chantes » (indicatif, avec -s) vs « Chante ! » (impératif, sans -s). Enfin, les formes irrégulières « Aie ! Sois ! Sache ! » (empruntées au subjonctif) sont à mémoriser.",
    quiz: [
      {
        sentence:
          "La forme correcte de l'impératif de « chanter » à la 2e personne du singulier est « Chantes ! ».",
        isCorrect: false,
        explanation:
          "FAUX. « Chanter » est un verbe du 1er groupe : pas de -s à la 2e personne du singulier de l'impératif. La forme correcte est « Chante ! ». La confusion vient de l'indicatif présent « tu chantes » qui, lui, prend un -s.",
      },
      {
        sentence:
          "L'impératif ne se conjugue qu'à trois personnes : 2e du singulier, 1re du pluriel et 2e du pluriel.",
        isCorrect: true,
        explanation:
          "Correct. L'impératif ne possède que ces trois personnes. Il n'existe ni 1re du singulier, ni 3e personne. Pour exprimer l'injonction à la 3e personne, on recourt au subjonctif : « Qu'il parte ! ».",
      },
      {
        sentence:
          "On écrit « Vas-y ! » avec un -s car « aller » est un verbe du 3e groupe.",
        isCorrect: false,
        explanation:
          "FAUX. Le -s de « Vas-y » n'est pas lié au groupe du verbe. « Aller » à l'impératif 2e sg. donne « Va ! » (sans -s). Le -s apparaît uniquement devant le pronom « y » pour raison euphonique (éviter le hiatus) : « Vas-y ! ». De même : « Penses-y ! », « Retournes-y ! ».",
      },
      {
        sentence:
          "Les formes « Aie ! », « Sois ! » et « Sache ! » sont des impératifs irréguliers empruntés au subjonctif présent.",
        isCorrect: true,
        explanation:
          "Correct. Les verbes « avoir », « être » et « savoir » forment leur impératif sur le radical du subjonctif présent. On obtient : Aie / Ayons / Ayez ; Sois / Soyons / Soyez ; Sache / Sachons / Sachez. Ces formes sont à mémoriser.",
      },
      {
        sentence:
          "Les verbes « ouvrir » et « cueillir » prennent un -s à l'impératif 2e personne du singulier car ils sont du 3e groupe.",
        isCorrect: false,
        explanation:
          "FAUX. Bien que « ouvrir » et « cueillir » soient du 3e groupe, ils se conjuguent comme les verbes du 1er groupe au présent et à l'impératif. On écrit « Ouvre ! » et « Cueille ! » sans -s, exactement comme « Chante ! ».",
      },
    ],
  },
};
