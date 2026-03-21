"use client";

import { useMemo, useState } from "react";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Panel } from "@/components/ui/panel";
import { cn, stripDiacritics } from "@/lib/utils";

type GlossaryEntry = {
  term: string;
  definition: string;
};

type LetterSection = {
  letter: string;
  entries: GlossaryEntry[];
};

const GLOSSARY: LetterSection[] = [
  {
    letter: "A",
    entries: [
      {
        term: "Adjectif",
        definition:
          "Mot variable qui s'accorde en genre et en nombre avec le nom auquel il se rapporte. Il peut être épithète (placé près du nom) ou attribut (relié au nom par un verbe attributif). La terminologie officielle (Éduscol 2021) utilise simplement « adjectif » ; le terme « adjectif qualificatif » désigne un sous-type.",
      },
      {
        term: "Adverbe",
        definition:
          "Mot invariable qui modifie le sens d'un verbe, d'un adjectif ou d'un autre adverbe. Il peut exprimer la manière, le temps, le lieu, la quantité ou l'intensité.",
      },
      {
        term: "Analyse grammaticale",
        definition:
          "Opération qui consiste à identifier la nature (classe grammaticale) et la fonction (rôle syntaxique) de chaque mot ou groupe de mots dans une phrase. L'analyse grammaticale est un exercice fondamental du CRPE.",
      },
      {
        term: "Antécédent",
        definition:
          "Nom ou groupe nominal auquel renvoie un pronom relatif. Dans « Le livre que je lis », le livre est l'antécédent du pronom que.",
      },
      {
        term: "Accord grammatical",
        definition:
          "Adaptation de la forme d'un mot (genre, nombre, personne) en fonction d'un autre mot auquel il est lié syntaxiquement. L'accord concerne les déterminants, adjectifs et participes passés (accord avec le nom) et les verbes (accord avec le sujet).",
      },
      {
        term: "Antonyme",
        definition:
          "Mot dont le sens est opposé à celui d'un autre mot. Rapide et lent sont des antonymes.",
      },
      {
        term: "Apposition",
        definition:
          "Expansion du nom qui lui est juxtaposée et apporte une précision supplémentaire. Elle est séparée par des virgules. Ex. : « Hugo, poète romantique, a écrit Notre-Dame de Paris. » À distinguer de l'épithète (adjectif directement accolé au nom).",
      },
      {
        term: "Attribut du sujet",
        definition:
          "Fonction exercée par un adjectif ou un nom relié au sujet par un verbe attributif (être, sembler, paraître, devenir, rester…). L'attribut s'accorde avec le sujet. Ex. : « Cette histoire est belle. » Le terme officiel (Éduscol 2021) est « verbe attributif » plutôt que « verbe d'état ».",
      },
      {
        term: "Auxiliaire",
        definition:
          "Verbe (être ou avoir) qui se combine avec un participe passé pour former les temps composés. Avoir est l'auxiliaire le plus courant ; être s'emploie avec les verbes pronominaux et certains verbes de mouvement ou d'état (aller, venir, naître, mourir…).",
      },
    ],
  },
  {
    letter: "B",
    entries: [
      {
        term: "Barbarisme",
        definition:
          "Faute de langue consistant à employer un mot déformé, inexistant ou utilisé dans un sens erroné. Ex. : « *infractus » pour infarctus. À distinguer du solécisme (faute de syntaxe) et du néologisme (création volontaire).",
      },
      {
        term: "Base lexicale",
        definition:
          "Élément central d'un mot qui porte le sens principal, autour duquel s'ajoutent les affixes (préfixes et suffixes). Aussi appelé radical. Ex. : dans « relire », la base est lire.",
      },
    ],
  },
  {
    letter: "C",
    entries: [
      {
        term: "Champ lexical",
        definition:
          "Ensemble de mots appartenant à des catégories grammaticales différentes mais se rapportant à un même thème ou une même réalité.",
      },
      {
        term: "Champ sémantique",
        definition:
          "Ensemble des sens ou acceptions d'un même mot. La polysémie d'un mot constitue son champ sémantique.",
      },
      {
        term: "Classe grammaticale",
        definition:
          "Catégorie à laquelle appartient un mot en fonction de ses propriétés morphologiques et syntaxiques. Les principales classes sont : nom, verbe, adjectif, adverbe, déterminant, pronom, préposition, conjonction, interjection.",
      },
      {
        term: "COD (Complément d'objet direct)",
        definition:
          "Complément essentiel du verbe, rattaché sans préposition, qui répond à la question « Qui ? » ou « Quoi ? » posée après le verbe. Il peut être pronominalisé par le, la, les.",
      },
      {
        term: "COI (Complément d'objet indirect)",
        definition:
          "Complément essentiel du verbe, rattaché par une préposition (à, de), qui répond à la question « À qui ? », « De qui ? » ou « À quoi ? ».",
      },
      {
        term: "Cohérence textuelle",
        definition:
          "Propriété d'un texte dont les phrases forment un tout logique et cohérent grâce à la progression thématique, les reprises anaphoriques et les connecteurs logiques. Un texte cohérent ne contient pas de contradiction ni de rupture de fil directeur.",
      },
      {
        term: "Complément circonstanciel",
        definition:
          "Complément facultatif et déplaçable qui exprime les circonstances de l'action : temps, lieu, manière, cause, but, etc.",
      },
      {
        term: "Complément du nom",
        definition:
          "Expansion du groupe nominal introduite par une préposition (de, à, en…) et apportant une précision sur le nom noyau. Ex. : « la maison de Pierre ». C'est une expansion facultative du GN, à distinguer de l'épithète et de l'apposition.",
      },
      {
        term: "Coordination",
        definition:
          "Relation entre deux propositions ou deux éléments de même fonction, reliés par une conjonction de coordination (mais, ou, et, or, ni, car) ou par simple juxtaposition. « Donc » est un adverbe de liaison, pas une conjonction de coordination (Éduscol 2021). À distinguer de la subordination (où une proposition dépend de l'autre).",
      },
      {
        term: "Connecteur logique",
        definition:
          "Mot ou locution qui marque un lien logique entre deux propositions ou paragraphes : addition (et, de plus), opposition (mais, cependant), cause (car, parce que), conséquence (donc, ainsi), concession (certes, bien que), etc.",
      },
      {
        term: "Conjonction de coordination",
        definition:
          "Mot invariable qui unit deux éléments de même nature ou de même fonction. Les six conjonctions de coordination sont : mais, ou, et, or, ni, car. Attention : « donc » est classé comme adverbe de liaison par la terminologie officielle (Éduscol 2021), et non comme conjonction.",
      },
      {
        term: "Conjonction de subordination",
        definition:
          "Mot ou locution qui introduit une proposition subordonnée et la relie à la proposition principale. Exemples : que, quand, si, parce que, bien que.",
      },
      {
        term: "Conscience phonologique",
        definition:
          "Capacité métalinguistique à identifier, segmenter et manipuler les unités sonores de la langue (syllabes, rimes, phonèmes). Elle est un prédicteur majeur de la réussite en lecture-écriture.",
      },
    ],
  },
  {
    letter: "D",
    entries: [
      {
        term: "Décodage",
        definition:
          "Processus par lequel le lecteur traduit les graphèmes en phonèmes pour identifier les mots écrits. C'est l'une des deux composantes fondamentales de la lecture, avec la compréhension.",
      },
      {
        term: "Déterminant",
        definition:
          "Mot placé devant le nom pour l'actualiser. Il s'accorde en genre et en nombre avec le nom. On distingue les articles (définis, indéfinis, partitifs), les déterminants possessifs, démonstratifs, interrogatifs, etc.",
      },
      {
        term: "Didactique",
        definition:
          "Discipline qui étudie les processus d'enseignement et d'apprentissage d'un contenu disciplinaire spécifique. La didactique du français s'intéresse à l'enseignement de la lecture, de l'écriture, de la grammaire et du vocabulaire.",
      },
      {
        term: "Dérivation",
        definition:
          "Procédé de formation des mots consistant à ajouter un affixe (préfixe ou suffixe) à un radical pour créer un nouveau mot. Ex. : « relire » (préfixation), « lecture » (suffixation). La dérivation est le principal mécanisme d'enrichissement du lexique français.",
      },
      {
        term: "Discours direct",
        definition:
          "Mode de rapportage de paroles dans lequel les propos sont reproduits tels quels, entre guillemets, après un verbe introducteur. Ex. : Il dit : « Je viendrai demain. » La ponctuation et les marques de personne sont conservées.",
      },
      {
        term: "Discours indirect",
        definition:
          "Mode de rapportage de paroles dans lequel les propos sont intégrés à la phrase principale via une subordonnée. Ex. : Il dit qu'il viendrait le lendemain. Les pronoms, les temps et les déictiques changent lors de la transposition.",
      },
    ],
  },
  {
    letter: "E",
    entries: [
      {
        term: "Ellipse",
        definition:
          "Figure de construction qui consiste à omettre un ou plusieurs mots non indispensables à la compréhension. Ex. : « Pierre lit un roman, Marie une revue. » (le verbe est ellipsé dans la seconde proposition). L'ellipse allège le style.",
      },
      {
        term: "Encodage",
        definition:
          "Processus inverse du décodage : conversion du message oral en message écrit, du phonème au graphème. L'encodage sollicite à la fois la conscience phonologique et les connaissances orthographiques.",
      },
      {
        term: "Énoncé",
        definition:
          "Séquence linguistique produite par un locuteur dans une situation de communication donnée. L'énoncé peut être une phrase ou un ensemble de phrases. La situation d'énonciation désigne les paramètres du contexte : qui parle, à qui, quand, où.",
      },
      {
        term: "Expansion du groupe nominal",
        definition:
          "Tout élément ajouté au nom noyau pour l'enrichir : l'épithète (adjectif), l'apposition (nom ou GN juxtaposé, ou adjectif détaché entre virgules), le complément du nom (préposition + GN) et la proposition subordonnée relative.",
      },
    ],
  },
  {
    letter: "F",
    entries: [
      {
        term: "Famille de mots",
        definition:
          "Ensemble de mots dérivés d'un même radical (base lexicale). Ils partagent un lien sémantique et morphologique. Ex. : lire, lecture, lecteur, lisible, relire, illisible forment une famille.",
      },
      {
        term: "Figure de style",
        definition:
          "Procédé rhétorique qui produit un effet expressif particulier. Les principales figures sont : la comparaison (avec outil comparatif), la métaphore (sans outil), la personnification, l'hyperbole, l'anaphore, la litote, l'euphémisme.",
      },
      {
        term: "Fluence",
        definition:
          "Capacité à lire un texte de façon précise, rapide et avec une prosodie adaptée. Elle résulte de l'automatisation du décodage et libère des ressources cognitives pour la compréhension.",
      },
      {
        term: "Fonctions syntaxiques",
        definition:
          "Rôles que jouent les groupes de mots dans la phrase par rapport au verbe ou au nom. Les principales fonctions sont : sujet, COD, COI, attribut du sujet, complément circonstanciel, épithète, apposition.",
      },
    ],
  },
  {
    letter: "G",
    entries: [
      {
        term: "Genre",
        definition:
          "Catégorie grammaticale qui distingue le masculin et le féminin. En français, le genre des noms est lexicalement fixé (non motivé), ce qui le distingue du nombre. Les déterminants, adjectifs et participes passés s'accordent en genre avec le nom.",
      },
      {
        term: "Gérondif",
        definition:
          "Forme verbale invariable constituée de en + participe présent. Il exprime une action simultanée à celle du verbe principal et a toujours le même sujet que lui. Ex. : « Il chante en travaillant. »",
      },
      {
        term: "Graphème",
        definition:
          "Unité minimale de l'écriture correspondant à un phonème ou à une combinaison de lettres représentant un son. Par exemple, le son [o] peut s'écrire avec les graphèmes o, au ou eau.",
      },
      {
        term: "Groupe nominal (GN)",
        definition:
          "Groupe de mots organisé autour d'un nom noyau, accompagné d'un déterminant et éventuellement d'expansions (adjectif, complément du nom, relative). Le GN peut avoir les fonctions de sujet, COD, COI ou complément circonstanciel.",
      },
      {
        term: "Groupe verbal (GV)",
        definition:
          "Groupe de mots organisé autour du verbe noyau, incluant ses compléments et éventuellement l'attribut du sujet. Le GV constitue le prédicat de la phrase avec le sujet.",
      },
    ],
  },
  {
    letter: "H",
    entries: [
      {
        term: "Homophone",
        definition:
          "Mot qui se prononce de la même façon qu'un autre mot mais qui s'écrit différemment et a un sens différent. Exemples : a (verbe avoir) / à (préposition), son / sont.",
      },
      {
        term: "Hyperonyme",
        definition:
          "Terme générique qui englobe d'autres termes plus spécifiques (hyponymes). Animal est l'hyperonyme de chien, chat, oiseau.",
      },
      {
        term: "Hyponyme",
        definition:
          "Terme spécifique inclus dans un terme générique (hyperonyme). Chien est un hyponyme d'animal.",
      },
    ],
  },
  {
    letter: "I",
    entries: [
      {
        term: "Impératif",
        definition:
          "Mode verbal exprimant un ordre, un conseil ou une interdiction. Il ne se conjugue qu'à trois personnes (2e sg, 1re pl, 2e pl) et n'a pas de sujet exprimé. Ex. : Viens ! Partons ! Ne criez pas !",
      },
      {
        term: "Indicatif",
        definition:
          "Mode verbal qui présente l'action comme réelle ou certaine. C'est le mode de base du français, avec des temps composés (passé composé, plus-que-parfait…) et des temps simples (présent, imparfait, passé simple, futur, conditionnel).",
      },
      {
        term: "Inférence",
        definition:
          "Information implicite que le lecteur doit déduire à partir d'indices du texte et de ses connaissances. On distingue les inférences logiques (nécessaires) et pragmatiques (vraisemblables).",
      },
      {
        term: "Infinitif",
        definition:
          "Forme non conjuguée du verbe qui exprime l'action sans indication de personne, de nombre ni de temps. Il peut fonctionner comme un nom (sujet, COD). Les terminaisons des infinitifs (-er, -ir, -re, -oir) permettent d'identifier le groupe du verbe.",
      },
    ],
  },
  {
    letter: "L",
    entries: [
      {
        term: "Lexique",
        definition:
          "Ensemble des mots d'une langue ou d'un locuteur. Le lexique mental désigne le dictionnaire intérieur de chaque individu. Il comprend le vocabulaire actif (production) et passif (réception).",
      },
      {
        term: "Locution",
        definition:
          "Groupe de mots figé fonctionnant comme une unité lexicale. On distingue les locutions nominales (chemin de fer), adverbiales (tout à coup), prépositionnelles (à cause de) et conjonctives (bien que, parce que).",
      },
    ],
  },
  {
    letter: "M",
    entries: [
      {
        term: "Métaphore",
        definition:
          "Figure de style qui établit une analogie entre deux réalités sans utiliser d'outil de comparaison. Elle crée une identification directe. Ex. : « Cet homme est un lion. » À distinguer de la comparaison (avec comme, tel, semblable à…).",
      },
      {
        term: "Morphème",
        definition:
          "Unité minimale de sens. On distingue les morphèmes lexicaux (racine du mot) et les morphèmes grammaticaux (affixes indiquant le genre, le nombre, la personne, le temps, etc.).",
      },
      {
        term: "Morphologie",
        definition:
          "Étude de la structure interne des mots et de leurs variations de forme. Elle inclut la morphologie flexionnelle (accords, conjugaison) et la morphologie dérivationnelle (préfixes, suffixes).",
      },
    ],
  },
  {
    letter: "N",
    entries: [
      {
        term: "Nombre",
        definition:
          "Catégorie grammaticale qui distingue le singulier (un seul être ou objet) du pluriel (plusieurs). En français, le pluriel s'exprime généralement par l'ajout de -s ou -x. Les déterminants, adjectifs, participes passés et verbes s'accordent en nombre.",
      },
      {
        term: "Nom commun",
        definition:
          "Mot variable désignant une personne, un animal, une chose ou une notion de façon générique. Il est précédé d'un déterminant et varie en genre et en nombre.",
      },
      {
        term: "Nom propre",
        definition:
          "Nom qui désigne un être ou une réalité unique et particulière. Il s'écrit avec une majuscule et ne prend généralement pas de déterminant.",
      },
    ],
  },
  {
    letter: "O",
    entries: [
      {
        term: "Orthographe grammaticale",
        definition:
          "Ensemble des règles d'écriture liées aux accords (genre, nombre, personne). Elle concerne les accords dans le groupe nominal (déterminant, nom, adjectif) et l'accord du verbe avec son sujet, ainsi que l'accord des participes passés.",
      },
      {
        term: "Orthographe lexicale",
        definition:
          "Écriture conventionnelle des mots indépendamment de leurs accords grammaticaux. Elle résulte de l'histoire du mot (étymologie, évolution phonétique). Ex. : le ph de philosophie (étymologie grecque).",
      },
    ],
  },
  {
    letter: "P",
    entries: [
      {
        term: "Paronyme",
        definition:
          "Mot qui ressemble phonétiquement à un autre mais qui a un sens différent, source de confusion. Ex. : éminent (remarquable) / imminent (qui va se produire), évoquer / invoquer, conjecture / conjoncture.",
      },
      {
        term: "Participe passé",
        definition:
          "Forme verbale non conjuguée utilisée dans les temps composés ou comme adjectif. Avec l'auxiliaire être, il s'accorde avec le sujet ; avec avoir, il s'accorde avec le COD placé avant le verbe.",
      },
      {
        term: "Participe présent",
        definition:
          "Forme verbale invariable en -ant. Il exprime une action simultanée à celle du verbe principal et peut avoir un sujet différent (contrairement au gérondif). Ex. : « Les enfants chantant dans la cour, les professeurs corrigeaient leurs copies. »",
      },
      {
        term: "Phonème",
        definition:
          "Unité sonore minimale d'une langue qui permet de distinguer des mots. Le français compte environ 36 phonèmes. Un phonème peut être représenté par plusieurs graphèmes.",
      },
      {
        term: "Polysémie",
        definition:
          "Propriété d'un mot d'avoir plusieurs sens différents. La polysémie est la règle en français, le monosémie (un seul sens) étant plutôt l'exception.",
      },
      {
        term: "Ponctuation",
        definition:
          "Ensemble des signes graphiques qui organisent le texte écrit et guident la lecture. Chaque signe a un rôle précis : le point marque la fin d'une phrase, la virgule sépare des éléments, le point-virgule marque une pause intermédiaire, les deux-points introduisent une explication ou un discours.",
      },
      {
        term: "Préfixe",
        definition:
          "Affixe placé avant le radical d'un mot pour modifier son sens. Ex. : re- (répétition : relire), in-/im- (négation : impossible), pré- (antériorité : prévoir), anti- (opposition : antidouleur).",
      },
      {
        term: "Préposition",
        definition:
          "Mot invariable qui unit un complément à un autre mot et indique le rapport syntaxique entre eux. Les prépositions les plus fréquentes sont à, de, en, pour, par, sur, sous, avec.",
      },
      {
        term: "Principe alphabétique",
        definition:
          "Principe selon lequel les signes écrits (graphèmes) représentent les sons de la langue (phonèmes). La maîtrise de ce principe est indispensable pour apprendre à lire et à écrire.",
      },
      {
        term: "Pronom",
        definition:
          "Mot qui remplace ou représente un nom, un groupe nominal, une phrase ou une idée. On distingue les pronoms personnels, possessifs, démonstratifs, relatifs, interrogatifs et indéfinis.",
      },
      {
        term: "Proposition principale",
        definition:
          "Proposition qui peut exister seule, sans être subordonnée à une autre. Elle constitue le noyau de la phrase complexe.",
      },
      {
        term: "Proposition subordonnée",
        definition:
          "Proposition qui dépend d'une proposition principale. Elle est introduite par un subordonnant (conjonction, pronom relatif). On distingue les relatives, les complétives et les circonstancielles.",
      },
    ],
  },
  {
    letter: "R",
    entries: [
      {
        term: "Radical",
        definition:
          "Partie fondamentale d'un mot portant le sens principal, à laquelle s'ajoutent les affixes. Ex. : dans « incroyable », le radical est croire. On parle aussi de base lexicale ou de racine.",
      },
      {
        term: "Rectifications orthographiques de 1990",
        definition:
          "Ensemble de modifications orthographiques recommandées par le Conseil supérieur de la langue française pour simplifier certaines graphies. Exemples : soudure de mots composés (portemonnaie), accent grave sur certains mots (évènement), trait d'union des numéraux composés (vingt-et-un).",
      },
      {
        term: "Reformulation",
        definition:
          "Opération discursive qui consiste à exprimer à nouveau, de façon différente, un contenu déjà énoncé. Elle peut utiliser des synonymes, des périphrases ou une structure syntaxique différente. Compétence essentielle pour le résumé et la compréhension.",
      },
      {
        term: "Registre littéraire",
        definition:
          "Ton dominant d'un texte littéraire, traduisant l'effet visé sur le lecteur. Les principaux registres sont : tragique, comique, lyrique, épique, fantastique, ironique, pathétique, polémique. À distinguer du registre de langue (niveau de langue courant/soutenu/familier).",
      },
      {
        term: "Registre de langue",
        definition:
          "Niveau de langue adapté à la situation de communication. On distingue le registre familier (langue orale informelle), le registre courant (langue standard) et le registre soutenu (langue élaborée, formelle). À distinguer du registre littéraire (tonalité d'un texte).",
      },
      {
        term: "Relatif (pronom)",
        definition:
          "Pronom qui introduit une proposition subordonnée relative et reprend un antécédent. Les pronoms relatifs simples sont : qui (sujet), que (COD), dont (complément avec de), où (lieu ou temps). Les pronoms relatifs composés (lequel, duquel…) s'emploient après préposition.",
      },
    ],
  },
  {
    letter: "S",
    entries: [
      {
        term: "Schéma narratif",
        definition:
          "Structure en cinq étapes qui organise un récit : situation initiale (équilibre), élément perturbateur (rupture), péripéties (actions pour résoudre le problème), élément de résolution (fin du conflit), situation finale (nouvel équilibre). Outil d'analyse narratologique fondamental, enseigné dès le cycle 3.",
      },
      {
        term: "Sens figuré",
        definition:
          "Emploi d'un mot dans un sens métaphorique ou imagé, par extension du sens premier. Ex. : « il a du cœur » (sens figuré : courage, générosité). Le sens figuré s'oppose au sens propre (sens premier, concret).",
      },
      {
        term: "Sens propre",
        definition:
          "Sens premier, concret et littéral d'un mot, par opposition au sens figuré. Ex. : « le pied de la table » emploie pied au sens propre (partie inférieure), tandis que « avoir du cœur » est un sens figuré.",
      },
      {
        term: "Subjonctif",
        definition:
          "Mode verbal qui exprime le doute, la volonté, l'obligation, le souhait ou la supposition. Il est souvent introduit par que. Exemple : Il faut qu'il vienne.",
      },
      {
        term: "Subordination",
        definition:
          "Relation de dépendance syntaxique entre une proposition principale et une proposition subordonnée. La proposition subordonnée ne peut exister seule. Elle est introduite par un subordonnant (conjonction, pronom relatif). À distinguer de la coordination (lien entre éléments de même rang).",
      },
      {
        term: "Subordonnée circonstancielle",
        definition:
          "Proposition subordonnée qui joue le rôle d'un complément circonstanciel. Elle est introduite par une conjonction de subordination exprimant le temps (quand), la cause (parce que), la conséquence (si bien que), le but (pour que), la concession (bien que + subjonctif), la condition (si + indicatif).",
      },
      {
        term: "Subordonnée complétive",
        definition:
          "Proposition subordonnée introduite par que et jouant le rôle d'un COD ou d'un sujet par rapport au verbe principal. Ex. : « Je pense qu'il viendra. » Elle est souvent dite « complétive en que ».",
      },
      {
        term: "Subordonnée relative",
        definition:
          "Proposition subordonnée introduite par un pronom relatif (qui, que, dont, où, lequel…) qui se rapporte à un antécédent. La relative déterminative est essentielle au sens (sans virgule) ; la relative explicative ajoute une précision (entre virgules).",
      },
      {
        term: "Suffixe",
        definition:
          "Affixe placé après le radical pour former un nouveau mot en changeant souvent sa classe grammaticale. Ex. : -tion forme des noms (création), -able des adjectifs (acceptable), -ment des adverbes (rapidement), -iser des verbes (moderniser).",
      },
      {
        term: "Sujet",
        definition:
          "Fonction syntaxique du groupe nominal (ou équivalent) dont parle la phrase. Le verbe s'accorde avec le sujet. Il répond à la question « Qui est-ce qui ? » ou « Qu'est-ce qui ? ».",
      },
      {
        term: "Synonyme",
        definition:
          "Mot dont le sens est proche ou équivalent à celui d'un autre mot. Les synonymes permettent d'éviter les répétitions, mais ils ne sont jamais totalement interchangeables.",
      },
      {
        term: "Syntaxe",
        definition:
          "Ensemble des règles qui régissent l'organisation des mots en phrases. Elle étudie les relations entre les groupes de mots et leurs fonctions dans la phrase.",
      },
    ],
  },
  {
    letter: "T",
    entries: [
      {
        term: "Temps verbal",
        definition:
          "Catégorie grammaticale du verbe qui situe l'action dans le temps (passé, présent, futur) et exprime une valeur aspectuelle (accompli/non accompli). On distingue les temps de l'indicatif (présent, imparfait, passé simple, passé composé, futur, conditionnel…), du subjonctif et de l'impératif.",
      },
      {
        term: "Transitivité",
        definition:
          "Propriété d'un verbe de se construire avec un complément d'objet. Un verbe transitif direct accepte un COD (aimer, lire) ; un verbe transitif indirect accepte un COI (parler à, se souvenir de). Un verbe intransitif n'admet pas de complément d'objet (dormir, arriver).",
      },
      {
        term: "Transposition",
        definition:
          "Opération qui consiste à transformer un texte en changeant la personne (je → il), le temps (présent → imparfait), le nombre ou le genre, en ajustant en conséquence tous les mots concernés (pronoms, verbes, adjectifs, déterminants).",
      },
      {
        term: "Type de phrase",
        definition:
          "Classification des phrases selon leur intention de communication. La terminologie officielle (Éduscol 2021) distingue trois types : déclaratif (énonce un fait), interrogatif (pose une question), impératif (exprime un ordre). L'exclamation n'est pas un type mais une forme de phrase, au même titre que la forme négative, passive, emphatique ou impersonnelle. À ne pas confondre type et forme.",
      },
    ],
  },
  {
    letter: "V",
    entries: [
      {
        term: "Valeur des temps",
        definition:
          "Signification aspectuelle ou modale d'un temps verbal au-delà de son sens premier. Ex. : l'imparfait peut exprimer une description (valeur descriptive), une habitude passée (valeur itérative), une hypothèse (valeur hypothétique avec si) ou une politesse (valeur de politesse).",
      },
      {
        term: "Verbe",
        definition:
          "Mot variable qui exprime une action, un état ou un processus. Il est le noyau de la proposition et s'accorde en personne et en nombre avec son sujet.",
      },
      {
        term: "Verbe pronominal",
        definition:
          "Verbe accompagné d'un pronom réfléchi de la même personne que le sujet (me, te, se, nous, vous). On distingue les verbes essentiellement pronominaux (s'enfuir, se souvenir), les pronominaux réfléchis (se laver) et les pronominaux réciproques (se battre).",
      },
      {
        term: "Vocabulaire actif",
        definition:
          "Ensemble des mots qu'un locuteur est capable d'utiliser spontanément en production orale ou écrite. Il est généralement moins étendu que le vocabulaire passif.",
      },
      {
        term: "Vocabulaire passif",
        definition:
          "Ensemble des mots qu'un locuteur comprend à la lecture ou à l'écoute, sans nécessairement les employer lui-même. Il est toujours plus large que le vocabulaire actif.",
      },
      {
        term: "Voix passive",
        definition:
          "Construction dans laquelle le sujet grammatical subit l'action au lieu de l'accomplir. Elle se forme avec être + participe passé. Ex. : « La lettre est écrite par Paul. » Le sujet actif devient complément d'agent (par + GN). La voix passive est possible uniquement avec les verbes transitifs directs.",
      },
    ],
  },
];

const ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
const LETTERS_WITH_ENTRIES = new Set(GLOSSARY.map((s) => s.letter));
const TOTAL_ENTRIES = GLOSSARY.reduce((acc, s) => acc + s.entries.length, 0);

function normalize(text: string) {
  return stripDiacritics(text.toLowerCase().trim());
}

export default function GlossairePage() {
  const [search, setSearch] = useState("");

  const filtered = useMemo(() => {
    if (!search.trim()) return GLOSSARY;

    const query = normalize(search);
    return GLOSSARY.map((section) => ({
      ...section,
      entries: section.entries.filter(
        (entry) =>
          normalize(entry.term).includes(query) ||
          normalize(entry.definition).includes(query),
      ),
    })).filter((section) => section.entries.length > 0);
  }, [search]);

  const matchCount = filtered.reduce((acc, s) => acc + s.entries.length, 0);
  const isFiltering = search.trim().length > 0;
  const filteredLetters = new Set(filtered.map((s) => s.letter));

  return (
    <div className="space-y-8">
      {/* Hero */}
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Référence</Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">Glossaire grammatical</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Définitions des notions grammaticales et didactiques essentielles pour le CRPE.{" "}
                <span className="text-ink font-medium">{TOTAL_ENTRIES} termes</span> classés par
                ordre alphabétique.
              </p>
            </div>
          </div>
          <ButtonLink href="/ressources" variant="secondary">
            Retour aux fiches de cours
          </ButtonLink>
        </div>
      </Panel>

      {/* Search + alphabet nav */}
      <div className="space-y-4">
        <div className="relative">
          <Input
            type="search"
            placeholder="Rechercher un terme ou une notion…"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="w-full pl-4 pr-10"
          />
          {isFiltering && (
            <p className="mt-2 text-sm text-muted">
              {matchCount === 0
                ? "Aucun résultat."
                : `${matchCount} terme${matchCount > 1 ? "s" : ""} trouvé${matchCount > 1 ? "s" : ""}.`}
            </p>
          )}
        </div>
        <div className="flex flex-wrap gap-1.5">
          {ALPHABET.map((letter) => {
            const hasEntries = isFiltering
              ? filteredLetters.has(letter)
              : LETTERS_WITH_ENTRIES.has(letter);
            return (
              <a
                key={letter}
                href={hasEntries ? `#lettre-${letter}` : undefined}
                aria-disabled={!hasEntries}
                className={cn(
                  "flex h-9 w-9 items-center justify-center rounded-full text-sm font-semibold transition-colors",
                  hasEntries
                    ? "border border-border bg-paper text-ink hover:border-accent hover:bg-secondary"
                    : "text-muted/40 cursor-default",
                )}
              >
                {letter}
              </a>
            );
          })}
        </div>
      </div>

      {/* Glossary sections */}
      <div className="space-y-8">
        {filtered.map(({ letter, entries }) => (
          <section key={letter} id={`lettre-${letter}`} className="scroll-mt-6 space-y-4">
            <div className="flex items-center gap-4">
              <span className="font-serif text-5xl font-semibold text-ink/20">{letter}</span>
              <div className="h-px flex-1 bg-border" />
            </div>
            <Panel>
              <dl className="divide-y divide-border">
                {entries.map(({ term, definition }, index) => (
                  <div
                    key={term}
                    className={cn(
                      "py-5",
                      index === 0 && "pt-0",
                      index === entries.length - 1 && "pb-0",
                    )}
                  >
                    <dt className="font-semibold text-ink">{term}</dt>
                    <dd className="mt-2 text-sm leading-7 text-muted">{definition}</dd>
                  </div>
                ))}
              </dl>
            </Panel>
          </section>
        ))}
      </div>

      {/* Bottom CTA */}
      <Panel className="border-border bg-secondary">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Fiches de cours</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Retrouvez les règles essentielles par domaine avec des tableaux et des exemples.
            </p>
          </div>
          <ButtonLink href="/ressources" variant="secondary">
            Retour aux fiches de cours
          </ButtonLink>
        </div>
      </Panel>
    </div>
  );
}
