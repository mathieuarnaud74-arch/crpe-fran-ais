import type { Fiche } from "@/features/fiches/types";

export const rectifications1990Sprint: Fiche = {
  id: "orthographe-rectifications-1990-sprint",
  slug: "rectifications-orthographiques-1990-sprint",
  title: "Les rectifications orthographiques de 1990",
  subtitle:
    "Ce que le CRPE attend que vous sachiez sur la nouvelle orthographe",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "rectifications orthographiques",
    "nouvelle orthographe",
    "accent circonflexe",
    "trait d'union",
    "soudure",
    "pluriel noms composés",
    "accent grave",
    "tréma",
    "1990",
  ],
  notionsLiees: [
    "orthographe-pluriel-noms-composes-sprint",
    "orthographe-majuscules-ponctuation-sprint",
    "orthographe-homophones-sprint",
  ],
  exercicesAssocies: ["orth_rectifications_1990"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les rectifications orthographiques de 1990. Pour un panorama complet des règles touchées (soudure des mots composés, pluriels, emprunts, accents), consulte la fiche Référence.",
    oneLiner:
      "En 1990, le Conseil supérieur de la langue française a proposé des simplifications de l'orthographe, approuvées par l'Académie française. Ces rectifications touchent l'accent circonflexe (supprimé sur i et u sauf ambiguïté), le trait d'union (soudure de nombreux composés), le tréma (déplacé sur la voyelle prononcée : aigüe), le pluriel des noms composés (un pèse-lettre → des pèse-lettres) et certaines anomalies historiques (nénufar, ognon). Au CRPE, les deux graphies — traditionnelle et rectifiée — sont acceptées. Mais il faut absolument connaître les rectifications pour ne pas signaler comme fautive une graphie rectifiée dans une copie d'élève !",
    exampleCorrect: {
      sentence:
        "L'élève écrit « il connait la leçon » — cette graphie est correcte.",
      explanation:
        "Depuis les rectifications de 1990, l'accent circonflexe sur i et u n'est plus obligatoire sauf pour lever une ambiguïté entre homophones. « Connait » (sans accent) est donc une graphie valide au même titre que « connaît ». Les 5 exceptions à retenir : dû (≠ du), mûr (≠ mur), sûr (≠ sur), jeûne (≠ jeune), crû (≠ cru) — le circonflexe y est maintenu car il distingue deux mots différents.",
    },
    exampleWrong: {
      sentence:
        "Un candidat signale « nénufar » comme une faute d'orthographe dans la copie d'un élève.",
      explanation:
        "ERREUR. « Nénufar » est la graphie rectifiée (et étymologiquement plus cohérente, du persan nenufar). L'ancienne graphie « nénuphar » reste également correcte. Un candidat au CRPE qui corrige « nénufar » comme fautif montre qu'il ne connaît pas les rectifications — c'est exactement le type d'erreur sanctionné au concours. Même principe pour « évènement » (rectifié) vs « événement » (traditionnel) : les deux sont corrects.",
    },
    mainTrap:
      "Le piège principal au CRPE : croire que les rectifications REMPLACENT l'ancienne orthographe. Les deux graphies coexistent et sont également correctes. Le candidat doit connaître les rectifications pour évaluer correctement les copies d'élèves — signaler « cout », « ile » ou « paraitre » comme des fautes serait une erreur professionnelle. Les 5 exceptions au circonflexe à retenir absolument : dû (≠ du), mûr (≠ mur), sûr (≠ sur), jeûne (≠ jeune), crû (≠ cru) — le circonflexe est maintenu uniquement pour distinguer les homophones.",
    quiz: [
      {
        sentence:
          "« Nénufar » est la graphie rectifiée correcte de « nénuphar ».",
        isCorrect: true,
        explanation:
          "VRAI. « Nénufar » est bien la graphie recommandée par les rectifications de 1990. Elle rétablit l'étymologie persane du mot (nenufar), la graphie « nénuphar » avec ph étant une fausse hellénisation introduite au XIXe siècle. Les deux graphies sont acceptées au CRPE.",
      },
      {
        sentence:
          "Les rectifications orthographiques de 1990 rendent l'ancienne orthographe fautive.",
        isCorrect: false,
        explanation:
          "FAUX. Le principe fondamental des rectifications est la coexistence : les graphies traditionnelles et rectifiées sont toutes deux correctes. Le Bulletin officiel de l'Éducation nationale (2008, 2015) précise qu'aucune des deux graphies ne peut être considérée comme fautive. Un enseignant doit accepter les deux.",
      },
      {
        sentence:
          "« Cout », « ile », « paraitre » sans accent circonflexe sont des graphies correctes.",
        isCorrect: true,
        explanation:
          "VRAI. Les rectifications suppriment l'accent circonflexe sur i et u quand il n'a pas de fonction distinctive. « Cout » (coût), « ile » (île), « paraitre » (paraître) sont donc des graphies valides. L'accent est maintenu uniquement sur les 5 cas d'homonymie : dû, mûr, sûr, jeûne, crû.",
      },
      {
        sentence:
          "« Du » sans accent peut remplacer « dû » grâce aux rectifications de 1990.",
        isCorrect: false,
        explanation:
          "FAUX. « Dû » (participe passé de devoir) conserve son accent circonflexe car il le distingue de « du » (article contracté). C'est l'une des 5 exceptions où le circonflexe est maintenu pour éviter l'ambiguïté : dû/du, mûr/mur, sûr/sur, jeûne/jeune, crû/cru.",
      },
      {
        sentence:
          "« Vingt-et-un » avec traits d'union partout est la graphie rectifiée des numéraux.",
        isCorrect: true,
        explanation:
          "VRAI. Les rectifications généralisent le trait d'union à tous les numéraux composés, sans exception. On écrit désormais « vingt-et-un », « deux-cent-cinquante », « trois-mille-quatre-cent-vingt-et-un ». Attention : l'accord de « cent » (deux cents / deux cent cinquante) est une règle distincte, antérieure à 1990, et non modifiée par les rectifications. L'ancienne règle du trait d'union (seulement entre les dizaines et unités inférieures à cent, sauf avec « et ») reste également acceptée.",
      },
      {
        sentence:
          "« Des après-midis » avec un -s est la graphie rectifiée du pluriel.",
        isCorrect: true,
        explanation:
          "VRAI. Les rectifications régularisent le pluriel des noms composés avec préposition ou adverbe : seul le second élément prend la marque du pluriel (« des après-midis », « des sans-abris »). C'est une simplification importante : on applique la règle générale du français (marque du pluriel en fin de mot) au lieu de mémoriser des exceptions au cas par cas.",
      },
    ],
  },
};
