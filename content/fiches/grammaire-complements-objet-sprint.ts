import type { Fiche } from "@/features/fiches/types";

export const grammaireComplementsObjetSprint: Fiche = {
  id: "grammaire-complements-objet-sprint",
  slug: "complements-objet-cod-coi-cos-sprint",
  title: "COD, COI et COS — les compléments d'objet",
  subtitle:
    "Ce que le verbe réclame pour être complet : identifier et distinguer les trois compléments essentiels du groupe verbal",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "COD",
    "COI",
    "COS",
    "complément d'objet direct",
    "complément d'objet indirect",
    "complément d'objet second",
    "groupe verbal",
    "fonctions grammaticales",
    "GV",
  ],
  notionsLiees: [
    "grammaire-fonctions-sprint",
    "grammaire-phrase-simple-sprint",
    "grammaire-attribut-verbes-attributifs-sprint",
  ],
  exercicesAssocies: ["grm_complements_objet"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint couvre l'essentiel sur les compléments d'objet (COD, COI, COS) au CRPE. Elle cible les distinctions cruciales — notamment avec l'attribut du sujet — et les pièges récurrents des annales.",
    oneLiner:
      "Le COD, le COI et le COS sont les compagnons du verbe — ils vivent à l'intérieur du groupe verbal et complètent son sens. Le COD se construit directement (sans préposition), le COI se construit indirectement (avec une préposition), et le COS est le second complément d'objet quand le verbe en appelle deux. Savoir les distinguer entre eux — et surtout les distinguer de l'attribut du sujet — c'est maîtriser le cœur de l'analyse grammaticale au CRPE.",
    exampleCorrect: {
      sentence:
        "« Le professeur donne un livre à ses élèves. » — Le professeur [sujet] | donne [verbe transitif direct et indirect] | un livre [COD] | à ses élèves [COS]. Le GV complet est : « donne un livre à ses élèves ».",
      explanation:
        "Pourquoi « un livre » est-il COD ? Parce qu'il répond à la question « Le professeur donne quoi ? », qu'il se construit sans préposition et qu'il peut être pronominalisé : « Le professeur le donne à ses élèves. » Pourquoi « à ses élèves » est-il COS (et non simple COI) ? Parce que c'est le second complément d'objet d'un verbe qui possède déjà un COD : le verbe « donner » appelle à la fois la chose donnée (COD) et le destinataire (COS, construit avec la préposition « à »). Attention : dans la terminologie officielle Éduscol, le COS est analysé comme un COI ; le terme « COS » reste cependant largement utilisé dans les annales du CRPE pour désigner ce second complément.",
    },
    exampleWrong: {
      sentence:
        "« Pierre est médecin. » — Un candidat identifie « médecin » comme COD du verbe « est », en raisonnant : « Pierre est quoi ? → médecin, donc c'est un COD. »",
      explanation:
        "C'est l'erreur la plus fréquente et la plus sanctionnée au CRPE. « Médecin » n'est pas un COD mais un attribut du sujet. Le verbe « être » est un verbe attributif : il ne décrit pas une action du sujet sur un objet, il attribue une propriété au sujet. Le test décisif : un COD désigne une entité différente du sujet (« Pierre lit un livre » → Pierre ≠ le livre), tandis que l'attribut du sujet désigne la même entité (« Pierre est médecin » → Pierre = médecin). Les verbes attributifs (être, sembler, devenir, paraître, demeurer, rester…) n'admettent jamais de COD.",
    },
    mainTrap:
      "Deux pièges dominent au CRPE : (1) Confondre COD et attribut du sujet — le test décisif est la nature du verbe : les verbes attributifs (être, sembler, devenir, paraître…) introduisent un attribut, jamais un COD. Avec un attribut, le sujet et le complément désignent la même entité (« Elle est avocate » → elle = avocate) ; avec un COD, ils désignent deux entités distinctes (« Elle consulte un avocat » → elle ≠ l'avocat). (2) Confondre COI et complément circonstanciel — le COI est essentiel au sens du verbe et non supprimable sans altérer profondément le sens (« Il parle à Marie » → « *Il parle » change de sens), tandis que le CC est déplaçable et supprimable (« Il travaille le mardi » → « Le mardi, il travaille » / « Il travaille »). Astuce : si le complément prépositionnel répond à « de qui / à qui / de quoi / à quoi ? », c'est probablement un COI ; s'il répond à « où ? quand ? comment ? pourquoi ? », c'est un CC.",
    quiz: [
      {
        sentence:
          "Dans la phrase « L'enfant caresse le chat roux du voisin », le groupe nominal « le chat roux du voisin » est COD du verbe « caresse ».",
        isCorrect: true,
        explanation:
          "Le GN « le chat roux du voisin » répond à la question « L'enfant caresse quoi ? ». Il se construit sans préposition, fait partie du GV et peut être pronominalisé : « L'enfant le caresse. » C'est bien un COD. Attention à ne pas se laisser distraire par l'expansion « du voisin » (complément du nom « chat ») : le COD est l'ensemble du GN.",
      },
      {
        sentence:
          "Dans la phrase « Cette fleur semble fragile », le mot « fragile » est COD du verbe « semble ».",
        isCorrect: false,
        explanation:
          "« Semble » est un verbe attributif, au même titre que « être », « paraître » ou « devenir ». Il introduit un attribut du sujet, jamais un COD. Ici, « fragile » (adjectif) qualifie le sujet « cette fleur » et lui est relié par le verbe attributif. Le test : cette fleur = fragile (même entité), ce qui confirme l'attribut. Pour qu'il y ait un COD, il faudrait un verbe transitif direct désignant une action : « Cette fleur parfume la pièce. »",
      },
      {
        sentence:
          "Dans la phrase « Les élèves obéissent au maître », le groupe « au maître » est un COI car il est introduit par la préposition « à » et complète le sens du verbe « obéir ».",
        isCorrect: true,
        explanation:
          "Le verbe « obéir » est un verbe transitif indirect : il se construit obligatoirement avec la préposition « à ». Le groupe « au maître » (= « à le maître ») est bien un COI — il répond à « Les élèves obéissent à qui ? » et peut être pronominalisé : « Les élèves lui obéissent. » Ce complément n'est ni déplaçable ni supprimable sans altérer profondément le sens, ce qui confirme son statut de complément essentiel du verbe.",
      },
      {
        sentence:
          "Dans la phrase « La directrice a informé les parents de la décision », le groupe « de la décision » est un complément circonstanciel de cause.",
        isCorrect: false,
        explanation:
          "Le groupe « de la décision » est un COS (complément d'objet second), c'est-à-dire un second COI du verbe « informer ». Le verbe « informer » appelle deux compléments : la personne informée (COD : « les parents ») et l'objet de l'information (COS : « de la décision »). Ce complément répond à « informer de quoi ? » et non à « pourquoi ? ». Il est lié au sens du verbe et ne peut être ni déplacé en tête de phrase ni supprimé sans perte de sens majeure — ce n'est donc pas un CC.",
      },
      {
        sentence:
          "Lorsqu'on pronominalise un COD, on utilise les pronoms « le », « la » ou « les » : « Je lis ce roman » → « Je le lis. »",
        isCorrect: true,
        explanation:
          "La pronominalisation est le test le plus fiable pour identifier un COD. Les pronoms personnels compléments « le » (masculin singulier), « la » (féminin singulier) et « les » (pluriel) remplacent le COD : « Je lis ce roman » → « Je le lis. » À ne pas confondre avec les pronoms COI « lui » et « leur » : « Je parle à Marc » → « Je lui parle. » Ce test permet aussi de distinguer le COD de l'attribut, car l'attribut est pronominalisé par « le » invariable : « Elle est médecin » → « Elle l'est. »",
      },
      {
        sentence:
          "Dans la phrase « Je pense qu'il viendra demain », la proposition subordonnée conjonctive « qu'il viendra demain » est COD du verbe « pense ».",
        isCorrect: true,
        explanation:
          "La proposition subordonnée conjonctive complétive « qu'il viendra demain », introduite par la conjonction de subordination « que », occupe la fonction de COD du verbe « penser ». Elle répond à « Je pense quoi ? » et peut être remplacée par le pronom « le » : « Je le pense. » C'est un cas important au CRPE : le COD n'est pas toujours un GN — il peut être un pronom, un infinitif (« Je veux partir ») ou une proposition subordonnée complétive. La terminologie officielle Éduscol liste explicitement la proposition subordonnée conjonctive parmi les natures possibles du COD.",
      },
    ],
    linkToReference: undefined,
  },
};
