import type { Fiche } from "@/features/fiches/types";

export const textePoetiqueSprint: Fiche = {
  id: "comprehension-texte-poetique-sprint",
  slug: "texte-poetique-sprint",
  title: "Le texte poétique",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "poésie",
    "versification",
    "rime",
    "strophe",
    "vers",
    "figures de style",
    "texte poétique",
  ],
  notionsLiees: ["figures-de-style-sprint", "connecteurs-sprint"],
  exercicesAssocies: ["comp_texte_poetique"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les notions essentielles de versification et d'analyse poétique attendues au CRPE. La poésie apparaît régulièrement dans les épreuves, que ce soit pour analyser un extrait ou pour proposer une séquence d'enseignement en littérature.",
    oneLiner:
      "Un texte poétique se caractérise par un travail sur la langue qui dépasse la simple communication : rythme (mètre, coupes), sonorités (rimes, allitérations, assonances), images (métaphores, comparaisons) et mise en page (vers, strophes). La poésie peut être versifiée (alexandrin, octosyllabe) ou en vers libres / prose poétique.",
    exampleCorrect: {
      sentence:
        "« Demain, dès l'aube, / à l'heure où blanchit la campagne, // Je partirai. / Vois-tu, je sais que tu m'attends. » (Hugo) — Alexandrin (12 syllabes) avec césure à l'hémistiche (6//6). Rimes plates (AABB). Le rythme régulier traduit la marche déterminée du poète. L'enjambement sur « Je partirai » met en relief le verbe d'action par un rejet expressif.",
      explanation:
        "Analyse correcte : on identifie le mètre (alexandrin), la césure, le schéma de rimes, et on relie les procédés formels au sens du poème. C'est cette articulation forme/sens que le CRPE attend : ne jamais se contenter de repérer un procédé sans expliquer son effet.",
    },
    exampleWrong: {
      sentence:
        "Ce poème est composé de vers de 12 syllabes, il y a des rimes. Le poète exprime ses sentiments.",
      explanation:
        "INSUFFISANT. Cette analyse se limite à un repérage technique sans interprétation. Elle ne nomme pas le mètre (alexandrin), ne précise pas le schéma de rimes (plates, croisées, embrassées), et ne relie aucun procédé à un effet de sens. Au CRPE, le repérage seul ne rapporte pas de points : il faut toujours commenter l'effet produit.",
    },
    mainTrap:
      "Ne pas confondre le nombre de syllabes écrites et le décompte métrique. En poésie classique, le « e » muet se prononce devant une consonne (il compte pour une syllabe) mais s'élide devant une voyelle ou en fin de vers. Exemple : « Je mar-che-rai les yeux fi-xés sur mes pen-sé-es » = 12 syllabes (alexandrin). Compter « Je marcherai » comme 3 syllabes (au lieu de 4 : Je / mar / che / rai) fausserait tout le décompte. La diérèse (li-on = 2 syllabes) et la synérèse (lion = 1 syllabe) sont aussi des pièges fréquents.",
    quiz: [
      {
        sentence:
          "Un alexandrin est un vers de 12 syllabes avec une césure à l'hémistiche (6//6).",
        isCorrect: true,
        explanation:
          "Exact. L'alexandrin est le vers le plus noble de la poésie française classique. Il se compose de 12 syllabes réparties en deux hémistiches de 6 syllabes séparés par une césure (pause rythmique). La césure tombe après la 6ᵉ syllabe. Les poètes romantiques (Hugo) ont assoupli la césure (trimètre romantique : 4/4/4).",
      },
      {
        sentence:
          "Les rimes embrassées suivent le schéma ABAB.",
        isCorrect: false,
        explanation:
          "FAUX. Le schéma ABAB correspond aux rimes croisées (ou alternées). Les rimes embrassées suivent le schéma ABBA : la rime A « embrasse » la rime B. Les rimes plates (ou suivies) suivent le schéma AABB. Moyen mnémotechnique : embrassées = une rime en entoure une autre, comme des bras.",
      },
      {
        sentence:
          "Un sonnet est composé de deux quatrains suivis de deux tercets, soit 14 vers au total.",
        isCorrect: true,
        explanation:
          "Exact. Le sonnet est une forme fixe de 14 vers : 2 quatrains (4+4) + 2 tercets (3+3). Forme codifiée par Pétrarque (sonnet italien) puis adaptée en français (Ronsard, Du Bellay). Le dernier vers (la « chute ») porte souvent le sens essentiel du poème. Les sonnets sont fréquemment proposés au CRPE car ils permettent de tester la connaissance des formes fixes.",
      },
      {
        sentence:
          "En poésie, un enjambement se produit quand une phrase déborde du vers sur le vers suivant.",
        isCorrect: true,
        explanation:
          "Exact. L'enjambement (la phrase continue sur le vers suivant) crée un décalage entre la syntaxe et le mètre. Quand un mot ou groupe bref est rejeté au début du vers suivant, on parle de rejet ; quand il est anticipé en fin de vers, c'est un contre-rejet. Ces procédés mettent en relief les mots déplacés et créent des effets de surprise ou d'insistance.",
      },
      {
        sentence:
          "La poésie en vers libres ne suit aucune règle et ne peut donc pas être analysée formellement.",
        isCorrect: false,
        explanation:
          "FAUX. Les vers libres abandonnent le mètre régulier et la rime obligatoire, mais conservent d'autres procédés analysables : le rythme (longueur variable des vers), les répétitions, les sonorités (allitérations, assonances), la disposition typographique, les blancs. Apollinaire, Éluard, Prévert montrent qu'un poème en vers libres reste un objet formel riche d'effets de sens.",
      },
    ],
  },
};
