import type { Fiche } from "@/features/fiches/types";

export const grammairePredicatStructureSprint: Fiche = {
  id: "grammaire-predicat-structure-sprint",
  slug: "predicat-structure-phrase-sprint",
  title: "Le predicat et la structure de la phrase",
  subtitle:
    "P = [GS + GV] (+ GC) : la formule magique de la grammaire francaise, celle qui structure toute analyse au CRPE",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "predicat",
    "structure de la phrase",
    "GS",
    "GV",
    "GC",
    "groupe sujet",
    "groupe verbal",
    "groupe circonstanciel",
    "constituants de la phrase",
  ],
  notionsLiees: [
    "grammaire-phrase-simple-sprint",
    "grammaire-fonctions-sprint",
    "grammaire-complements-objet-sprint",
  ],
  exercicesAssocies: ["grm_predicat_structure"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint couvre l'essentiel sur le predicat et la structure de la phrase au CRPE. Elle s'appuie sur la terminologie officielle Eduscol et cible les confusions les plus frequentes dans les annales.",
    oneLiner:
      "Toute phrase francaise repose sur une formule elegante : P = [GS + GV] (+ GC). Le groupe sujet (GS) et le groupe verbal (GV) sont les deux piliers obligatoires ; le groupe circonstanciel (GC) est un invite facultatif. Le predicat, c'est ce qu'on dit du sujet -- il se confond avec le groupe verbal. Maitriser cette architecture, c'est tenir la cle de toute analyse grammaticale au CRPE : deux fonctions seulement existent au niveau de la phrase (sujet et complement circonstanciel), tout le reste vit a l'interieur du GV.",
    exampleCorrect: {
      sentence:
        "\u00ab Les hirondelles traversaient le ciel embrase ce soir-la. \u00bb -- [Les hirondelles]GS [traversaient le ciel embrase]GV [ce soir-la]GC.",
      explanation:
        "Le GS est \u00ab les hirondelles \u00bb (il commande l'accord du verbe). Le GV est \u00ab traversaient le ciel embrase \u00bb : il contient le verbe ET son COD (\u00ab le ciel embrase \u00bb), car le COD est une fonction interne au GV. Le GC est \u00ab ce soir-la \u00bb : il est supprimable (\u00ab Les hirondelles traversaient le ciel embrase \u00bb reste correct) et deplacable (\u00ab Ce soir-la, les hirondelles traversaient le ciel embrase \u00bb). Le predicat correspond exactement au GV : c'est tout ce qu'on dit du sujet. Au niveau de la phrase, il n'existe que deux fonctions : la fonction sujet (relation GS\u2192GV) et la fonction complement circonstanciel (relation GC\u2192[GS+GV]).",
    },
    exampleWrong: {
      sentence:
        "\u00ab Le facteur distribue le courrier a huit heures. \u00bb -- Un candidat analyse la phrase en trois constituants de meme niveau : [Le facteur]sujet + [distribue]verbe + [le courrier]COD + [a huit heures]CC. Il place le COD au meme niveau que le sujet et le CC.",
      explanation:
        "C'est l'erreur la plus penalisee au CRPE. Le candidat confond les niveaux d'analyse. La bonne decomposition est : [Le facteur]GS + [distribue le courrier]GV + [a huit heures]GC. Le COD \u00ab le courrier \u00bb n'est pas un constituant de la phrase -- il est un constituant interne du GV. Au niveau de P, on ne voit que trois groupes : GS, GV, GC. Le COD, le COI, l'attribut du sujet sont des fonctions qui n'existent qu'a l'interieur du groupe verbal. Sortir le COD du GV, c'est comme ouvrir une poupee russe et melanger les niveaux.",
    },
    mainTrap:
      "Le piege majeur au CRPE : confondre les niveaux d'analyse. Au niveau de P, il n'existe que DEUX fonctions : la fonction sujet (relation entre GS et GV) et la fonction complement circonstanciel (relation entre GC et [GS+GV]). Le COD, le COI, l'attribut du sujet sont des fonctions INTERNES au GV -- ils n'existent pas au niveau de la phrase. Le GC, lui, est reconnaissable a deux tests : il est supprimable ET deplacable. Quant au predicat, la terminologie officielle Eduscol mentionne le terme mais ne l'impose pas, car le GV a toujours la meme fonction (il est le pivot de la phrase). Retenir : predicat = GV, ce n'est pas un troisieme constituant separe qui viendrait s'ajouter au sujet et au verbe.",
    quiz: [
      {
        sentence:
          "La formule officielle de la phrase selon la terminologie Eduscol est : P = [GS + GV] (+ GC), ou les crochets marquent la solidarite entre GS et GV, et les parentheses le caractere facultatif du GC.",
        isCorrect: true,
        explanation:
          "C'est la formule fondamentale a connaitre par coeur pour le CRPE. Les crochets autour de [GS + GV] indiquent que le sujet et le verbe forment un couple indissociable : pas de phrase sans les deux. Les parentheses autour de (+ GC) signifient que le complement circonstanciel est toujours facultatif -- une phrase peut parfaitement exister sans lui. Cette notation est celle de la terminologie officielle Eduscol 2021.",
      },
      {
        sentence:
          "Le predicat est un troisieme constituant de la phrase, distinct du groupe verbal : il existe donc trois fonctions au niveau de la phrase (sujet, predicat, complement circonstanciel).",
        isCorrect: false,
        explanation:
          "C'est un piege classique. Le predicat n'est PAS un constituant supplementaire : il se confond avec le groupe verbal (GV). Dire \u00ab le predicat \u00bb ou dire \u00ab le GV \u00bb, c'est designer la meme realite. La terminologie officielle Eduscol mentionne le terme \u00ab predicat \u00bb mais ne l'impose pas, precisement parce que le GV a toujours la meme fonction dans la phrase. Au niveau de P, il n'existe que deux fonctions : sujet et complement circonstanciel.",
      },
      {
        sentence:
          "Dans la phrase \u00ab Marie lit un roman passionnant dans le jardin \u00bb, le COD \u00ab un roman passionnant \u00bb est un constituant de la phrase au meme titre que le sujet \u00ab Marie \u00bb.",
        isCorrect: false,
        explanation:
          "Le COD \u00ab un roman passionnant \u00bb n'est pas un constituant de la phrase : c'est un constituant interne du groupe verbal. La decomposition correcte au niveau de P est : [Marie]GS + [lit un roman passionnant]GV + [dans le jardin]GC. Le COD vit a l'interieur du GV, au meme titre que le COI ou l'attribut du sujet. Au niveau de la phrase, seuls le sujet et le complement circonstanciel ont un statut de fonction.",
      },
      {
        sentence:
          "Le complement circonstanciel (GC) se reconnait a deux tests : il est supprimable (on peut le retirer sans rendre la phrase agrammaticale) et deplacable (on peut le mettre en tete de phrase).",
        isCorrect: true,
        explanation:
          "Ce double test est le critere officiel pour identifier un GC. Supprimable : \u00ab Le facteur distribue le courrier a huit heures \u00bb \u2192 \u00ab Le facteur distribue le courrier \u00bb (la phrase reste correcte). Deplacable : \u00ab A huit heures, le facteur distribue le courrier \u00bb (la phrase reste correcte et le sens est preserve). Si un complement echoue a l'un de ces deux tests, il n'est probablement pas un GC mais un complement essentiel du verbe (COD, COI) qui vit a l'interieur du GV.",
      },
      {
        sentence:
          "La phrase \u00ab Les oiseaux chantent \u00bb est incomplete car elle ne comporte pas de groupe circonstanciel (GC).",
        isCorrect: false,
        explanation:
          "Le GC est par definition facultatif -- c'est ce qu'indiquent les parentheses dans la formule P = [GS + GV] (+ GC). Une phrase composee uniquement d'un GS et d'un GV est parfaitement complete : [Les oiseaux]GS [chantent]GV. Le GV peut se reduire au verbe seul quand celui-ci est intransitif (il n'appelle aucun complement d'objet). L'absence de GC ne rend jamais une phrase incorrecte ou incomplete.",
      },
      {
        sentence:
          "Dans la phrase \u00ab Elle pense a ses vacances depuis ce matin \u00bb, le groupe \u00ab a ses vacances \u00bb est un complement circonstanciel car il est introduit par la preposition \u00ab a \u00bb.",
        isCorrect: false,
        explanation:
          "La presence d'une preposition ne suffit pas a faire d'un complement un GC. Ici, \u00ab a ses vacances \u00bb est un COI du verbe \u00ab penser \u00bb : il repond a \u00ab Elle pense a quoi ? \u00bb et il est lie au sens du verbe. Le test du GC echoue : on ne peut pas le supprimer sans alterer profondement le sens (\u00ab *Elle pense \u00bb ne signifie plus la meme chose) et il ne se deplace pas naturellement en tete de phrase (\u00ab *A ses vacances, elle pense \u00bb est tres marque). En revanche, \u00ab depuis ce matin \u00bb est bien un GC : il est supprimable (\u00ab Elle pense a ses vacances \u00bb) et deplacable (\u00ab Depuis ce matin, elle pense a ses vacances \u00bb).",
      },
    ],
    linkToReference: undefined,
  },
};
