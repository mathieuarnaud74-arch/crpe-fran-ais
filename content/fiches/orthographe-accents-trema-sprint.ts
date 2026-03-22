import type { Fiche } from "@/features/fiches/types";

export const accentsThremaSprint: Fiche = {
  id: "orthographe-accents-trema-sprint",
  slug: "accents-trema-regles-exceptions-sprint",
  title: "Accents et tr\u00e9ma \u2014 r\u00e8gles et exceptions",
  subtitle:
    "Ces petits signes qui changent tout : \u00e9, \u00e8, \u00ea, \u00eb et les pi\u00e8ges du CRPE",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "accent aigu",
    "accent grave",
    "accent circonflexe",
    "tr\u00e9ma",
    "diacritiques",
    "\u00e9",
    "\u00e8",
    "\u00ea",
    "\u00eb",
    "\u00ef",
    "orthographe",
  ],
  notionsLiees: [
    "orthographe-rectifications-1990-sprint",
    "orthographe-homophones-sprint",
    "orthographe-homophones-grammaticaux-sprint",
  ],
  exercicesAssocies: ["orth_accents_trema"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de r\u00e9vision rapide sur les accents et le tr\u00e9ma en fran\u00e7ais. Pour approfondir les rectifications orthographiques li\u00e9es aux accents, consulte la fiche d\u00e9di\u00e9e aux rectifications de 1990.",
    oneLiner:
      "Les accents et le tr\u00e9ma ne sont pas de simples d\u00e9corations \u2014 ce sont des outils pr\u00e9cis qui modifient la prononciation, distinguent des homophones et r\u00e9v\u00e8lent l\u2019histoire des mots. Au CRPE, savoir expliquer POURQUOI on met un accent (ou pas) est aussi important que de le placer correctement.",
    exampleCorrect: {
      sentence:
        "On \u00e9crit \u00ab \u00e9t\u00e9 \u00bb, \u00ab caf\u00e9 \u00bb avec un accent aigu (\u00e9) car le e est en syllabe ouverte et prononc\u00e9 [e] ferm\u00e9 \u2014 mais \u00ab m\u00e8re \u00bb, \u00ab fi\u00e8vre \u00bb, \u00ab pi\u00e8ce \u00bb avec un accent grave (\u00e8) car le e pr\u00e9c\u00e8de une syllabe contenant un e muet.",
      explanation:
        "C\u2019est la r\u00e8gle de la syllabe muette qui suit : quand la syllabe suivante contient un e muet (e caduc), le e accentu\u00e9 prend un accent grave (\u00e8). En syllabe ouverte sans e muet suivant, c\u2019est l\u2019accent aigu (\u00e9) qui s\u2019impose. Cette r\u00e8gle fondamentale \u00e9/\u00e8 est au c\u0153ur de tr\u00e8s nombreuses questions du CRPE.",
    },
    exampleWrong: {
      sentence:
        "Un candidat \u00e9crit \u00ab *\u00e9venement \u00bb \u2014 cette graphie est fautive dans TOUS les cas.",
      explanation:
        "Devant la syllabe muette \u00ab -ment \u00bb, c\u2019est l\u2019accent grave qui s\u2019impose sur le e pr\u00e9c\u00e9dent. La graphie rectifi\u00e9e \u00ab \u00e9v\u00e8nement \u00bb (avec \u00e8) est correcte, tout comme la graphie traditionnelle \u00ab \u00e9v\u00e9nement \u00bb (avec \u00e9, tol\u00e9r\u00e9e par l\u2019usage). En revanche, \u00ab *\u00e9venement \u00bb sans AUCUN accent sur le deuxi\u00e8me e est une faute dans les deux syst\u00e8mes. Au CRPE, cette erreur r\u00e9v\u00e8le une m\u00e9connaissance de la r\u00e8gle de base.",
    },
    mainTrap:
      "Trois pi\u00e8ges dominent au CRPE : (1) La confusion \u00e9/\u00e8 devant syllabe muette \u2014 r\u00e8gle : si la syllabe suivante contient un e muet, c\u2019est \u00e8 (r\u00e8glement, mais r\u00e9gler). (2) Oublier le r\u00f4le distinctif des accents : \u00e0/a, o\u00f9/ou, l\u00e0/la \u2014 ces accents ne sont pas optionnels, ils distinguent des mots grammaticalement diff\u00e9rents. (3) Le tr\u00e9ma oubli\u00e9 : dans \u00ab na\u00eff \u00bb, \u00ab No\u00ebl \u00bb, \u00ab ma\u00efs \u00bb, le tr\u00e9ma est indispensable pour indiquer que les deux voyelles se prononcent s\u00e9par\u00e9ment (na-\u00eff, et non *naif en une syllabe).",
    quiz: [
      {
        sentence:
          "L\u2019accent circonflexe dans \u00ab for\u00eat \u00bb est la trace d\u2019un ancien \u00ab s \u00bb (forestier).",
        isCorrect: true,
        explanation:
          "VRAI. L\u2019accent circonflexe signale souvent la disparition d\u2019un \u00ab s \u00bb \u00e9tymologique : for\u00eat/forestier, h\u00f4pital/hospitalier, f\u00eate/festif, \u00eele/insulaire. Cette connaissance \u00e9tymologique est valoris\u00e9e au CRPE car elle permet d\u2019expliquer aux \u00e9l\u00e8ves la logique derri\u00e8re l\u2019orthographe.",
      },
      {
        sentence:
          "On n\u2019\u00e9crit jamais d\u2019accent sur un e devant un x (examen, exercice).",
        isCorrect: true,
        explanation:
          "VRAI. C\u2019est une r\u00e8gle absolue en fran\u00e7ais : le e ne porte jamais d\u2019accent devant un x. On \u00e9crit \u00ab examen \u00bb, \u00ab exercice \u00bb, \u00ab exil \u00bb, \u00ab exister \u00bb sans accent, m\u00eame si le e se prononce [\u025b] ouvert. De m\u00eame, le e ne porte pas d\u2019accent devant une consonne double (belle, terre, eff\u00e9miner).",
      },
      {
        sentence:
          "\u00ab O\u00f9 \u00bb et \u00ab ou \u00bb s\u2019\u00e9crivent indiff\u00e9remment avec ou sans accent grave.",
        isCorrect: false,
        explanation:
          "FAUX. L\u2019accent grave sur \u00ab o\u00f9 \u00bb a un r\u00f4le distinctif essentiel : \u00ab o\u00f9 \u00bb (adverbe ou pronom relatif de lieu) \u2260 \u00ab ou \u00bb (conjonction de coordination). Supprimer l\u2019accent change la nature grammaticale et le sens du mot. M\u00eame principe pour \u00e0/a et l\u00e0/la.",
      },
      {
        sentence:
          "Le tr\u00e9ma dans \u00ab aigu\u00eb \u00bb (graphie rectifi\u00e9e) se place sur le u pour indiquer qu\u2019il se prononce.",
        isCorrect: true,
        explanation:
          "VRAI. Les rectifications de 1990 d\u00e9placent le tr\u00e9ma sur la voyelle qui doit \u00eatre prononc\u00e9e : on \u00e9crit d\u00e9sormais \u00ab aigu\u00eb \u00bb (et non \u00ab aigu\u00eb \u00bb) car c\u2019est le u qui se prononce. Le tr\u00e9ma indique la di\u00e9r\u00e8se \u2014 la prononciation s\u00e9par\u00e9e de deux voyelles contigu\u00ebs.",
      },
      {
        sentence:
          "\u00ab \u00c9v\u00e9nement \u00bb avec accent aigu est devenu fautif depuis les rectifications de 1990.",
        isCorrect: false,
        explanation:
          "FAUX. Les rectifications proposent \u00ab \u00e9v\u00e8nement \u00bb (avec accent grave, conforme \u00e0 la prononciation), mais la graphie traditionnelle \u00ab \u00e9v\u00e9nement \u00bb reste parfaitement correcte. Les deux graphies coexistent. Au CRPE, aucune des deux ne peut \u00eatre consid\u00e9r\u00e9e comme fautive.",
      },
      {
        sentence:
          "L\u2019accent circonflexe sur \u00ee et \u00fb est toujours obligatoire en fran\u00e7ais.",
        isCorrect: false,
        explanation:
          "FAUX. Depuis les rectifications de 1990, l\u2019accent circonflexe sur i et u n\u2019est plus obligatoire sauf quand il distingue des homophones (d\u00fb/du, m\u00fbr/mur, s\u00fbr/sur, je\u00fbne/jeune, cr\u00fb/cru). On peut donc \u00e9crire \u00ab cout \u00bb, \u00ab ile \u00bb, \u00ab paraitre \u00bb sans accent. En revanche, sur a, e, o, le circonflexe est maintenu (p\u00e2te, for\u00eat, c\u00f4te).",
      },
    ],
  },
};
