export type FrenchDiagnosticSubdomainKey =
  | "grammaire"
  | "orthographe"
  | "conjugaison"
  | "lexique"
  | "analyse_langue"
  | "comprehension_texte"
  | "didactique_francais";

export type FrenchDiagnosticQuestion = {
  id: string;
  subdomain: FrenchDiagnosticSubdomainKey;
  subdomainLabel: string;
  href: string;
  competency: string;
  instruction: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
  retryAdvice: string;
};

type QuestionTuple = readonly [
  id: string,
  competency: string,
  instruction: string,
  choices: [string, string, string, string],
  correctIndex: number,
  explanation: string,
  retryAdvice: string,
];

const SUBDOMAIN_META: Record<
  FrenchDiagnosticSubdomainKey,
  {
    label: string;
    href: string;
  }
> = {
  grammaire: {
    label: "Grammaire",
    href: "/francais/grammaire",
  },
  orthographe: {
    label: "Orthographe",
    href: "/francais/orthographe",
  },
  conjugaison: {
    label: "Conjugaison",
    href: "/francais/grammaire?subdomain=conjugaison",
  },
  lexique: {
    label: "Lexique",
    href: "/francais/lexique",
  },
  analyse_langue: {
    label: "Analyse de la langue",
    href: "/francais/analyse-de-la-langue",
  },
  comprehension_texte: {
    label: "Compréhension de texte",
    href: "/francais/analyse-de-la-langue",
  },
  didactique_francais: {
    label: "Didactique du français",
    href: "/francais/didactique-du-francais",
  },
};

export const FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER: FrenchDiagnosticSubdomainKey[] = [
  "grammaire",
  "orthographe",
  "conjugaison",
  "lexique",
  "analyse_langue",
  "comprehension_texte",
  "didactique_francais",
];

export const FRENCH_DIAGNOSTIC_SESSION_SIZE = 40;

function buildQuestion(
  subdomain: FrenchDiagnosticSubdomainKey,
  [id, competency, instruction, choices, correctIndex, explanation, retryAdvice]: QuestionTuple,
): FrenchDiagnosticQuestion {
  return {
    id,
    subdomain,
    subdomainLabel: SUBDOMAIN_META[subdomain].label,
    href: SUBDOMAIN_META[subdomain].href,
    competency,
    instruction,
    choices,
    correctIndex,
    explanation,
    retryAdvice,
  };
}

function shuffle<T>(items: T[], randomFn: () => number) {
  const copy = items.slice();

  for (let index = copy.length - 1; index > 0; index -= 1) {
    const swapIndex = Math.floor(randomFn() * (index + 1));
    [copy[index], copy[swapIndex]] = [copy[swapIndex], copy[index]];
  }

  return copy;
}


const grammaireTuples: QuestionTuple[] = [
  [
    "diag-gram-1",
    "Identifier une proposition infinitive",
    "Dans \"J'entends les enfants chanter dans la cour\", le groupe \"les enfants chanter\" est :",
    ["Un groupe nominal COD", "Une proposition subordonnée complétive", "Une proposition infinitive", "Un groupe verbal apposé"],
    2,
    "Ce groupe a son propre sujet (\"les enfants\") ET un verbe à l'infinitif (\"chanter\") — c'est une proposition infinitive, COD du verbe de perception \"entendre\". Deux éléments à repérer ensemble !",
    "Cherche d'abord si le groupe a son propre sujet exprimé. Si oui → proposition infinitive. Si non → infinitif COD simple.",
  ],
  [
    "diag-gram-2",
    "Distinguer apposition et attribut du sujet",
    "Dans \"Médecin renommé, il comprenait mieux la souffrance\", la fonction de \"Médecin renommé\" est :",
    ["Apposition au sujet détachée", "Attribut du sujet", "Complément circonstanciel de cause", "Épithète détachée"],
    0,
    "Attention ici — ce groupe nominal est détaché en tête de phrase et apporte une précision sur le sujet \"il\". C'est une apposition, pas un attribut : un attribut exige un verbe attributif (être, sembler…), il n'y en a pas !",
    "Distingue bien les deux : l'apposition donne une précision sans verbe attributif, l'attribut du sujet est relié par un verbe attributif (être, sembler, paraître…).",
  ],
  [
    "diag-gram-3",
    "Identifier un sujet inversé dans une proposition relative",
    "Dans \"le problème que redoutait l'enseignante\", quelle est la fonction de \"l'enseignante\" ?",
    ["Sujet inversé du verbe \"redoutait\"", "Complément du nom \"problème\"", "Complément d'objet indirect", "Complément d'agent"],
    0,
    "Oui, et c'est logique : le pronom relatif \"que\" occupe déjà la place de COD, donc le sujet réel — \"l'enseignante\" — se retrouve après le verbe. C'est un sujet inversé.",
    "Quand un pronom relatif précède le verbe, cherche le sujet après le verbe — il peut être inversé.",
  ],
  [
    "diag-gram-4",
    "Identifier une proposition participiale absolue",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition participiale absolue", "Une subordonnée circonstancielle de temps", "Un participe passé épithète"],
    1,
    "C'est la règle clé : une participiale absolue a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et vaut comme un CC.",
    "Une participiale absolue a toujours son propre sujet exprimé — c'est ce qui la distingue du participe épithète ou attribut.",
  ],
  [
    "diag-gram-5",
    "Analyser le sujet réel d'un verbe impersonnel",
    "Dans \"Il est indispensable de travailler régulièrement\", quelle est la fonction de \"de travailler régulièrement\" ?",
    ["Sujet réel du verbe impersonnel", "COD du verbe impersonnel", "Attribut du sujet apparent", "Complément circonstanciel de manière"],
    0,
    "Exactement ! Le \"il\" est un sujet grammatical apparent, un simple fantôme. Le groupe infinitif \"de travailler régulièrement\" est le vrai sujet — le sujet réel du verbe impersonnel.",
    "Avec un verbe impersonnel, cherche systématiquement le sujet réel exprimé après le verbe.",
  ],
  [
    "diag-gram-6",
    "Identifier un complément d'agent",
    'Dans "La décision a été prise par le directeur", "par le directeur" est :',
    ["Un complément circonstanciel de cause", "Un complément d'objet indirect", "Un complément d'agent", "Un complément circonstanciel de moyen"],
    2,
    "Dans une phrase passive, le complément d'agent désigne celui qui accomplit l'action — ici \"le directeur\" est bien l'auteur de la décision. Il est introduit par \"par\" (ou parfois \"de\").",
    "Repère la voix passive (être + participe passé), puis cherche le groupe introduit par \"par\" — c'est le complément d'agent.",
  ],
  [
    "diag-gram-7",
    "Distinguer épithète liée et apposition détachée",
    'Dans "Le vieil homme, fatigué, s\'arrêta", la fonction de "fatigué" est :',
    ["Apposition détachée", "Épithète liée au nom", "Attribut du sujet", "Complément du nom"],
    0,
    "\"Fatigué\" est isolé par des virgules et détaché du nom — c'est une apposition. L'épithète, elle, s'intègre directement dans le groupe nominal sans pause.",
    "Une apposition est toujours détachée par une virgule ; l'épithète est soudée au nom sans pause.",
  ],
  [
    "diag-gram-8",
    "Distinguer voix passive, attribut du sujet et pronominal",
    "Dans laquelle de ces phrases le verbe est-il à la voix passive vraie ?",
    ["Le jardin est entretenu par des bénévoles.", "La neige s'est accumulée sur les toits.", "Cette méthode est reconnue dans le monde entier.", "Le couloir semble bien éclairé."],
    0,
    "La voix passive vraie comporte un complément d'agent (ici \"par des bénévoles\"). Sans \"par\", la construction peut être un attribut du sujet (\"est reconnue\", \"semble éclairé\") ou un verbe pronominal (\"s'est accumulée\"). Seule la présence de l'agent explicite distingue la passive de l'attribut de manière certaine.",
    "Voix passive = être + PP + par + agent. Sans complément d'agent, \"être + PP\" peut être un simple attribut du sujet. Ne confonds pas les deux.",
  ],
  [
    "diag-gram-9",
    "Identifier un attribut du COD",
    'Dans "Les jurés ont déclaré l\'accusé coupable", la fonction de "coupable" est :',
    ["Apposition au COD", "Épithète du COD", "Attribut du COD", "Attribut du sujet"],
    2,
    "\"Coupable\" attribue une qualité au COD \"l'accusé\" via le verbe d'opinion \"déclarer\" — c'est un attribut du COD. Il ne qualifie pas le sujet, il est relié au complément d'objet.",
    "L'attribut du COD accompagne des verbes comme trouver, juger, déclarer, rendre, élire… et qualifie leur complément d'objet direct.",
  ],
  [
    "diag-gram-10",
    "Distinguer relative déterminative et explicative",
    'Dans "Les étudiants qui travaillent réussissent", la subordonnée relative est :',
    ["Explicative — elle ajoute une information sur un référent déjà identifié", "Déterminative — elle restreint l'ensemble désigné par le nom", "Complétive — elle est COD du verbe principal", "Appositive — elle remplace un antécédent nominal"],
    1,
    "La relative \"qui travaillent\" identifie un sous-ensemble : pas tous les étudiants, seulement ceux qui travaillent. C'est une relative déterminative, indispensable au sens.",
    "Relative déterminative = sans virgule, elle restreint le référent. Relative explicative = entre virgules, elle ajoute une précision sur un référent déjà identifié.",
  ],
  [
    "diag-gram-11",
    "Analyser une dislocation gauche avec reprise pronominale",
    "Dans \"Ces élèves-là, je les connais bien\", la construction syntaxique est :",
    ["Une dislocation gauche : le GN est thématisé et repris par un pronom clitique", "Une coordination de deux propositions indépendantes", "Une phrase avec apposition et pronom démonstratif", "Un complément circonstanciel détaché en tête"],
    0,
    "La dislocation gauche consiste à extraire un constituant en tête de phrase et à le reprendre par un pronom clitique — ici \"ces élèves-là\" est thématisé, repris par \"les\". C'est une marque de mise en relief typique de l'oral.",
    "Repère le GN détaché en tête et son substitut pronominal dans la proposition principale.",
  ],
  [
    "diag-gram-12",
    "Identifier la fonction d'une proposition infinitive COD",
    "Dans \"Je préfère partir tôt plutôt qu'arriver en retard\", les deux propositions infinitives sont :",
    ["Deux COD coordonnés du verbe \"préférer\"", "Un COD et un COI du même verbe", "Une principale et une subordonnée consécutive", "Deux appositions coordonnées au sujet"],
    0,
    "Les deux infinitives \"partir tôt\" et \"arriver en retard\" sont des propositions infinitives COD coordonnées par la locution comparative \"plutôt que\". Elles complètent toutes deux le verbe \"préférer\".",
    "Vérifie la nature et la fonction des deux groupes infinitifs : quelle question répondent-ils par rapport au verbe principal ?",
  ],
  [
    "diag-gram-13",
    "Distinguer phrase simple et phrase complexe",
    'La phrase "Le vent souffle et la pluie tombe" est :',
    ["Une phrase nominale", "Une phrase simple à deux sujets", "Une phrase complexe", "Une phrase interrogative"],
    2,
    "Elle contient deux verbes conjugués (\"souffle\" et \"tombe\"), donc deux propositions — c'est une phrase complexe. Une proposition = un verbe conjugué.",
    "Compte les verbes conjugués pour commencer l'analyse.",
  ],
  [
    "diag-gram-14",
    "Analyser la construction d'un verbe à complément de résultat",
    "Dans \"Il a traduit ce texte en espagnol\", \"en espagnol\" est :",
    ["Complément circonstanciel de moyen", "Complément d'objet indirect du verbe \"traduire\"", "Attribut du COD", "Complément du résultat (second COD)"],
    3,
    "Le groupe \"en espagnol\" indique le résultat de la traduction — c'est un complément du résultat. \"Traduire\" est un verbe à double complémentation : on traduit quelque chose (COD) en quelque chose (résultat). Ce complément n'est pas un CC : il est lié à la sémantique du verbe.",
    "Distingue les CC (effaçables sans changer le sens fondamental) des compléments liés à la sémantique du verbe comme le complément du résultat.",
  ],
  [
    "diag-gram-15",
    "Identifier la négation expletive",
    "Dans \"Je crains qu'il ne soit trop tard\", le \"ne\" expletif :",
    ["Exprime une négation complète et nie le contenu de la subordonnée", "Est une erreur de style à éviter dans tous les contextes", "Est obligatoire après tous les verbes de sentiment", "N'a pas de valeur négative : c'est un marqueur stylistique après certains verbes de crainte"],
    3,
    "Le \"ne\" expletif apparaît seul (sans \"pas\") après les verbes de crainte, de doute et dans certaines comparatives. Il ne nie pas la proposition : \"Je crains qu'il ne soit trop tard\" signifie qu'on craint que ce soit trop tard. Il relève du registre soutenu.",
    "Distingue le \"ne\" de négation (ne…pas/plus/jamais) du \"ne\" expletif, qui survient seul dans des contextes précis (craindre, éviter, avant que, à moins que…).",
  ],
];
const orthographeTuples: QuestionTuple[] = [
  [
    "diag-ortho-1",
    "Accorder un adjectif de couleur composé",
    "Quelle écriture est correcte ?",
    ["des robes vert clair", "des robes vertes claires", "des robes vert-clairs", "des robes verts clairs"],
    0,
    "C'est la règle clé : un adjectif de couleur composé de deux mots est invariable. On écrit \"vert clair\" — sans accord ET sans trait d'union.",
    "Dès qu'une couleur est nuancée par un autre adjectif ou un nom (vert clair, bleu marine…), elle devient invariable.",
  ],
  [
    "diag-ortho-2",
    "Former le pluriel d'un nom composé verbe + nom",
    "Quel pluriel est correct pour \"un abat-jour\" ?",
    ["des abats-jour", "des abat-jours", "des abats-jours", "des abat-jour"],
    3,
    "Attention ici — dans un nom composé verbe + nom, le verbe est toujours invariable. Et \"jour\" désigne un complément générique qui reste lui aussi invariable : des abat-jour.",
    "Analyse la structure du nom composé (V+N, N+N, N+Prép+N) pour décider quel élément s'accorde.",
  ],
  [
    "diag-ortho-3",
    "Accorder le participe passé avec le pronom 'en'",
    "Dans 'Des romans, j'en ai lu beaucoup', pourquoi 'lu' reste-t-il invariable ?",
    ["Le pronom 'en' est un COD sans genre ni nombre précis", "Le participe passé avec avoir ne s'accorde jamais", "Le sujet est masculin singulier", "Le verbe lire est toujours invariable"],
    0,
    "Oui, et c'est logique : quand le COD est le pronom \"en\", le participe passé reste invariable — \"en\" est un pronom partitif, il n'a pas de genre ni de nombre précis.",
    "Distingue \"en\" (pas d'accord) des autres pronoms COD antéposés comme \"les\", \"la\" ou \"que\" (accord obligatoire).",
  ],
  [
    "diag-ortho-4",
    "Appliquer les rectifications orthographiques de 1990",
    "Selon les rectifications de 1990, quelle graphie est recommandée ?",
    ["un nenufar", "un nénuphar", "Les deux formes sont équivalentes", "un nénufar"],
    3,
    "Les rectifications de 1990 simplifient certaines graphies : \"nénuphar\" devient \"nénufar\" pour aligner l'orthographe sur la prononciation. La réforme touche aussi les accents circonflexes et les mots composés.",
    "Les rectifications de 1990 suppriment certains accents circonflexes, soudent des mots composés et simplifient des graphies étymologiques irrégulières.",
  ],
  [
    "diag-ortho-5",
    "Distinguer couleurs variables et invariables",
    "Quelle paire d'accords est entièrement correcte ?",
    ["des souliers marron / des souliers bruns", "des robes oranges / des robes marines", "des gants crèmes / des chemises bleues", "des écharpes roses / des pulls ivoires"],
    0,
    "\"Marron\" (nom commun) est invariable → des souliers marron. \"Brun\" (adjectif) s'accorde → des souliers bruns. Les deux formes sont correctes. En b, \"oranges\" est fautif (orange = nom, invariable). En c, \"crèmes\" est fautif. En d, \"ivoires\" est fautif.",
    "Noms de couleur (marron, orange, ivoire, crème, marine, saumon…) = invariables. Adjectifs de couleur (bleu, rouge, brun, rose, vert…) = variables. Teste : est-ce d'abord un nom commun ?",
  ],
  [
    "diag-ortho-6",
    "Accorder le participe passé suivi d'un infinitif avec verbe de perception",
    "Dans \"Les élèves que j'ai entendus chanter\", pourquoi \"entendus\" s'accorde-t-il ?",
    ["Parce que le COD antéposé \"que\" représente les élèves qui accomplissent l'action de chanter", "Parce que le PP avec avoir s'accorde toujours avec le pronom relatif \"que\"", "Parce que \"entendus\" est attribut du COD", "Parce que le PP précède un infinitif et s'accorde automatiquement"],
    0,
    "La règle : le PP d'un verbe de perception suivi d'un infinitif s'accorde avec le COD antéposé seulement si ce COD est le sujet logique de l'infinitif. Ici \"les élèves\" (= que) font l'action de chanter → accord obligatoire. Si le COD subit l'action, il n'y a pas d'accord.",
    "Pose la question : le COD antéposé accomplit-il l'action de l'infinitif ? Si oui → accord ; sinon → pas d'accord (ex. : les chansons que j'ai entendu chanter).",
  ],
  [
    "diag-ortho-7",
    "Maîtriser l'accord de \"même\" renforcant un pronom",
    "Quelle écriture est correcte ?",
    ["Les élèves eux-mêmes ont corrigé leurs copies.", "Les élèves eux-même ont corrigé leurs copies.", "Les élèves eux-mêmes ont corrigées leurs copies.", "Les élèves eux même ont corrigé leurs copies."],
    0,
    "\"Même\" employé comme adjectif pour renforcer un pronom s'accorde avec ce pronom et prend un trait d'union : \"eux-mêmes\" (masc. pluriel). L'adverbe \"même\" (= aussi, jusqu'à) reste invariable : \"Même les meilleurs se trompent\".",
    "Distingue \"même\" adjectif (accordé, trait d'union : eux-mêmes, elle-même) de \"même\" adverbe (invariable : même les meilleurs…).",
  ],
  [
    "diag-ortho-8",
    "Accorder un adjectif composé de deux adjectifs qualificatifs",
    "Quelle écriture est correcte pour qualifier des enfants atteints des deux déficits ?",
    ["des enfants sourd-muets", "des enfants sourds-muets", "des enfants sourd-muet", "des enfants sourds-muet"],
    1,
    "Dans un adjectif composé de deux adjectifs qualificatifs (\"sourd\" + \"muet\"), les deux s'accordent avec le nom quand ils le qualifient tous les deux : \"sourds-muets\" (masc. pluriel). Exception : si le premier joue un rôle adverbial, il reste invariable (\"nouveau-nés\").",
    "Dans un adjectif composé A + A où les deux qualifient le nom → les deux s'accordent. Si le premier modifie le second (rôle adverbial) → il reste invariable.",
  ],
  [
    "diag-ortho-9",
    "Accorder le participe passé d'un verbe essentiellement pronominal",
    "Laquelle de ces formes est correcte pour le verbe \"se souvenir\" au passé composé, sujet \"elles\" ?",
    ["Elles se sont souvenu.", "Elles se sont souvenies.", "Elles se sont souvenues.", "Elles se sont souvenue."],
    2,
    "\"Se souvenir\" est essentiellement pronominal → son PP s'accorde avec le sujet. Le sujet \"elles\" est féminin pluriel. Le PP de \"souvenir\" est \"souvenu\" → féminin pluriel : \"souvenues\". La forme \"souvenies\" est un barbarisme : le PP suit le paradigme en -u, pas en -ir.",
    "Pour les verbes essentiellement pronominaux, le PP s'accorde avec le sujet. Vérifie aussi la morphologie exacte du PP (souvenu → souvenues, et non *souvenies).",
  ],
  [
    "diag-ortho-10",
    "Maîtriser l'accord de \"demi\" avant et après le nom",
    "Quelle série d'écritures est entièrement correcte ?",
    ["une demi-heure / deux heures et demie / une heure et demi", "une demi-heure / deux heures et demie / une heure et demie", "une demie-heure / deux heures et demie / une heure et demie", "une demi-heure / deux heures et demies / une heure et demie"],
    1,
    "Deux règles coexistent : (1) \"Demi\" avant le nom, avec trait d'union, est invariable : une demi-heure. (2) \"Demi\" après le nom, avec \"et\", s'accorde en genre (jamais en nombre) : une heure et demie (f.), un jour et demi (m.). Pas de -s dans les deux cas.",
    "Avant le nom (trait d'union) → invariable. Après le nom (avec \"et\") → s'accorde en genre seulement, jamais en nombre.",
  ],
  [
    "diag-ortho-11",
    "Maîtriser l'accord de \"tout\" adverbe devant un adjectif féminin",
    "Quelle écriture est correcte ?",
    ["Elles sont tout étonnées.", "Elles sont toutes étonnées.", "Elles sont tout émues.", "Les propositions B et C sont correctes."],
    3,
    "\"Tout\" adverbe (= entièrement) est normalement invariable, SAUF devant un adjectif féminin commençant par une consonne ou un h aspiré : il s'accorde pour éviter le hiatus. Devant une voyelle ou h muet, il reste invariable. Donc : \"toutes étonnées\" (consonne) mais \"tout émues\" (voyelle). Les deux sont corrects.",
    "\"Tout\" adverbe : invariable sauf devant adjectif féminin débutant par consonne ou h aspiré → accord (toute/toutes). Devant voyelle ou h muet → invariable.",
  ],
  [
    "diag-ortho-12",
    "Accorder un verbe avec un sujet éloigné",
    "Quelle forme est correcte ?",
    [
      "Le bruit des chaises perturbent la classe.",
      "Le bruit des chaises perturbe la classe.",
      "Les bruits des chaises perturbe la classe.",
      "Le bruit des chaises pertubes la classe.",
    ],
    1,
    "Attention ici — le sujet, c'est \"bruit\", au singulier. \"Des chaises\" n'est qu'un complément du nom, il ne commande pas l'accord du verbe.",
    "Isole le noyau du sujet avant de choisir la terminaison.",
  ],
  [
    "diag-ortho-13",
    "Orthographier correctement les nombres composés selon les rectifications de 1990",
    "Selon les rectifications orthographiques de 1990, comment écrire correctement deux cent trente-deux ?",
    ["deux cent trente-deux (ancienne norme, toujours correcte)", "deux-cent-trente-deux (trait d'union entre tous les éléments)", "deux cents trente-deux (accord de \"cents\" suivi d'un autre nombre)", "deux cent trente deux (aucun trait d'union, graphie simplifiée)"],
    1,
    "La réforme de 1990 uniformise : on met désormais des traits d'union entre TOUS les éléments d'un nombre composé, sans exception : \"deux-cent-trente-deux\". L'ancienne règle limitait les traits d'union aux nombres inférieurs à cent sans \"et\". Les deux graphies sont acceptées, mais la réforme est recommandée.",
    "Réforme 1990 : trait d'union entre tous les éléments des nombres composés (vingt-et-un, deux-cent-trente-deux, mille-neuf-cent-quatre-vingt-dix-neuf).",
  ],
  [
    "diag-ortho-14",
    "Maîtriser l'accord de \"nu\" et \"mi\" dans les adjectifs composés",
    "Quelle écriture est correcte ?",
    ["aller nu-pieds / à mi-parcours / les bras nus", "aller nus-pieds / à mi-parcours / les bras nus", "aller nu-pieds / à mi-parcours / les bras nu", "aller nus-pieds / à mi-parcours / les bras nu"],
    0,
    "\"Nu\" et \"mi\" placés avant le nom avec trait d'union sont invariables : nu-pieds, mi-parcours. En revanche, placés après le nom (ou le verbe), ils s'accordent normalement : les bras nus, à moitié nue. Même logique que \"demi\".",
    "\"Nu\" et \"mi\" avant le nom (trait d'union) → invariables. Après le nom → accordés normalement.",
  ],
  [
    "diag-ortho-15",
    "Accorder un adjectif attribut",
    "Quelle phrase est correcte ?",
    ["Ces fleurs sont bel.", "Ces fleurs sont belles.", "Ces fleurs sont beau.", "Ces fleurs sont beaux."],
    1,
    "L'adjectif attribut \"belles\" s'accorde avec le sujet \"ces fleurs\", féminin pluriel — beau → belle → belles. L'accord passe par le verbe attributif.",
    "Avec un verbe attributif, pense à l'accord de l'attribut avec le sujet.",
  ],
];
const conjugaisonTuples: QuestionTuple[] = [
  [
    "diag-conj-1",
    "Identifier le conditionnel passé 2e forme",
    "Dans 'S'il eût su la vérité, il eût agi différemment', les formes verbales appartiennent à :",
    ["Le subjonctif plus-que-parfait valant conditionnel passé", "Le plus-que-parfait de l'indicatif", "L'imparfait du subjonctif", "Le conditionnel passé 1re forme"],
    0,
    "Dans les textes littéraires soutenus, le subjonctif plus-que-parfait peut remplacer le conditionnel passé — c'est le conditionnel passé 2e forme. \"Eût su\" = \"aurait su\".",
    "Retiens : dans un texte littéraire, \"eût + participe passé\" = conditionnel passé 2e forme.",
  ],
  [
    "diag-conj-2",
    "Comprendre la concordance des temps au discours indirect",
    "Dans 'Il affirmait qu'elle viendrait le lendemain', la forme 'viendrait' exprime :",
    ["Un souhait formulé au présent", "Une hypothèse avec condition", "Le futur dans le passé (futur du passé)", "Une obligation modale"],
    2,
    "Au discours indirect avec un verbe introducteur au passé, le futur simple se transforme en conditionnel présent — c'est le futur du passé. Le sens reste \"elle va venir\".",
    "Règle de concordance : discours direct (futur) → discours indirect au passé (conditionnel présent).",
  ],
  [
    "diag-conj-3",
    "Choisir la forme correcte du subjonctif passé",
    "Complétez : 'Bien qu'il ___ à l'heure, la réunion avait déjà commencé.'",
    ["fût arrivé", "était arrivé", "est arrivé", "soit arrivé"],
    3,
    "Après \"bien que\", le subjonctif est obligatoire. Et comme l'action est antérieure à la principale, tu emploies le subjonctif passé : \"soit arrivé\".",
    "Subjonctif passé = auxiliaire au subjonctif présent + participe passé : il marque une antériorité par rapport à la principale.",
  ],
  [
    "diag-conj-4",
    "Identifier la valeur de l'imparfait dans un système hypothétique oral",
    "Dans 'Si tu m'aidais, on finissait plus vite' (registre oral), l'imparfait de la principale exprime :",
    ["Un conditionnel présent à valeur hypothétique", "Une habitude révolue dans le passé", "Un fait accompli antérieur", "Une action simultanée au passé"],
    0,
    "Dans le registre oral familier, l'imparfait peut se substituer au conditionnel présent dans la principale d'un système hypothétique — c'est courant à l'oral, même si ça reste du non-standard.",
    "Distingue l'imparfait descriptif ou d'habitude de l'imparfait substitué au conditionnel dans les structures hypothétiques.",
  ],
  [
    "diag-conj-5",
    "Identifier le passé simple d'un verbe irrégulier",
    "Quelle forme est le passé simple de 'résoudre' à la 3e personne du singulier ?",
    ["résoudît", "résolut", "résolva", "résoludra"],
    1,
    "Le passé simple de \"résoudre\" est irrégulier — \"il résolut\". Les verbes en -soudre ont un passé simple en -solut/-solus. Pas de -a, pas de -dra.",
    "Mémorise les passés simples irréguliers fréquents : résoudre → résolut, naître → naquit, vaincre → vainquit.",
  ],
  [
    "diag-conj-6",
    "Identifier le passé antérieur dans une subordonnée temporelle",
    "Dans \"Dès qu'il eut fini, il se leva\", quel est le temps de \"eut fini\" et pourquoi l'emploie-t-on ici ?",
    ["Plus-que-parfait : il exprime une antériorité générale par rapport à l'action principale", "Passé antérieur : il exprime l'antériorité immédiate dans une subordonnée temporelle dont la principale est au passé simple", "Conditionnel passé 2e forme : il remplace le conditionnel dans un registre littéraire", "Subjonctif plus-que-parfait : il est requis après \"dès que\""],
    1,
    "Le passé antérieur (auxiliaire au passé simple + PP) s'emploie dans les subordonnées temporelles introduites par \"dès que\", \"aussitôt que\", \"lorsque\"… quand la principale est au passé simple. Il exprime l'antériorité immédiate. Ne pas confondre avec le plus-que-parfait (auxiliaire à l'imparfait).",
    "Passé antérieur = auxiliaire au passé simple + PP. Il n'apparaît que dans des subordonnées temporelles avec une principale au passé simple. Hors de ce contexte, on trouve le PQP.",
  ],
  [
    "diag-conj-7",
    "Choisir entre subjonctif présent et imparfait du subjonctif en registre soutenu",
    "Dans un registre littéraire soutenu, quelle forme est correcte dans : \"Bien qu'il ___ présent hier, il ne dit rien\" ?",
    ["soit", "fût", "serait", "était"],
    1,
    "Dans le registre littéraire soutenu, la concordance des temps stricte s'applique : quand la principale est au passé (passé simple \"dit\"), la subordonnée subjonctive prend l'imparfait du subjonctif. \"Fût\" est l'imparfait du subjonctif de \"être\", équivalent soutenu du subjonctif présent \"soit\".",
    "Concordance des temps en registre soutenu : principale au passé → subordonnée subjonctive à l'imparfait du subjonctif (fût, eût, allât, vînt…).",
  ],
  [
    "diag-conj-8",
    "Choisir entre futur simple et futur antérieur dans une subordonnée temporelle",
    "Choisissez la forme correcte : \"Lorsque tu ___ tes devoirs, tu pourras jouer.\"",
    ["finiras", "auras fini", "finirais", "aies fini"],
    1,
    "Dans une subordonnée temporelle de futurité (\"lorsque\"), si l'action de la subordonnée est antérieure à celle de la principale, on emploie le futur antérieur : \"lorsque tu auras fini\" (= une fois que tu auras terminé). Le futur simple exprimerait une simultanéité, non une antériorité.",
    "Après \"lorsque/quand/dès que\" : si l'action de la subordonnée précède celle de la principale → futur antérieur. Si les actions sont simultanées → futur simple.",
  ],
  [
    "diag-conj-9",
    "Identifier la valeur journalistique (de distanciation) du conditionnel",
    "Dans \"Ce médicament pourrait provoquer des effets secondaires\", le conditionnel exprime :",
    ["Une condition irréelle dans le passé", "Un futur dans le passé (discours indirect)", "Un souhait ou une formule de politesse", "Une information non vérifiée dont l'auteur ne prend pas la responsabilité"],
    3,
    "Le conditionnel dit \"journalistique\" ou \"de distanciation\" sert à rapporter une information non vérifiée ou à marquer une distance épistémique. Ici l'auteur ne certifie pas les effets secondaires. Cette valeur est distincte du conditionnel hypothétique (si + imparfait), du futur du passé et de la politesse.",
    "Distingue les quatre valeurs du conditionnel : hypothétique (si + imparfait), futur du passé (discours indirect au passé), politesse (je voudrais), distanciation (information non vérifiée).",
  ],
  [
    "diag-conj-10",
    "Distinguer le participe présent de l'adjectif verbal (orthographe et accord)",
    "Laquelle de ces affirmations est correcte concernant \"communicant\" et \"communicante\" ?",
    ["\"Communicante\" est le participe présent accordé ; \"communiquant\" est une erreur", "\"Communiquant\" est le participe présent (invariable, peut avoir un COD) ; \"communicante\" est l'adjectif verbal (accordé)", "Les deux formes sont des participes présents invariables selon la règle générale", "\"Communicant\" est l'adjectif verbal ; \"communiquant\" est une forme verbale inexistante"],
    1,
    "Le participe présent est invariable et peut régir un COD : \"une élève communiquant bien sa pensée\". L'adjectif verbal s'accorde et peut avoir une orthographe différente : \"une personne communicante\". Autres paires célèbres : convaincant/convaincant, négligent/négligent, convergent/convergeant.",
    "Participe présent = invariable, forme verbale (-quant, -guant conservés). Adjectif verbal = accordé, peut avoir une orthographe différente. Mémorise les paires : provoquant/provocant, fatigant/fatiguant, navigant/naviguant.",
  ],
  [
    "diag-conj-11",
    "Identifier le système hypothétique du passé non réalisé",
    "Dans \"Si tu avais étudié, tu aurais réussi\", les temps employés sont :",
    ["Imparfait + conditionnel présent (hypothèse non réalisée dans le présent)", "Imparfait + futur du passé (concordance des temps)", "Plus-que-parfait + conditionnel passé (hypothèse non réalisée dans le passé)", "Passé antérieur + conditionnel passé"],
    2,
    "Le système hypothétique du passé non réalisé emploie : \"si\" + plus-que-parfait dans la conditionnelle, et conditionnel passé dans la principale. \"Avais étudié\" = plus-que-parfait ; \"aurais réussi\" = conditionnel passé. À distinguer du système non réalisé au présent : si + imparfait → conditionnel présent.",
    "Mémorise les trois systèmes : présent réalisable (si + présent → futur), non réalisé présent (si + imparfait → cond. présent), non réalisé passé (si + PQP → cond. passé).",
  ],
  [
    "diag-conj-12",
    "Identifier la valeur modale de l'imparfait de politesse",
    "Dans \"Je voulais vous demander un conseil\" (dit en ce moment présent), l'imparfait exprime :",
    ["Une action passée interrompue", "Une habitude révolue dans le passé", "Une valeur modale de politesse ou d'atténuation (imparfait de politesse)", "Un fait antérieur à un autre événement passé"],
    2,
    "L'imparfait dit \"de politesse\" ou \"hypocoristique\" est utilisé pour atténuer une demande ou une affirmation et la rendre plus douce. \"Je voulais vous demander\" est plus poli que \"je veux vous demander\". C'est une valeur modale, non temporelle : la demande est bien présente.",
    "L'imparfait a des valeurs modales (politesse, atténuation) en plus de ses valeurs aspectuelles classiques (durée, description, habitude). Contexte : énonciation au présent, mais forme à l'imparfait.",
  ],
  [
    "diag-conj-13",
    "Analyser la valeur circonstancielle d'un gérondif",
    "Dans \"Tout en corrigeant les copies, il écoutait la radio\", la forme \"en corrigeant\" est :",
    ["Un participe présent épithète du sujet", "Un gérondif exprimant la simultanéité des deux actions", "Un gérondif exprimant la condition", "Un infinitif composé à valeur temporelle"],
    1,
    "\"En corrigeant\" est un gérondif (en + participe présent), invariable, ayant obligatoirement le même sujet que le verbe principal. \"Tout en\" renforce la valeur de simultanéité parfaite. Le gérondif peut aussi exprimer le moyen, la condition ou l'opposition selon le contexte.",
    "Gérondif = en + participe présent, toujours invariable, sujet identique à celui du verbe principal. \"Tout en\" souligne la simultanéité. Ne pas confondre avec le participe présent (sans \"en\").",
  ],
  [
    "diag-conj-14",
    "Identifier le plus-que-parfait",
    "Quelle phrase est au plus-que-parfait ?",
    [
      "Ils comprennent la consigne.",
      "Ils comprendront la consigne.",
      "Ils avaient compris la consigne.",
      "Ils ont compris la consigne.",
    ],
    2,
    "Le plus-que-parfait se forme avec un auxiliaire à l'imparfait et un participe passé — \"avaient compris\". C'est le temps de l'action accomplie avant une autre action passée.",
    "Repère d'abord le temps de l'auxiliaire.",
  ],
  [
    "diag-conj-15",
    "Choisir le bon temps dans un récit",
    'Dans un récit au passé, "Soudain, il ... la porte" s\'écrit plutôt :',
    ["ouvrait", "ouvrira", "avait ouvert", "ouvrit"],
    3,
    "Le passé simple \"ouvrit\" marque ici un événement ponctuel dans le récit — c'est l'action de premier plan. \"Ouvrait\" serait une description ou une habitude.",
    "Distingue les actions de premier plan (passé simple) des descriptions ou habitudes (imparfait).",
  ],
];
const lexiqueTuples: QuestionTuple[] = [
  [
    "diag-lex-1",
    "Distinguer deux paronymes courants",
    "Quelle phrase emploie le terme exact ?",
    ["Il a prononcé une allocution devant ses collègues.", "Il a prononcé une allocation devant ses collègues.", "Les deux termes sont synonymes en contexte officiel.", "Il a prononcé un discours d'allocution."],
    0,
    "\"Allocution\" désigne un discours bref ; \"allocation\" désigne une aide financière — ce sont des paronymes, ils se ressemblent à l'oreille mais n'ont rien à voir !",
    "Mémorise les paronymes par paires : allocution (discours) / allocation (aide financière).",
  ],
  [
    "diag-lex-2",
    "Utiliser l'étymologie pour déduire le sens d'un mot",
    "Le préfixe latin 'circum-' dans 'circonstance' indique :",
    ["La répétition ou le retour", "L'opposition ou le contre", "Le dessous ou l'infériorité", "Le mouvement autour ou ce qui entoure"],
    3,
    "\"Circum\" signifie \"autour\" en latin — \"circonstance\" = ce qui entoure une action, son cadre. L'étymologie te donne la clé du sens.",
    "Connais les préfixes latins (circum, sub, trans, ante, post…) — ils te permettent de déduire le sens de nombreux mots savants.",
  ],
  [
    "diag-lex-3",
    "Distinguer métonymie, métaphore et synecdoque",
    "Dans 'Le Quai d'Orsay a réagi vivement à ces déclarations', quel procédé désigne le ministère des Affaires étrangères ?",
    ["Une métaphore : le bâtiment ressemble symboliquement à l'institution", "Une synecdoque : on prend la partie pour le tout", "Une métonymie : le lieu désigne par contiguïté l'institution qui y réside", "Un euphémisme : on atténue la portée de la réaction diplomatique"],
    2,
    "Nommer un lieu pour désigner l'institution qui s'y trouve, c'est une métonymie de lieu — la relation est de contiguïté spatiale réelle, pas de ressemblance (≠ métaphore) ni d'inclusion partie/tout (≠ synecdoque). La métonymie repose toujours sur un lien objectif entre deux entités distinctes.",
    "Métonymie = relation réelle entre entités distinctes (lieu/institution, auteur/œuvre, cause/effet, contenant/contenu). Métaphore = ressemblance. Synecdoque = inclusion (partie/tout).",
  ],
  [
    "diag-lex-4",
    "Identifier une litote dans un contexte professionnel",
    "Dans 'Votre résultat ne m'enthousiasme pas vraiment', quel procédé l'enseignante utilise-t-elle pour signifier sa déception ?",
    ["Un euphémisme : elle adoucit une réalité pénible par pudeur", "Une litote : elle sous-exprime pour insinuer davantage", "Une antiphrase : elle dit le contraire de ce qu'elle pense", "Une périphrase : elle remplace un mot par une expression équivalente"],
    1,
    "\"Ne m'enthousiasme pas vraiment\" dit moins que ce que ressent l'enseignante pour mieux insinuer que le résultat est très insuffisant — c'est une litote. L'euphémisme atténue une réalité difficile par pudeur sans sous-entendre l'inverse (\"il nous a quittés\" pour \"il est mort\"). L'antiphrase dit l'inverse dans un contexte ironique explicite.",
    "Litote = sous-exprimer pour suggérer l'inverse amplifié (\"pas mal\" = très bien). Euphémisme = atténuer une réalité pénible. Les deux disent moins, mais pour des raisons et avec des effets opposés.",
  ],
  [
    "diag-lex-5",
    "Identifier un archaïsme lexical courant",
    "Dans les textes juridiques et classiques, 'nonobstant' signifie :",
    ["Malgré, en dépit de", "Dorénavant, à partir de maintenant", "En résumé, pour conclure", "Néanmoins, toutefois"],
    0,
    "\"Nonobstant\" est un archaïsme encore présent dans les textes juridiques — il signifie \"malgré\". Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle).",
    "Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle). Sens = malgré l'obstacle.",
  ],
  [
    "diag-lex-6",
    "Identifier la connotation d'un terme",
    "Le mot 'foule' est neutre ; lequel de ces équivalents a une connotation péjorative ?",
    ["Groupe", "Populace", "Assemblée", "Rassemblement"],
    1,
    "\"Populace\" désigne la foule avec un regard méprisant — c'est un terme péjoratif. \"Assemblée\" est plutôt valorisant, \"groupe\" reste neutre. La connotation exprime l'attitude de l'énonciateur.",
    "Repère la charge axiologique d'un mot (positif, négatif, neutre) en observant l'attitude qu'il implique envers ce qu'il désigne.",
  ],
  [
    "diag-lex-7",
    "Distinguer polysémie et homonymie",
    "'Avocat' désignant à la fois le fruit et le professionnel du droit est un exemple de :",
    ["Paronymie — deux mots qui se ressemblent sans être identiques", "Homonymie — deux mots distincts qui ont la même forme", "Polysémie — un même mot qui a développé plusieurs sens", "Synonymie — deux mots de sens voisin"],
    1,
    "\"Avocat\" (juriste, du latin advocatus) et \"avocat\" (fruit, du nahuatl ahuacatl via l'espagnol) ont des étymologies complètement distinctes — c'est de l'homonymie. La polysémie concerne un seul et même mot qui a développé plusieurs sens à partir d'une même origine (ex. : \"vol\" le déplacement / \"vol\" le larcin, tous deux issus du latin volare).",
    "Homonymie = deux mots d'origine différente, même forme. Polysémie = un seul mot, plusieurs sens liés (même origine étymologique). Test : les sens partagent-ils une étymologie commune ?",
  ],
  [
    "diag-lex-8",
    "Reconnaître une antiphrase sans marqueur explicite",
    "Dans une critique littéraire : 'On ne peut qu'admirer la profondeur de cette intrigue de cinq pages', quel procédé le critique emploie-t-il ?",
    ["Un paradoxe : deux idées contradictoires juxtaposées", "Une antiphrase : une expression prise dans son sens contraire", "Une périphrase valorisante : remplacement d'un mot par une expression élogieuse", "Une hyperbole : une exagération délibérée à des fins laudatives"],
    1,
    "\"On ne peut qu'admirer\" semble élogieux, mais la précision \"de cinq pages pour une intrigue\" révèle l'ironie — le critique loue ce qu'il raille. C'est une antiphrase : le sens littéral est inversé. Ici aucun marqueur explicite de sarcasme ; seul le contexte (la brièveté absurde) permet de le détecter.",
    "L'antiphrase ne s'annonce pas — c'est le contexte seul (situation, détail révélateur, ton d'ensemble) qui indique que le sens est à inverser. Sans contexte, elle est indiscernable d'un éloge sincère.",
  ],
  [
    "diag-lex-9",
    "Identifier un glissement sémantique",
    "Le mot 'terrible' signifiait à l'origine 'qui inspire la terreur'. Aujourd'hui, 'un film terrible' peut vouloir dire 'un film formidable'. Ce phénomène est :",
    ["Un glissement sémantique vers le sens mélioratif", "Un emprunt à une langue étrangère", "Un néologisme par composition", "Une métaphore figée"],
    0,
    "Le sens d'un mot peut évoluer dans le temps — ici \"terrible\" a glissé d'un sens négatif intense vers un usage positif dans certains contextes oraux. C'est un exemple de glissement sémantique.",
    "Les mots évoluent : un terme péjoratif peut devenir mélioratif (ou l'inverse) selon les usages et les époques.",
  ],
  [
    "diag-lex-10",
    "Analyser la formation morphologique d'un mot",
    "'Inégalable' est formé par :",
    ["Composition : 'inégal' et 'able' soudés comme deux mots lexicaux autonomes", "Double dérivation : préfixe in- (privatif) + base 'égal' + suffixe -able", "Emprunt à l'anglais 'unequalled', adapté phonétiquement", "Suffixation à partir du verbe 'inégaler'"],
    1,
    "\"Inégalable\" se décompose en : in- (préfixe privatif) + égal (base lexicale) + -able (suffixe adjectival = qui peut être). Ce n'est pas une composition, qui soude deux mots lexicaux autonomes (ex. : porte-manteau), mais une double dérivation par affixation. Le verbe \"inégaler\" n'existe pas.",
    "Composition = soudure de deux mots lexicaux autonomes (porte + manteau). Dérivation = ajout d'un ou plusieurs affixes à une base (in- + égal + -able). Les deux procédés sont distincts.",
  ],
  [
    "diag-lex-11",
    "Identifier un calque sémantique de l'anglais",
    "L'emploi de \"réaliser\" au sens de \"se rendre compte de\" (ex. : \"Je réalise maintenant mon erreur\") est :",
    ["Une évolution sémantique ancienne du français, attestée depuis le XVIIe siècle", "Un emprunt de forme à l'anglais (importation du mot)", "Un calque sémantique de l'anglais \"to realize\"", "Un archaïsme du français classique récemment réhabilité"],
    2,
    "En français classique, \"réaliser\" signifie uniquement \"concrétiser, rendre réel\". L'emploi au sens de \"se rendre compte\" est un calque sémantique de l'anglais \"to realize\" — le mot français a adopté un sens de son équivalent anglais sans changer de forme. C'est différent de l'emprunt (importation du mot lui-même : parking, weekend).",
    "Distingue l'emprunt (mot importé : parking), le calque (traduction mot à mot : gratte-ciel ← skyscraper) et le calque sémantique (un mot déjà existant adopte un sens étranger : réaliser, supporter…).",
  ],
  [
    "diag-lex-12",
    "Distinguer sens propre et sens figuré",
    'Dans "Cette nouvelle m\'a glacé", l\'expression relève :',
    ["D'une définition scientifique", "D'une hyperbole au sens propre", "Du sens figuré", "Du sens propre"],
    2,
    "On ne parle pas ici de température réelle — le verbe est employé au sens figuré pour exprimer un choc émotionnel intense.",
    "Teste si l'interprétation concrète reste possible dans le contexte.",
  ],
  [
    "diag-lex-13",
    "Identifier un verbe dérivé",
    'Quel verbe est dérivé du nom "courage" ?',
    ["courir", "encourager", "couvrir", "décourager"],
    1,
    "\"Encourager\" est formé sur le nom \"courage\" — il en partage le radical. \"Courir\" et \"couvrir\" n'ont aucun lien étymologique.",
    "Repère le radical de base avant de comparer les mots.",
  ],
  [
    "diag-lex-14",
    "Identifier un barbarisme syntaxique courant",
    "Laquelle de ces formes est un barbarisme (emploi incorrect en français standard) ?",
    ["pallier à un problème", "pallier un problème", "remédier à un problème", "obvier à un problème"],
    0,
    "\"Pallier\" est un verbe transitif direct : on pallie QUELQUE CHOSE (pas \"pallier à\"). La forme \"pallier à\" est un barbarisme fréquent, créé par analogie avec \"remédier à\" ou \"obvier à\". La forme correcte est \"pallier ce problème\" (construction directe, sans préposition).",
    "Mémorise les verbes souvent fautifs : \"pallier qqch\" (direct), \"solutionner\" (à éviter → préférer \"résoudre\"), \"prévenir de\" (prévenir qqn de qqch), \"anticiper sur\" (simple \"anticiper qqch\").",
  ],
  [
    "diag-lex-15",
    "Distinguer pléonasme fautif et redondance stylistique acceptable",
    "Laquelle de ces expressions est un pléonasme fautif ?",
    ["monter en haut", "la vérité vraie (dans un style oral expressif)", "voir de ses propres yeux", "un souvenir mémorable (en contexte littéraire)"],
    0,
    "\"Monter en haut\" est un pléonasme fautif car \"monter\" implique déjà \"vers le haut\" — répétition inutile. En revanche, \"voir de ses propres yeux\" ou \"la vérité vraie\" sont des redondances stylistiques admises : elles ajoutent de l'insistance ou une valeur expressive. Le pléonasme devient fautif quand la répétition n'apporte aucune valeur.",
    "Le pléonasme est fautif quand il répète sans rien ajouter (monter en haut, préparer à l'avance, reculer en arrière). Il peut être stylistique quand il renforce (voir de ses propres yeux, un silence de mort).",
  ],
];
const analyseTuples: QuestionTuple[] = [
  [
    "diag-analyse-1",
    "Analyser la valeur d'une proposition participiale absolue",
    "Dans 'Les négociations ayant échoué, la grève fut déclarée', la proposition participiale exprime :",
    ["La cause logique", "La condition", "L'opposition", "La concession"],
    0,
    "La proposition participiale absolue (\"Les négociations ayant échoué\") exprime ici la cause qui motive la déclaration de grève — c'est le contexte qui décide de la valeur.",
    "Le contexte détermine la valeur (cause, condition, temps, opposition) d'une participiale absolue.",
  ],
  [
    "diag-analyse-2",
    "Identifier la fonction sujet réel d'une complétive",
    "Dans 'Il est regrettable qu'il soit absent', quelle est la fonction de 'qu'il soit absent' ?",
    ["Attribut du sujet apparent", "COD du verbe impersonnel", "Sujet réel du verbe impersonnel", "Complément circonstanciel de cause"],
    2,
    "Avec les verbes impersonnels, \"il\" est le sujet grammatical apparent — un leurre. La complétive \"qu'il soit absent\" est le vrai sujet : le sujet réel.",
    "Repère le sujet apparent \"il\" et cherche le sujet réel exprimé après le verbe impersonnel.",
  ],
  [
    "diag-analyse-3",
    "Identifier un discours indirect libre",
    "Dans 'Elle rentra chez elle. La journée avait été épuisante, vraiment.', le second énoncé est :",
    ["Un discours indirect libre", "Un discours direct", "Une narration omnisciente neutre", "Un discours indirect introduit par un verbe de parole"],
    0,
    "Le discours indirect libre intègre les pensées d'un personnage dans la narration sans marque introductive — et l'adverbe \"vraiment\" trahit clairement la voix du personnage.",
    "Cherche les adverbes ou interjections modaux (\"vraiment\", \"décidément\"…) qui signalent une voix intérieure dans la narration.",
  ],
  [
    "diag-analyse-4",
    "Identifier le mode dans une subordonnée consécutive réelle",
    "Dans 'Il était si fatigué qu'il s'endormit aussitôt', le mode de 's'endormit' est :",
    ["Conditionnel (fait hypothétique)", "Indicatif (fait présenté comme réel)", "Subjonctif (fait incertain)", "Impératif (ordre exprimé)"],
    1,
    "Quand la conséquence est un fait constaté, la subordonnée consécutive se met à l'indicatif — on présente ce qui s'est vraiment passé.",
    "Avec \"si… que\", \"tellement… que\" : indicatif si la conséquence est un fait ; subjonctif si c'est une intensité attendue.",
  ],
  [
    "diag-analyse-5",
    "Analyser une apposition double coordonnée",
    "Dans 'Élève brillante mais imprévisible, elle déstabilisait parfois ses professeurs', le groupe détaché est :",
    ["Un attribut du COD", "Un complément du sujet", "Un complément circonstanciel de manière", "Une apposition double coordonnée"],
    3,
    "Le groupe \"Élève brillante mais imprévisible\" est une apposition double — coordonnée par \"mais\" — détachée en tête de phrase. Une apposition peut elle-même être complexe !",
    "Une apposition peut elle-même être complexe et coordonner plusieurs éléments qualificatifs.",
  ],
  [
    "diag-analyse-6",
    "Analyser la nature d'une subordonnée comparative",
    "Dans \"Elle travaille plus vite qu'elle ne le faisait\", la proposition \"qu'elle ne le faisait\" est :",
    ["Une subordonnée relative avec \"que\" pronom relatif", "Une subordonnée conjonctive complétive COD", "Une subordonnée comparative dépendante du terme comparatif", "Une subordonnée consécutive introduite par \"que\""],
    2,
    "La proposition introduite par \"que\" dans une structure comparative (plus vite…que) est une subordonnée comparative, dépendante du terme comparatif \"plus vite\". Le \"ne\" est ici expletif (sans valeur négative). Ne pas confondre avec la relative (qui complète un nom) ni la complétive (COD ou sujet du verbe principal).",
    "Repère d'abord la structure comparative dans la principale (plus/aussi/moins + adv/adj), puis identifie la subordonnée introduite par \"que\" comme comparative. Le \"ne\" expletif y est fréquent.",
  ],
  [
    "diag-analyse-7",
    "Identifier la proposition principale",
    'Dans "Quand la cloche sonne, les élèves sortent", la proposition principale est :',
    ["quand la cloche", "Quand la cloche sonne", "les élèves sortent", "Quand la cloche sonne, les élèves"],
    2,
    "La proposition principale, c'est celle qui pourrait subsister seule — \"les élèves sortent\" se suffit. \"Quand la cloche sonne\" est subordonnée, elle dépend de la principale.",
    "Cherche la proposition qui porte le sens principal et peut exister seule.",
  ],
  [
    "diag-analyse-8",
    "Analyser la fonction de \"dont\" dans un GN complexe",
    "Dans \"le professeur dont les élèves respectent les décisions\", \"dont\" remplace :",
    ["Le COD du verbe \"respecter\"", "Le sujet de \"respectent\"", "Le complément du nom \"décisions\" (= les décisions du professeur)", "Le complément circonstanciel de la relative"],
    2,
    "Pour analyser \"dont\", reconstituez la phrase sans relatif : \"les élèves respectent les décisions DU PROFESSEUR\" → \"dont\" = \"du professeur\", complément du nom \"décisions\". \"Dont\" peut représenter n'importe quelle fonction impliquant \"de\". Ici ce n'est pas le COD de \"respecter\" (qui est \"les décisions\").",
    "Pour analyser \"dont\" : reconstituez la phrase sans le relatif en remplaçant \"dont\" par \"de + antécédent\", puis identifiez la fonction du groupe ainsi obtenu.",
  ],
  [
    "diag-analyse-9",
    "Identifier un mot subordonnant",
    'Dans "Je partirai si tu viens", la nature de "si" est :',
    ["Pronom relatif", "Adverbe de degré", "Conjonction de subordination", "Préposition"],
    2,
    "\"Si\" introduit ici une proposition subordonnée circonstancielle de condition — c'est une conjonction de subordination. Elle crée une relation logique entre les deux propositions.",
    "Repère si le mot introduit une relation logique entre deux propositions.",
  ],
  [
    "diag-analyse-10",
    "Identifier le référent d'un pronom",
    'Dans "Paul parle à Hugo parce qu\'il est inquiet", le pronom "il" est :',
    ["Ambigu sans contexte supplémentaire", "Toujours Paul", "Toujours Hugo", "Nécessairement le locuteur"],
    0,
    "Attention ici — la phrase seule ne permet pas de trancher. \"Il\" peut renvoyer à Paul ou à Hugo selon le contexte. C'est une ambiguïté réelle.",
    "N'impose pas une interprétation si la phrase reste ambiguë — dis-le clairement.",
  ],
  [
    "diag-analyse-11",
    "Identifier la nature d'une construction participiale absolue à valeur causale",
    "Dans \"La tâche étant trop complexe, on décida de la diviser\", la proposition initiale est :",
    ["Une subordonnée circonstancielle de cause introduite par \"comme\"", "Un groupe participe épithète détaché du sujet principal", "Une proposition participiale absolue (participe présent + sujet propre distinct du sujet principal)", "Une proposition infinitive en tête de phrase à valeur causale"],
    2,
    "La participiale absolue se distingue du participe détaché par son sujet propre (\"la tâche\"), différent du sujet de la principale (\"on\"). Structure : [sujet propre + participe] sans conjonction. Elle exprime ici la cause et constitue une circonstancielle implicite.",
    "Vérifie si la construction a son propre sujet différent de celui de la principale → si oui, c'est une participiale absolue. Si le participe se rapporte au sujet principal → c'est un participe détaché.",
  ],
  [
    "diag-analyse-12",
    "Analyser la valeur d'une subordonnée circonstancielle introduite par \"alors que\"",
    "Dans \"Alors qu'il faisait beau, la sortie fut annulée\", la subordonnée est :",
    ["Circonstancielle de temps (simultanéité)", "Circonstancielle d'opposition ou concessive", "Circonstancielle de cause", "Circonstancielle de condition"],
    1,
    "\"Alors que\" peut exprimer la simultanéité (valeur temporelle) ou l'opposition. Ici, le fait qu'il fasse beau va à l'encontre de l'annulation — c'est une opposition (ou concession). La valeur est déterminée par la sémantique des propositions, pas uniquement par le connecteur.",
    "\"Alors que\" est ambigu : temporel si les deux faits coexistent naturellement, oppositif si les faits sont en contradiction. Le contexte et la sémantique des propositions décident.",
  ],
  [
    "diag-analyse-13",
    "Identifier la fonction d'une complétive en position sujet",
    "Dans \"Que les élèves soient motivés est indispensable\", la proposition \"Que les élèves soient motivés\" est :",
    ["COD du verbe \"est\"", "Sujet du verbe \"est\"", "Attribut du sujet apparent", "Complément circonstanciel de cause"],
    1,
    "La complétive introduite par \"que\" + subjonctif peut occuper la fonction sujet. Ici : \"que les élèves soient motivés\" est le sujet de \"est indispensable\" — ce qui est indispensable, c'est que les élèves soient motivés. Pas de sujet nominal ou pronominal devant \"est\" → la complétive est sujet.",
    "Une complétive peut être sujet (antéposée, commande l'accord du verbe) ou COD. Distingue aussi la complétive sujet de la construction avec \"il\" apparent : \"Il est indispensable que les élèves soient motivés\" (ici \"il\" est sujet apparent, la complétive est sujet réel).",
  ],
  [
    "diag-analyse-14",
    "Distinguer les valeurs aspectuelles de \"depuis\", \"pendant\" et \"en\" comme CC de temps",
    "Dans \"Il travaille depuis deux heures\", \"depuis deux heures\" exprime :",
    ["La date de début d'une action (point de départ temporel)", "La durée d'une action toujours en cours au moment de l'énonciation (aspect duratif)", "La simultanéité avec une autre action", "La durée nécessaire pour accomplir une tâche"],
    1,
    "\"Depuis\" + durée construit avec un verbe au présent exprime la durée d'une action qui a commencé dans le passé et se prolonge encore : \"Il travaille depuis deux heures\" = ça fait 2h qu'il travaille et ça continue. À distinguer de \"pendant\" (durée accomplie : il a travaillé pendant deux heures) et de \"en\" (durée de réalisation : il a fait ça en deux heures).",
    "Distingue : \"depuis\" (durée en cours avec présent ou imparfait), \"pendant\" (durée accomplie), \"en\" (durée de réalisation). Chacun renvoie à un aspect différent du déroulement.",
  ],
  [
    "diag-analyse-15",
    "Identifier la nature d'un groupe",
    'Dans "Très rapidement", la nature du groupe est :',
    ["Groupe verbal", "Groupe adverbial", "Groupe nominal", "Groupe adjectival"],
    1,
    "Le noyau du groupe, c'est l'adverbe \"rapidement\", intensifié par \"très\" — c'est donc un groupe adverbial.",
    "Cherche la nature du mot noyau du groupe.",
  ],
];
const comprehensionTuples: QuestionTuple[] = [
  [
    "diag-comp-1",
    "Comprendre une inférence pragmatique",
    "Un personnage dit 'Je vais très bien' mais le texte précise qu'il serre les poings et détourne les yeux. La lecture correcte est :",
    ["Accepter la parole du personnage comme vraie", "Ignorer les gestes, car seules les paroles comptent", "Considérer la description comme une erreur narrative", "Interpréter les indices non verbaux pour nuancer ou contredire la parole"],
    3,
    "L'inférence pragmatique, c'est dépasser le sens littéral grâce aux indices du contexte — ici, les gestes contredisent clairement les mots. Le corps ne ment pas !",
    "En lecture, les indices non verbaux, le ton et le contexte permettent souvent d'aller au-delà du sens littéral.",
  ],
  [
    "diag-comp-2",
    "Identifier l'ironie dans un texte",
    "'Quelle brillante idée de partir sous cet orage !' dit le narrateur sarcastique. Cette phrase emploie :",
    ["Une métaphore filée", "Un euphémisme", "Une ironie", "Une antithèse"],
    2,
    "L'ironie consiste à dire le contraire de ce qu'on pense — ici, l'éloge ne colle pas du tout à la situation. Ce décalage entre le sens littéral et le contexte, c'est la marque de l'ironie.",
    "Cherche le décalage entre le sens littéral et le contexte : si l'éloge ne colle pas à la réalité, il y a ironie.",
  ],
  [
    "diag-comp-3",
    "Comprendre la structure d'un texte argumentatif",
    "Dans un texte argumentatif bien construit, les arguments :",
    ["Doivent toujours commencer par un contre-argument", "Sont organisés pour renforcer progressivement la thèse", "Sont juxtaposés sans lien logique", "Doivent rester indépendants les uns des autres"],
    1,
    "Un texte argumentatif efficace organise ses arguments de manière progressive pour convaincre — du plus faible au plus fort, ou du général au particulier. L'ordre n'est pas aléatoire.",
    "Repère les connecteurs logiques pour comprendre comment les arguments s'articulent et se hiérarchisent.",
  ],
  [
    "diag-comp-4",
    "Identifier le type de texte sur un extrait",
    "Un document débute ainsi : 'Pour que l'apprentissage de la lecture soit efficace, il est essentiel de distinguer décodage et compréhension. Le décodage permet d'identifier les mots ; la compréhension, d'en construire le sens.' De quel type de texte s'agit-il ?",
    ["Injonctif : le texte guide le lecteur vers une action à réaliser", "Narratif : il raconte des événements dans un ordre chronologique", "Argumentatif : il défend une thèse en réfutant des positions adverses", "Explicatif : il vise à faire comprendre un phénomène ou une notion"],
    3,
    "Ce passage expose une distinction conceptuelle (décodage vs compréhension) sans donner d'ordre ni raconter d'histoire — c'est explicatif. Un texte injonctif contiendrait des impératifs ou infinitifs d'instruction ('Proposez… Évitez…'). La visée communicative — faire comprendre — est le critère décisif, pas la forme verbale seule.",
    "Visée communicative : faire comprendre = explicatif ; faire agir = injonctif ; convaincre = argumentatif ; raconter = narratif. C'est l'intention, pas la longueur ni le temps verbal, qui tranche.",
  ],
  [
    "diag-comp-5",
    "Reconnaître un argument par analogie",
    "Un auteur compare l'apprentissage de la lecture à l'apprentissage du vélo pour expliquer le rôle de la pratique. Il emploie :",
    ["Un contre-argument", "Un argument d'autorité", "Un argument par analogie", "Un argument par l'exemple"],
    2,
    "L'argument par analogie établit une comparaison structurelle entre deux domaines différents pour rendre une idée plus claire ou convaincante — ici, lire et faire du vélo partagent la même logique de pratique.",
    "Repère les comparaisons entre domaines différents : elles valident une idée par similitude de structure.",
  ],
  [
    "diag-comp-6",
    "Analyser l'effet rhétorique d'un énoncé performatif",
    "Dans \"La séance est levée\" prononcé par le président d'une assemblée, l'énoncé est :",
    ["Un constat descriptif d'un état existant avant l'énonciation", "Un performatif : l'acte d'énonciation accomplit lui-même l'acte désigné", "Un jugement de valeur subjectif sur la qualité de la séance", "Une injonction indirecte adressée aux membres de l'assemblée"],
    1,
    "Un énoncé performatif (Austin, Searle) fait ce qu'il dit dans le contexte approprié : dire \"la séance est levée\" lève effectivement la séance — l'énonciation crée la réalité institutionnelle. Ce n'est pas une description d'un fait préexistant. Autres performatifs : \"je promets\", \"je vous déclare mariés\", \"je baptise ce navire\".",
    "Les performatifs accomplissent un acte par leur énonciation même (promettre, déclarer, ordonner, baptiser…). Ils s'opposent aux constatifs qui décrivent le monde sans le modifier.",
  ],
  [
    "diag-comp-7",
    "Identifier la visée d'un texte injoncto-explicatif",
    "Un texte commence par \"Pour réussir cet exercice, il convient d'abord de lire attentivement la consigne, puis de…\". La visée principale est :",
    ["Informer sur un sujet général de manière encyclopédique", "Convaincre le lecteur d'adopter une opinion argumentée", "Guider le lecteur dans la réalisation d'une procédure (texte injoncto-explicatif)", "Narrer une série d'événements dans l'ordre chronologique"],
    2,
    "Le texte injoncto-explicatif combine l'injonction (faire faire) et l'explication (faire comprendre le pourquoi). Les marqueurs de progression (\"d'abord\", \"puis\"), le verbe \"convient\" et l'infinitif procédural orientent vers un texte procédural. Ce n'est pas argumentatif (convaincre d'une thèse) ni narratif.",
    "Identifie la visée communicative dominante : faire faire (injonctif/procédural) / faire savoir (informatif-explicatif) / faire penser (argumentatif) / faire ressentir (narratif-poétique).",
  ],
  [
    "diag-comp-8",
    "Distinguer explicite et implicite",
    'Dans "Paul serra son manteau et pressa le pas", on peut inférer que :',
    ["Il veut dormir", "Il a chaud", "Il est pressé par une obligation", "Il fait probablement froid"],
    3,
    "Serrer son manteau et accélérer sont des indices convergents qui laissent penser qu'il fait froid — même si ce n'est pas dit explicitement.",
    "Cherche les indices convergents dans les gestes ou les réactions du personnage.",
  ],
  [
    "diag-comp-9",
    "Distinguer présupposé et posé dans un énoncé complexe",
    "Dans 'La réforme a finalement convaincu même les plus sceptiques', qu'est-ce qui est présupposé (et non posé) ?",
    ["Que la réforme a convaincu tout le monde sans exception", "Qu'il existait des sceptiques avant la réforme", "Que les sceptiques avaient tort de douter initialement", "Que personne n'était convaincu avant l'entrée en vigueur de la réforme"],
    1,
    "L'information posée (affirmée explicitement) est que la réforme a convaincu même les plus sceptiques. Le présupposé — assumé sans être énoncé — est qu'il existait des sceptiques. Test de la négation : \"La réforme n'a pas convaincu les plus sceptiques\" présuppose toujours qu'ils existaient. Le posé change à la négation ; le présupposé, non.",
    "Test du présupposé : s'il reste vrai quand on nie la phrase, c'est un présupposé. Le posé disparaît à la négation ; le présupposé résiste.",
  ],
  [
    "diag-comp-10",
    "Analyser une stratégie rhétorique de captation de l'énonciateur",
    "Dans \"Nul n'ignore que cette politique a échoué\", l'auteur :",
    ["Exprime directement son opinion en assumant la responsabilité de l'énoncé", "Présente une information objective, vérifiable et consensuelle", "Attribue implicitement la position à l'ensemble des lecteurs pour l'imposer comme évidente", "Rapporte le discours d'une autre voix sans y adhérer (discours indirect libre)"],
    2,
    "La formule \"nul n'ignore que\" est une stratégie rhétorique de captation : elle présente comme universellement connue une affirmation qui peut être contestée. L'auteur s'efface derrière un \"tout le monde sait\" qui rend la contestation difficile. C'est un procédé de pseudo-évidence.",
    "Repère les formules qui masquent l'énonciateur derrière une pseudo-universalité : \"il est évident que\", \"nul n'ignore\", \"force est de constater\", \"tout le monde sait\"… Elles sont rhétoriquement prescriptives.",
  ],
  [
    "diag-comp-11",
    "Identifier le point de vue narratif",
    "Dans un récit où le narrateur décrit uniquement les pensées et émotions d'un seul personnage, le point de vue est :",
    ["Omniscient — le narrateur sait tout sur tous les personnages", "Interne — le récit est filtré par la conscience d'un personnage", "Externe — le narrateur ne décrit que ce qui est observable de l'extérieur", "Zéro — le narrateur est absent du récit"],
    1,
    "Le point de vue interne (ou focalisation interne) filtre le récit par la conscience d'un seul personnage — on accède à ses pensées et ressentis, mais pas à ceux des autres. L'omniscient sait tout ; l'externe se limite à l'observable.",
    "Mémorise les trois focalisations : zéro (omniscient, sait tout), interne (par un personnage), externe (observateur neutre, gestes et paroles seulement).",
  ],
  [
    "diag-comp-12",
    "Comprendre l'effet d'un connecteur",
    'Dans "Il était fatigué, mais il continua", "mais" montre que :',
    [
      "La deuxième action va dans le même sens",
      "La phrase donne une définition",
      "La phrase exprime une cause",
      "La deuxième action surprend par rapport à la première",
    ],
    3,
    "Le connecteur \"mais\" introduit une rupture avec ce qu'on attendait — fatigué, on s'attendrait à ce qu'il s'arrête. Il continue : c'est une surprise, une opposition.",
    "Demande-toi si le connecteur confirme ou contrarie l'attente du lecteur.",
  ],
  [
    "diag-comp-13",
    "Identifier une reformulation",
    'Dans "Le givre recouvrait la pelouse, c\'est-à-dire une fine couche de glace", l\'expression "c\'est-à-dire" annonce :',
    ["Une conclusion", "Une reformulation", "Une opposition", "Un exemple"],
    1,
    "\"C'est-à-dire\" annonce une reformulation — la seconde partie explicite la première en d'autres mots. C'est un marqueur de clarification.",
    "Repère les marqueurs qui expliquent autrement une idée déjà dite.",
  ],
  [
    "diag-comp-14",
    "Comprendre un sentiment implicite",
    'Dans "Maya serrait les poings et évitait les regards", on peut penser qu\'elle est plutôt :',
    ["Apaisée", "Endormie", "Tendue ou en colère", "Joyeuse mais timide"],
    2,
    "Les gestes décrits — serrer les poings, éviter les regards — renvoient à une tension émotionnelle forte. C'est implicite, mais lisible dans le corps.",
    "Appuie-toi sur les gestes, le corps et les paroles pour inférer l'état intérieur.",
  ],
  [
    "diag-comp-15",
    "Identifier une modalisation épistémique",
    "Dans 'Il semble que la réforme ait été abandonnée', l'auteur exprime :",
    ["Un ordre adressé au lecteur", "Une certitude présentée comme objective", "Une réserve sur la vérité de l'information", "Un souhait formulé à la 3e personne"],
    2,
    "\"Il semble que\" est un modalisateur épistémique — il signale que l'énonciateur n'est pas certain de l'information. Cette prise de distance sur la vérité du propos s'appelle la modalisation.",
    "Repère les modalisateurs : 'il semble', 'apparemment', 'sans doute', 'peut-être'… Ils signalent une réserve sur la certitude ou la vérité de l'énoncé.",
  ],
];
const didactiqueTuples: QuestionTuple[] = [
  [
    "diag-did-1",
    "Appliquer la ZPD à une situation d'enseignement",
    "Lucas réussit seul les divisions entières. Avec l'aide de son enseignant, il comprend et réussit les divisions avec décimales, mais échoue encore s'il travaille seul. L'enseignement de la division décimale se situe :",
    ["En dessous de sa ZPD : la tâche est trop facile, Lucas n'a pas besoin de guidage", "Dans sa ZPD : au-delà de son autonomie actuelle, mais accessible avec guidage", "Au-delà de sa ZPD : trop difficile, même l'aide de l'enseignant ne suffit pas", "En dehors de la ZPD : Vygotski ne s'applique qu'aux apprentissages langagiers"],
    1,
    "La ZPD est l'espace entre ce que l'élève accomplit seul (divisions entières) et ce qu'il peut accomplir avec guidage (divisions décimales). Lucas réussit avec aide mais pas encore seul : on est exactement dans sa ZPD. L'enseignement efficace doit se situer dans cet écart — ni trop facile (ennui), ni hors de portée même avec aide.",
    "ZPD = niveau actuel (seul) → niveau potentiel (avec guidage). Ni en dessous (trop facile), ni au-dessus (hors de portée même avec aide). C'est là que l'enseignement doit viser.",
  ],
  [
    "diag-did-2",
    "Reconnaître une pratique d'étayage",
    "Une enseignante de CE1 fournit une grille de relecture pour réviser les textes. Au fil de l'année, elle réduit progressivement le nombre d'items de la grille au fur et à mesure que les élèves automatisent les procédures. Cette pratique relève de :",
    ["La différenciation pédagogique : elle adapte les objectifs selon le niveau des élèves", "L'étayage : elle offre un soutien calibré qu'elle retire progressivement", "L'évaluation formative : elle mesure les acquis pour informer ses choix d'enseignement", "La pédagogie de projet : elle organise les apprentissages autour d'une production finale"],
    1,
    "L'étayage (Bruner) consiste à fournir un soutien adapté aux besoins actuels de l'élève, puis à le retirer progressivement à mesure que les compétences s'automatisent. La réduction des items de la grille est la marque du désétayage — étape essentielle souvent négligée. Ce n'est pas de la différenciation, qui adapte les objectifs durablement, ni de l'évaluation formative.",
    "Étayage ≠ aide permanente. La clé est le désétayage progressif : on retire le soutien au fur et à mesure que l'élève gagne en autonomie. Différenciation = adaptation durable ; étayage = soutien temporaire.",
  ],
  [
    "diag-did-3",
    "Distinguer décodage et compréhension en lecture",
    "Un élève déchiffre correctement tous les mots mais ne comprend pas le texte. Cela illustre que :",
    ["La compréhension orale suffit à comprendre un texte écrit", "Il n'a pas encore acquis le principe alphabétique", "La fluidité de lecture garantit la compréhension", "Le décodage automatisé est nécessaire mais insuffisant pour la compréhension"],
    3,
    "La lecture experte requiert deux composantes : le décodage (identification des mots) et la compréhension (construction du sens). Les deux sont nécessaires — l'un sans l'autre ne suffit pas.",
    "Réfère-toi au modèle de Gough et Tunmer (\"Simple View of Reading\") : compréhension = décodage × compréhension du langage.",
  ],
  [
    "diag-did-4",
    "Comprendre le rôle des représentations initiales des élèves",
    "Avant d'enseigner une notion, explorer les représentations initiales des élèves permet principalement de :",
    ["Classer les élèves par niveau avant d'enseigner", "Repérer les obstacles et les points d'appui pour mieux cibler l'enseignement", "Éviter que les élèves fassent des erreurs à l'avenir", "Mesurer l'efficacité de la séquence précédente"],
    1,
    "Les représentations initiales sont à la fois des obstacles (si erronées) et des points d'appui (si partiellement correctes) — les identifier te permet d'adapter l'enseignement là où ça compte.",
    "En didactique, l'erreur n'est pas un manque — c'est une étape révélatrice de la logique de l'élève.",
  ],
  [
    "diag-did-5",
    "Identifier une pratique d'enseignement explicite",
    "L'enseignement explicite d'une stratégie de lecture consiste principalement à :",
    ["Modéliser la stratégie à voix haute, guider les élèves, puis les laisser l'appliquer de façon autonome", "Laisser les élèves découvrir la stratégie par eux-mêmes en silence", "Donner une liste de règles à mémoriser sans les contextualiser", "Évaluer la stratégie sans l'enseigner préalablement"],
    0,
    "L'enseignement explicite suit trois phases : modelage (je fais en pensant à voix haute), pratique guidée, pratique autonome. Pas de découverte silencieuse — on rend la stratégie visible.",
    "Retiens la progression : \"je fais\" → \"on fait ensemble\" → \"tu fais seul\".",
  ],
  [
    "diag-did-6",
    "Comprendre l'intérêt de la lecture à voix haute du maître",
    "La lecture magistrale régulière sert notamment à :",
    [
      "Éviter les échanges autour des textes",
      "Remplacer toutes les lectures des élèves",
      "Nourrir la compréhension, le vocabulaire et la culture de l'écrit",
      "Évaluer la fluidité des élèves",
    ],
    2,
    "La lecture à voix haute du maître donne accès à des textes plus riches et soutient la compréhension — elle nourrit le vocabulaire et la culture de l'écrit des élèves.",
    "Cherche toujours l'effet d'apprentissage, pas seulement l'organisation pratique.",
  ],
  [
    "diag-did-7",
    "Identifier une pratique d'écriture efficace",
    "Pour aider des élèves à produire un texte, il est pertinent de :",
    [
      "Corriger tout à leur place dès la première phrase",
      "Prévoir un temps de planification, de mise en texte puis de révision",
      "Leur demander d'écrire directement sans préparation",
      "Imposer un texte modèle à reproduire mot pour mot",
    ],
    1,
    "La production d'écrit gagne à être pensée comme un processus en plusieurs étapes : planification, mise en texte, révision. Écrire directement sans préparer, c'est souvent aller dans le mur.",
    "Repère les dispositifs qui rendent visibles les étapes de l'écriture.",
  ],
  [
    "diag-did-8",
    "Distinguer évaluation formative et sommative",
    "En fin de séquence, un enseignant fait passer un test noté sur 20 qui figure dans le livret de compétences. Quelle est la nature de cette évaluation ?",
    [
      "Formative : elle aide l'élève à identifier ses points faibles en cours d'apprentissage",
      "Diagnostique : elle précède l'enseignement pour situer les élèves avant la séquence",
      "Sommative : elle certifie les acquis à l'issue d'un apprentissage achevé",
      "Formatrice : elle implique l'élève dans l'auto-évaluation de ses propres compétences",
    ],
    2,
    "Une évaluation sommative fait le bilan des apprentissages en fin de séquence — elle certifie un niveau atteint et figure dans les livrets. Elle s'oppose à la formative (pendant l'apprentissage, pour ajuster la suite) et à la diagnostique (avant, pour situer les élèves). La note dans le livret est le signe typique d'une démarche sommative.",
    "Formatif = pendant, pour progresser (régulation). Sommatif = après, pour certifier (bilan). Diagnostique = avant, pour situer (positionnement). L'évaluation formatrice implique l'auto-évaluation de l'élève.",
  ],
  [
    "diag-did-9",
    "Identifier l'intérêt de la dictée négociée",
    "La dictée négociée est intéressante car elle permet surtout de :",
    [
      "Éviter toute justification",
      "Faire copier plus vite",
      "Réduire le nombre de fautes par élève",
      "Verbaliser les raisonnements orthographiques",
    ],
    3,
    "La confrontation des solutions pousse les élèves à expliciter leurs choix orthographiques — c'est exactement ça l'intérêt : rendre le raisonnement visible et discutable.",
    "Cherche les dispositifs qui rendent les raisonnements visibles.",
  ],
  [
    "diag-did-10",
    "Reconnaître une aide efficace en vocabulaire",
    "Pour enseigner un mot nouveau durablement, il vaut mieux :",
    [
      "Le faire mémoriser sans phrase",
      "Le rencontrer dans plusieurs contextes et le réutiliser",
      "Le faire recopier une seule fois",
      "L'associer à une définition dictée à copier",
    ],
    1,
    "Le vocabulaire se stabilise mieux par des rencontres multiples et des réutilisations variées — un mot vu une fois, c'est souvent oublié. Un mot rencontré dix fois dans des contextes différents, ça reste.",
    "Repère les situations qui multiplient les usages du mot.",
  ],
  [
    "diag-did-11",
    "Comprendre la fluence",
    "La fluence en lecture désigne surtout :",
    [
      "La vitesse seule",
      "La capacité à recopier sans erreur",
      "Une lecture suffisamment précise, rapide et expressive pour soutenir la compréhension",
      "La maîtrise du décodage phonémique uniquement",
    ],
    2,
    "La fluence ne se réduit pas à aller vite — elle articule exactitude, rythme et prosodie. C'est la lecture fluide qui libère des ressources pour comprendre.",
    "Méfie-toi des définitions trop réductrices d'un apprentissage complexe.",
  ],
  [
    "diag-did-12",
    "Identifier un obstacle d'apprentissage",
    'Si un élève confond souvent "et" et "est", il est utile de travailler :',
    [
      "Seulement la copie du mot",
      "Uniquement l'ordre alphabétique",
      "La prononciation des deux formes à voix haute",
      "Des procédures de distinction grammaticale en contexte",
    ],
    3,
    "L'élève a besoin de critères pour distinguer les valeurs grammaticales des homophones — la copie seule ne sert à rien si la logique de distinction n'est pas comprise.",
    "Cherche le savoir qui manque à l'élève, pas seulement la forme à mémoriser.",
  ],
  [
    "diag-did-13",
    "Comprendre la notion de conflit socio-cognitif selon Perret-Clermont",
    "Le conflit socio-cognitif en pédagogie désigne :",
    ["Un désaccord entre l'enseignant et les parents d'élèves sur les méthodes", "La résistance individuelle d'un élève à changer de représentation face à une correction", "Une confrontation entre pairs qui déstabilise les représentations et stimule la construction collective du savoir", "L'opposition théorique entre deux méthodes d'enseignement incompatibles"],
    2,
    "Le conflit socio-cognitif (Perret-Clermont, Doise et Mugny) est une confrontation entre pairs où le désaccord force une décentration et une réélaboration du savoir. L'aspect \"socio\" (confrontation entre élèves) est indissociable du \"cognitif\" (construction du savoir). Il diffère du conflit cognitif individuel et de la simple correction magistrale.",
    "Distingue : conflit cognitif (entre la représentation de l'élève et un obstacle) et conflit socio-cognitif (entre élèves, mobilisant la dimension sociale de l'apprentissage pour faire avancer la compréhension).",
  ],
  [
    "diag-did-14",
    "Définir précisément la conscience phonologique en sciences cognitives de la lecture",
    "La conscience phonologique, telle que définie en sciences cognitives de la lecture, désigne :",
    ["La capacité à prononcer correctement les phonèmes de sa langue maternelle à l'oral", "La connaissance des règles de correspondance graphème-phonème en lecture experte", "La capacité métalinguistique à identifier et à manipuler les unités sonores du langage (syllabes, rimes, phonèmes)", "La maîtrise de l'orthographe phonétique d'usage"],
    2,
    "La conscience phonologique est une capacité métalinguistique : elle permet de traiter mentalement les unités sonores (syllabe, attaque-rime, phonème) indépendamment du support écrit. Elle est prédictive de l'acquisition de la lecture et doit être développée avant et pendant l'apprentissage du code. Elle diffère du décodage (association graphème-phonème), qui est une compétence de lecture proprement dite.",
    "Conscience phonologique ≠ décodage. Elle est métalinguistique : manipuler mentalement les sons sans support écrit (segmenter en syllabes, fusionner des phonèmes, supprimer un phonème). C'est un prédicteur clé de la réussite en lecture.",
  ],
  [
    "diag-did-15",
    "Comprendre la progressivité des apprentissages",
    "Une progression efficace en français consiste surtout à :",
    [
      "Travailler une notion une seule fois dans l'année",
      "Passer très vite d'une notion à l'autre sans retour",
      "Suivre l'ordre alphabétique des notions du programme",
      "Revenir régulièrement sur les notions dans des situations variées",
    ],
    3,
    "Les apprentissages langagiers demandent des reprises, des entraînements et des changements de contexte — apprendre, c'est revenir, pas juste avancer.",
    "Cherche une logique de reprise plutôt qu'un simple parcours linéaire.",
  ],
];

export const frenchDiagnosticQuestionBank: FrenchDiagnosticQuestion[] = [
  ...grammaireTuples.map((tuple) => buildQuestion("grammaire", tuple)),
  ...orthographeTuples.map((tuple) => buildQuestion("orthographe", tuple)),
  ...conjugaisonTuples.map((tuple) => buildQuestion("conjugaison", tuple)),
  ...lexiqueTuples.map((tuple) => buildQuestion("lexique", tuple)),
  ...analyseTuples.map((tuple) => buildQuestion("analyse_langue", tuple)),
  ...comprehensionTuples.map((tuple) => buildQuestion("comprehension_texte", tuple)),
  ...didactiqueTuples.map((tuple) => buildQuestion("didactique_francais", tuple)),
];

export const FRENCH_DIAGNOSTIC_BANK_SIZE = frenchDiagnosticQuestionBank.length;

export function buildBalancedFrenchDiagnosticSession(
  questionCount = FRENCH_DIAGNOSTIC_SESSION_SIZE,
  randomFn: () => number = Math.random,
) {
  const selectedQuestions: FrenchDiagnosticQuestion[] = [];
  const remainingBySubdomain = new Map<
    FrenchDiagnosticSubdomainKey,
    FrenchDiagnosticQuestion[]
  >(
    FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER.map((subdomain) => [
      subdomain,
      shuffle(
        frenchDiagnosticQuestionBank.filter(
          (question) => question.subdomain === subdomain,
        ),
        randomFn,
      ),
    ]),
  );

  const baseTake = Math.floor(questionCount / FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER.length);
  let remaining = questionCount;

  for (const subdomain of FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER) {
    const bucket = remainingBySubdomain.get(subdomain) ?? [];
    const takeCount = Math.min(baseTake, bucket.length);
    selectedQuestions.push(...bucket.splice(0, takeCount));
    remaining -= takeCount;
  }

  const subdomainOrder = shuffle(FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER, randomFn);
  let cursor = 0;

  while (remaining > 0) {
    const currentSubdomain = subdomainOrder[cursor % subdomainOrder.length];
    const bucket = remainingBySubdomain.get(currentSubdomain) ?? [];

    if (bucket.length > 0) {
      const nextQuestion = bucket.shift();

      if (nextQuestion) {
        selectedQuestions.push(nextQuestion);
        remaining -= 1;
      }
    }

    cursor += 1;

    if (cursor > 500) {
      break;
    }
  }

  return shuffle(selectedQuestions, randomFn);
}
