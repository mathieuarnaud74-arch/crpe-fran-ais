import type { Fiche } from "@/features/fiches/types";

export const grammaireEmphatiqueSprint: Fiche = {
  id: "grammaire-phrase-emphatique-neutre-sprint",
  slug: "phrase-emphatique-neutre-sprint",
  title: "Phrase emphatique et phrase neutre",
  subtitle:
    "Quand la syntaxe met un mot sous les projecteurs : extraction, détachement et focalisation",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "phrase emphatique",
    "phrase neutre",
    "mise en relief",
    "extraction",
    "détachement",
    "phrase clivée",
    "c'est...qui/que",
    "focalisation",
  ],
  notionsLiees: [
    "grammaire-types-formes-phrases-sprint",
    "grammaire-phrase-simple-sprint",
    "grammaire-phrase-complexe-sprint",
  ],
  exercicesAssocies: ["grm_phrase_emphatique_neutre"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint couvre l'essentiel sur la phrase emphatique et la phrase neutre au CRPE. Elle distingue les deux procédés de mise en relief (extraction et détachement) et cible les pièges récurrents des concours.",
    oneLiner:
      "Quand on veut qu'un mot brille plus que les autres dans la phrase, on le met en relief par un procédé syntaxique — c'est la phrase emphatique. La phrase neutre, elle, distribue l'information sans vedette : c'est la forme non marquée, celle où aucun constituant n'est mis en avant. Savoir les distinguer, c'est maîtriser l'une des formes de phrase les plus rentables au CRPE.",
    exampleCorrect: {
      sentence:
        "« C'est Paul qui a gagné la course. » — Phrase clivée (extraction par le présentatif « c'est…qui »). Le sujet « Paul » est extrait de sa position habituelle et encadré par « c'est…qui » pour être focalisé.",
      explanation:
        "La phrase neutre correspondante serait « Paul a gagné la course. » L'extraction par clivage est le procédé emphatique le plus fréquent au CRPE. On le reconnaît grâce au présentatif « c'est…qui » (pour le sujet) ou « c'est…que » (pour les compléments). Le constituant mis en relief est celui qui se trouve entre « c'est » et « qui/que ».",
    },
    exampleWrong: {
      sentence:
        "« Quel beau temps ! » est identifiée comme phrase emphatique parce qu'elle insiste sur la beauté du temps.",
      explanation:
        "C'est l'erreur typique du CRPE : confondre emphase et exclamation. Cette phrase est exclamative (elle exprime une émotion via le mot exclamatif « quel » et le point d'exclamation), mais elle n'est pas emphatique car aucun constituant n'est mis en relief par un procédé syntaxique (extraction ou détachement). L'emphase au sens grammatical est un mécanisme de structure, pas d'émotion.",
    },
    mainTrap:
      "La confusion la plus fréquente au CRPE est entre phrase emphatique et phrase exclamative. La phrase exclamative exprime une émotion (« Quel beau temps ! »), tandis que la phrase emphatique met en relief un constituant par un procédé syntaxique : l'extraction (« C'est Marie qui chante ») ou le détachement avec reprise pronominale (« Marie, elle chante merveilleusement »). Une phrase peut d'ailleurs être à la fois exclamative ET emphatique (« C'est incroyable ce qu'elle chante bien ! »). Autre piège : oublier que la phrase neutre n'est pas une phrase « vide » ou « plate » — c'est simplement la forme de base, non marquée, sans mise en relief syntaxique.",
    quiz: [
      {
        sentence:
          "La phrase « C'est à Paris que nous irons » est une phrase emphatique car le complément « à Paris » est extrait par le présentatif « c'est…que ».",
        isCorrect: true,
        explanation:
          "Le complément circonstanciel de lieu « à Paris » est placé entre « c'est » et « que », ce qui constitue un clivage (extraction). La phrase neutre correspondante serait « Nous irons à Paris. » Le constituant mis en relief est bien celui qui est encadré par le présentatif.",
      },
      {
        sentence:
          "La phrase « Comme cette tarte est bonne ! » est une phrase emphatique car elle met en valeur la qualité de la tarte.",
        isCorrect: false,
        explanation:
          "Cette phrase est exclamative (mot exclamatif « comme », point d'exclamation), mais pas emphatique. La forme emphatique suppose un procédé syntaxique de mise en relief (extraction ou détachement), pas simplement l'expression d'une émotion. Pour qu'elle soit emphatique, il faudrait par exemple : « Cette tarte, elle est vraiment bonne ! » (détachement avec reprise pronominale).",
      },
      {
        sentence:
          "Dans « Ce livre, je l'ai lu trois fois », le groupe nominal « ce livre » est détaché en tête de phrase et repris par le pronom « l' » : c'est une phrase emphatique par détachement.",
        isCorrect: true,
        explanation:
          "Le détachement (ou dislocation) consiste à placer un constituant en début ou en fin de phrase et à le reprendre (ou l'annoncer) par un pronom. Ici, « ce livre » est détaché en position initiale et repris par le pronom COD « l' ». La phrase neutre correspondante serait « J'ai lu ce livre trois fois. »",
      },
      {
        sentence:
          "La phrase « Ce que j'aime, c'est le chocolat » est une phrase neutre car elle commence par « ce que ».",
        isCorrect: false,
        explanation:
          "C'est une phrase pseudo-clivée (variante de l'extraction). Le constituant « le chocolat » est mis en relief grâce à la structure « Ce que…, c'est… ». La phrase neutre correspondante serait simplement « J'aime le chocolat. » La présence de « ce que/ce qui…c'est » est un marqueur fiable de phrase emphatique par extraction.",
      },
      {
        sentence:
          "La phrase « Les enfants jouent dans la cour » est une phrase neutre car aucun constituant n'y fait l'objet d'une mise en relief syntaxique.",
        isCorrect: true,
        explanation:
          "La phrase neutre est la forme non marquée : les constituants occupent leur place canonique (sujet - verbe - compléments) sans procédé d'extraction ni de détachement. « Les enfants jouent dans la cour » suit l'ordre habituel SVO sans aucune focalisation. C'est la phrase de base, par opposition à la forme emphatique.",
      },
      {
        sentence:
          "La phrase « Moi, je trouve ça injuste » n'est pas emphatique car « moi » est simplement un pronom tonique qui renforce le sujet.",
        isCorrect: false,
        explanation:
          "Le pronom tonique « moi » est détaché en tête de phrase et repris par le pronom sujet « je » : c'est bien un détachement avec reprise pronominale, donc une phrase emphatique. La phrase neutre serait « Je trouve ça injuste. » Le fait que ce procédé soit très courant à l'oral ne change pas son statut grammatical : c'est une mise en relief du sujet.",
      },
    ],
    linkToReference: undefined,
  },
};
