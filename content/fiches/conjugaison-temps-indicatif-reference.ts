import type { Fiche } from "@/features/fiches/types";

export const tempsIndicatifReference: Fiche = {
  id: "conjugaison-temps-indicatif-reference",
  slug: "temps-indicatif-guide-reference",
  title: "Les temps de l'indicatif : guide de référence",
  domaine: "conjugaison",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 18,
  tags: [
    "indicatif",
    "présent",
    "imparfait",
    "passé simple",
    "futur",
    "passé composé",
    "plus-que-parfait",
    "terminaisons",
    "temps simples",
    "temps composés",
  ],
  notionsLiees: [
    "conjugaison-valeurs-present-sprint",
    "conjugaison-imparfait-passe-simple-sprint",
    "conjugaison-passe-compose-imparfait-sprint",
    "conjugaison-concordance-temps-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'indicatif est le mode de la réalité : il présente les faits comme certains, qu'ils soient passés, présents ou futurs. C'est le mode le plus riche en temps (huit temps : quatre simples et quatre composés). La maîtrise de ses terminaisons et de ses valeurs d'emploi est incontournable au CRPE, tant pour l'épreuve disciplinaire que pour l'enseignement de la conjugaison à l'école primaire.",
    sections: [
      {
        id: "systeme-temps",
        title: "Le système des temps de l'indicatif",
        badge: "Vue d'ensemble",
        blocks: [
          {
            kind: "rule",
            content:
              "L'indicatif comporte huit temps organisés en deux séries parallèles. Chaque temps simple a un temps composé correspondant, formé avec l'auxiliaire être ou avoir conjugué au temps simple + le participe passé. Le temps composé exprime l'antériorité par rapport au temps simple correspondant.",
          },
          {
            kind: "table",
            caption: "Correspondance temps simples / temps composés",
            headers: ["Temps simple", "Temps composé correspondant", "Rapport temporel"],
            rows: [
              [
                "Présent",
                "Passé composé",
                "Le passé composé exprime l'antériorité par rapport au présent",
              ],
              [
                "Imparfait",
                "Plus-que-parfait",
                "Le plus-que-parfait exprime l'antériorité par rapport à l'imparfait",
              ],
              [
                "Passé simple",
                "Passé antérieur",
                "Le passé antérieur exprime l'antériorité par rapport au passé simple",
              ],
              [
                "Futur simple",
                "Futur antérieur",
                "Le futur antérieur exprime l'antériorité par rapport au futur simple",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Pour former un temps composé, conjuguez l'auxiliaire au temps simple correspondant + participe passé. Exemple : imparfait → plus-que-parfait = auxiliaire à l'imparfait + PP (il avait mangé).",
          },
        ],
      },
      {
        id: "present",
        title: "Le présent de l'indicatif",
        badge: "Temps simple",
        blocks: [
          {
            kind: "table",
            caption: "Terminaisons du présent selon les groupes",
            headers: ["Personne", "1er groupe (-er)", "2e groupe (-ir / -issons)", "3e groupe"],
            rows: [
              ["je", "-e", "-is", "-s / -x / -e"],
              ["tu", "-es", "-is", "-s / -x / -es"],
              ["il/elle", "-e", "-it", "-t / -d / -e"],
              ["nous", "-ons", "-issons", "-ons"],
              ["vous", "-ez", "-issez", "-ez"],
              ["ils/elles", "-ent", "-issent", "-ent"],
            ],
          },
          {
            kind: "rule",
            content:
              "Les valeurs du présent : (1) présent d'énonciation — action simultanée au moment où l'on parle (Je te parle) ; (2) présent de vérité générale — fait toujours vrai (L'eau bout à 100 °C) ; (3) présent d'habitude — action répétée (Il se lève à 7 h) ; (4) présent de narration — dans un récit au passé, rend l'action plus vivante (En 1789, le peuple prend la Bastille) ; (5) présent à valeur de futur proche (Je pars demain).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Verbes en -dre au présent",
                explanation:
                  "Les verbes en -dre (sauf -indre et -soudre) gardent le -d à la 3e personne : il prend, il répond, il mord. Les verbes en -indre et -soudre perdent le -d : il peint, il résout.",
              },
              {
                label: "Pouvoir, vouloir, valoir : -x aux deux premières personnes",
                explanation:
                  "Je peux, tu peux (et non *je peus). Je veux, tu veux. Je vaux, tu vaux. C'est le -x qui remplace le -s habituel.",
              },
            ],
          },
        ],
      },
      {
        id: "imparfait",
        title: "L'imparfait de l'indicatif",
        badge: "Temps simple",
        blocks: [
          {
            kind: "table",
            caption: "Terminaisons de l'imparfait (identiques pour tous les groupes)",
            headers: ["Personne", "Terminaison", "Exemple (finir)"],
            rows: [
              ["je", "-ais", "je finissais"],
              ["tu", "-ais", "tu finissais"],
              ["il/elle", "-ait", "il finissait"],
              ["nous", "-ions", "nous finissions"],
              ["vous", "-iez", "vous finissiez"],
              ["ils/elles", "-aient", "ils finissaient"],
            ],
          },
          {
            kind: "rule",
            content:
              "Les valeurs de l'imparfait : (1) description — décor, portrait, arrière-plan dans un récit (Le ciel était gris) ; (2) habitude dans le passé — action répétée (Chaque matin, il partait à l'aube) ; (3) durée — action non délimitée dans le temps (Il marchait depuis des heures) ; (4) imparfait de politesse (Je voulais vous demander…) ; (5) imparfait d'hypothèse après « si » (Si j'avais le temps, je lirais).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Verbes en -ier, -yer, -gner à nous/vous",
                explanation:
                  "Attention au -i- du radical + -i- de la terminaison : nous criions (crier), nous payions (payer), nous gagnions (gagner). Le double -i- est obligatoire même s'il ne s'entend pas.",
              },
            ],
          },
        ],
      },
      {
        id: "passe-simple",
        title: "Le passé simple de l'indicatif",
        badge: "Temps simple",
        blocks: [
          {
            kind: "table",
            caption: "Les quatre séries de terminaisons du passé simple",
            headers: ["Série", "Verbes concernés", "je", "tu", "il/elle", "nous", "vous", "ils/elles"],
            rows: [
              [
                "en -a",
                "1er groupe + aller",
                "-ai",
                "-as",
                "-a",
                "-âmes",
                "-âtes",
                "-èrent",
              ],
              [
                "en -i",
                "2e groupe + certains 3e groupe (partir, voir, faire…)",
                "-is",
                "-is",
                "-it",
                "-îmes",
                "-îtes",
                "-irent",
              ],
              [
                "en -u",
                "Certains 3e groupe (courir, lire, vouloir, boire…)",
                "-us",
                "-us",
                "-ut",
                "-ûmes",
                "-ûtes",
                "-urent",
              ],
              [
                "en -in",
                "Venir, tenir et leurs composés",
                "-ins",
                "-ins",
                "-int",
                "-înmes",
                "-întes",
                "-inrent",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Valeurs du passé simple : il exprime une action passée délimitée dans le temps, considérée comme achevée. C'est le temps du premier plan dans le récit écrit (événements, actions qui font avancer l'intrigue). Il s'oppose à l'imparfait (arrière-plan). Le passé simple est réservé à l'écrit littéraire ; à l'oral et à l'écrit courant, le passé composé le remplace.",
          },
          {
            kind: "example",
            sentence:
              "Le vent soufflait (imparfait = arrière-plan) quand soudain la porte claqua (passé simple = premier plan, événement ponctuel).",
            annotation:
              "Opposition imparfait/passé simple : durée vs ponctualité dans le récit",
          },
        ],
      },
      {
        id: "futur-simple",
        title: "Le futur simple de l'indicatif",
        badge: "Temps simple",
        blocks: [
          {
            kind: "table",
            caption: "Formation du futur simple",
            headers: ["Personne", "Terminaison", "Exemple (chanter)", "Exemple (finir)"],
            rows: [
              ["je", "-rai", "je chanterai", "je finirai"],
              ["tu", "-ras", "tu chanteras", "tu finiras"],
              ["il/elle", "-ra", "il chantera", "il finira"],
              ["nous", "-rons", "nous chanterons", "nous finirons"],
              ["vous", "-rez", "vous chanterez", "vous finirez"],
              ["ils/elles", "-ront", "ils chanteront", "ils finiront"],
            ],
          },
          {
            kind: "rule",
            content:
              "Le futur simple se forme sur l'infinitif du verbe + les terminaisons -rai, -ras, -ra, -rons, -rez, -ront (issues du verbe avoir). Pour les verbes du 3e groupe, le radical peut être irrégulier (j'irai, je ferai, je verrai, je saurai, je pourrai, je voudrai, j'enverrai). Ses valeurs : (1) action future certaine (Demain, il pleuvra) ; (2) promesse ou engagement (Je t'aiderai) ; (3) ordre atténué (Vous ferez cet exercice pour lundi).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Futur en -rai vs conditionnel en -rais",
                explanation:
                  "À la 1re personne du singulier, futur (je chanterai) et conditionnel (je chanterais) se prononcent souvent de la même façon. Pour distinguer : remplacer par « nous » — futur : nous chanterons ; conditionnel : nous chanterions.",
              },
              {
                label: "Verbes en -yer au futur",
                explanation:
                  "Les verbes en -oyer et -uyer changent le y en i devant un e muet : j'enverrai (envoyer), j'essuierai (essuyer). Les verbes en -ayer acceptent les deux formes : je paierai / je payerai.",
              },
            ],
          },
        ],
      },
      {
        id: "temps-composes",
        title: "Les temps composés de l'indicatif",
        badge: "Auxiliaire + PP",
        blocks: [
          {
            kind: "rule",
            content:
              "Les quatre temps composés de l'indicatif se forment avec l'auxiliaire être ou avoir conjugué au temps simple correspondant + le participe passé du verbe. Choix de l'auxiliaire : (1) avoir — majorité des verbes ; (2) être — verbes pronominaux + environ 14 verbes intransitifs de mouvement ou de changement d'état (aller, venir, partir, arriver, monter, descendre, naître, mourir, tomber, rester, entrer, sortir, retourner, passer dans certains sens).",
          },
          {
            kind: "table",
            caption: "Les quatre temps composés",
            headers: ["Temps composé", "Formation", "Exemple"],
            rows: [
              [
                "Passé composé",
                "Auxiliaire au présent + PP",
                "J'ai mangé / Je suis parti(e)",
              ],
              [
                "Plus-que-parfait",
                "Auxiliaire à l'imparfait + PP",
                "J'avais mangé / J'étais parti(e)",
              ],
              [
                "Passé antérieur",
                "Auxiliaire au passé simple + PP",
                "J'eus mangé / Je fus parti(e)",
              ],
              [
                "Futur antérieur",
                "Auxiliaire au futur simple + PP",
                "J'aurai mangé / Je serai parti(e)",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Quand il eut terminé son repas (passé antérieur = antériorité), il sortit (passé simple). — Quand j'aurai fini (futur antérieur = antériorité), je partirai (futur simple).",
            annotation:
              "Le temps composé marque l'antériorité par rapport au temps simple dans la même phrase",
          },
        ],
      },
      {
        id: "accord-participe-passe",
        title: "L'accord du participe passé",
        badge: "Piège majeur",
        blocks: [
          {
            kind: "rule",
            content:
              "Avec l'auxiliaire être : le participe passé s'accorde en genre et en nombre avec le sujet (Elle est partie, Ils sont venus). Avec l'auxiliaire avoir : le participe passé s'accorde avec le COD si celui-ci est placé avant le verbe (Les fleurs que j'ai cueillies). Sinon, il reste invariable (J'ai cueilli des fleurs).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "COD placé avant = accord obligatoire avec avoir",
                explanation:
                  "Le COD placé avant peut être un pronom relatif (que), un pronom personnel (les, la, l') ou un nom en phrase interrogative/exclamative. Exemple : Les lettres que j'ai écrites (que = COD, fém. pl. → écrites).",
                correction:
                  "Poser la question « quoi ? » ou « qui ? » après le verbe. Si la réponse est avant le verbe → accord.",
              },
              {
                label: "Verbes pronominaux : accord délicat",
                explanation:
                  "Avec un verbe pronominal, le PP s'accorde avec le sujet si le pronom réfléchi est COD (Elle s'est lavée). Il ne s'accorde pas si le pronom est COI (Elle s'est lavé les mains — « se » = COI, « les mains » = COD après le verbe).",
              },
            ],
          },
          {
            kind: "tip",
            text: "Méthode pour l'accord du PP avec avoir : (1) identifier le COD ; (2) est-il avant le verbe ? Si oui → accord en genre et nombre avec le COD. Si non ou s'il n'y a pas de COD → invariable.",
          },
        ],
      },
      {
        id: "valeurs-temps-recit",
        title: "Les temps dans le récit",
        badge: "Emplois textuels",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le récit au passé utilise deux systèmes temporels : (1) Le système du récit (coupé de la situation d'énonciation) : passé simple (premier plan, événements) + imparfait (arrière-plan, descriptions) + plus-que-parfait (antériorité). (2) Le système du discours (ancré dans la situation d'énonciation) : passé composé + présent + futur. Le passage d'un système à l'autre est un outil d'analyse textuelle essentiel au CRPE.",
          },
          {
            kind: "table",
            caption: "Système du récit vs système du discours",
            headers: ["Fonction", "Système du récit", "Système du discours"],
            rows: [
              ["Premier plan", "Passé simple", "Passé composé"],
              ["Arrière-plan", "Imparfait", "Imparfait"],
              ["Antériorité", "Plus-que-parfait", "Plus-que-parfait"],
              ["Postériorité", "Conditionnel (futur du passé)", "Futur simple"],
              ["Indicateurs temporels", "Ce jour-là, la veille, le lendemain", "Aujourd'hui, hier, demain"],
            ],
          },
          {
            kind: "example",
            sentence:
              "Récit : Ce jour-là, il faisait froid (arrière-plan). Marie sortit (premier plan) et se dirigea vers la gare (premier plan). Elle avait oublié son écharpe (antériorité). — Discours : Aujourd'hui, il fait froid. Marie est sortie et s'est dirigée vers la gare. Elle avait oublié son écharpe.",
            annotation: "Même histoire racontée dans les deux systèmes temporels",
          },
        ],
      },
      {
        id: "didactique-conjugaison",
        title: "Enseigner la conjugaison à l'école primaire",
        badge: "Didactique",
        collapsible: true,
        blocks: [
          {
            kind: "didactic",
            cycleEntries: [
              {
                cycle: "Cycle 2 (CP-CE1-CE2)",
                content:
                  "Mémorisation des formes les plus fréquentes : présent, imparfait et futur des verbes être, avoir et des verbes du 1er groupe. Passé composé avec avoir. Repérage des régularités (les terminaisons récurrentes). Lien oral/écrit : les marques inaudibles (-ent, -s).",
              },
              {
                cycle: "Cycle 3 (CM1-CM2-6e)",
                content:
                  "Étude systématique de tous les temps de l'indicatif. Passé simple aux 3es personnes. Temps composés et choix de l'auxiliaire. Accord du participe passé (règles de base). Valeurs des temps en contexte (récit, discours).",
              },
            ],
            studentErrors: [
              "Confusion des terminaisons homophones : -é / -er / -ais / -ait / -ez",
              "Oubli des marques inaudibles : *il chante → il chantes, *ils mange → ils mangent",
              "Régularisation abusive : *il prenda (sur le modèle de chanter → chantera)",
              "Confusion futur/conditionnel à la 1re personne : je chanterai / je chanterais",
            ],
            activities: [
              "Tris de formes verbales par temps et par personne",
              "Dictées négociées ciblant les terminaisons verbales",
              "Tableaux de conjugaison à compléter en cherchant les régularités",
              "Transposition de textes d'un temps à un autre",
              "Réécriture : changer le temps ou la personne d'un récit",
            ],
          },
        ],
      },
      {
        id: "related",
        title: "Fiches et exercices liés",
        blocks: [
          {
            kind: "related",
            fiches: [
              {
                label: "Concordance des temps (référence)",
                slug: "concordance-temps-guide-reference",
              },
              {
                label: "Imparfait vs passé simple (sprint)",
                slug: "imparfait-passe-simple-sprint",
              },
              {
                label: "Valeurs du présent (sprint)",
                slug: "valeurs-present-sprint",
              },
              {
                label: "Passé composé vs imparfait (sprint)",
                slug: "passe-compose-imparfait-sprint",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "L'indicatif comporte 8 temps : 4 simples (présent, imparfait, passé simple, futur) et 4 composés (passé composé, plus-que-parfait, passé antérieur, futur antérieur).",
      "Chaque temps composé exprime l'antériorité par rapport au temps simple correspondant. Il se forme avec l'auxiliaire (être/avoir) au temps simple + le participe passé.",
      "Le passé simple exprime les événements du premier plan dans un récit ; l'imparfait, l'arrière-plan (descriptions, habitudes, durée).",
      "Accord du PP avec être : accord avec le sujet. Avec avoir : accord avec le COD seulement s'il est placé avant le verbe.",
      "Deux systèmes temporels : récit (passé simple / imparfait / plus-que-parfait) vs discours (passé composé / présent / futur). Les repères temporels changent aussi (ce jour-là vs aujourd'hui).",
      "Au cycle 2, on mémorise les formes fréquentes ; au cycle 3, on systématise l'étude de tous les temps et on travaille les valeurs en contexte.",
    ],
    quiz: [
      {
        sentence:
          "L'indicatif comporte six temps : trois simples et trois composés.",
        isCorrect: false,
        explanation:
          "FAUX. L'indicatif comporte huit temps : quatre simples (présent, imparfait, passé simple, futur simple) et quatre composés (passé composé, plus-que-parfait, passé antérieur, futur antérieur).",
      },
      {
        sentence:
          "Le plus-que-parfait exprime une action antérieure à une autre action passée exprimée à l'imparfait ou au passé simple.",
        isCorrect: true,
        explanation:
          "VRAI. Le plus-que-parfait est le temps composé correspondant à l'imparfait. Il marque l'antériorité dans le passé : « Il avait fini (PQP) quand je suis arrivé (PC). »",
      },
      {
        sentence:
          "Au passé simple, tous les verbes du 3e groupe ont des terminaisons en -is, -is, -it, -îmes, -îtes, -irent.",
        isCorrect: false,
        explanation:
          "FAUX. Les verbes du 3e groupe se répartissent en trois séries au passé simple : en -i (partir → il partit), en -u (courir → il courut) et en -in (venir → il vint). Il n'y a pas de terminaison unique.",
      },
      {
        sentence:
          "Avec l'auxiliaire avoir, le participe passé s'accorde avec le COD uniquement lorsque celui-ci est placé avant le verbe.",
        isCorrect: true,
        explanation:
          "VRAI. « Les fleurs que j'ai cueillies » (COD « que » = les fleurs, placé avant → accord). « J'ai cueilli des fleurs » (COD après → invariable).",
      },
      {
        sentence:
          "Le passé simple et le passé composé ont exactement les mêmes valeurs et sont interchangeables dans tous les contextes.",
        isCorrect: false,
        explanation:
          "FAUX. Le passé simple appartient au système du récit (écrit littéraire, coupé de la situation d'énonciation) tandis que le passé composé appartient au système du discours (ancré dans le présent). Ils ne sont pas interchangeables : on n'utilise pas le passé simple à l'oral courant.",
      },
      {
        sentence:
          "Pour distinguer le futur (je chanterai) du conditionnel (je chanterais) à la 1re personne du singulier, on peut passer à la 1re personne du pluriel : nous chanterons (futur) / nous chanterions (conditionnel).",
        isCorrect: true,
        explanation:
          "VRAI. À la 1re personne du pluriel, la distinction est audible : -rons (futur) vs -rions (conditionnel). C'est une astuce essentielle pour éviter les confusions.",
      },
    ],
  },
};
