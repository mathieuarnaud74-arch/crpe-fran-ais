import type { Fiche } from "@/features/fiches/types";

export const participePasseCompletReference: Fiche = {
  id: "orthographe-participe-passe-complet-reference",
  slug: "participe-passe-tous-cas-accord",
  title: "Le participe passé : tous les cas d'accord",
  domaine: "orthographe",
  model: "reference",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "participe passé",
    "accord",
    "avoir",
    "être",
    "COD",
    "pronominal",
    "exceptions",
    "verbes impersonnels",
  ],
  notionsLiees: [
    "orthographe-participe-passe-sprint",
    "orthographe-participe-passe-avoir-sprint",
    "orthographe-participe-passe-operatoire",
    "grammaire-complements-objet-sprint",
    "grammaire-voix-passive-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'accord du participe passé est l'un des points les plus évalués au CRPE. Cette fiche récapitule de manière exhaustive tous les cas d'accord : avec être, avec avoir (et ses cas particuliers), les verbes pronominaux, les verbes impersonnels, et les exceptions les plus fréquemment testées. Elle s'appuie sur les règles de la grammaire normative et les rectifications de 1990 quand elles s'appliquent.",
    sections: [
      {
        id: "regle-etre",
        title: "Accord avec l'auxiliaire être",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Le participe passé employé avec l'auxiliaire ÊTRE s'accorde en genre et en nombre avec le SUJET du verbe.",
          },
          {
            kind: "example",
            sentence:
              "Elle est partie. — Elles sont parties. — Les lettres sont envoyées. — Le colis est arrivé.",
            annotation:
              "Dans chaque cas, le participe s'accorde avec le sujet : « elle » (fém. sing.), « elles » (fém. plur.), « les lettres » (fém. plur.), « le colis » (masc. sing.).",
          },
          {
            kind: "tip",
            text: "Cela concerne les verbes conjugués avec être (verbes de mouvement/changement d'état : aller, venir, partir, arriver, naître, mourir, rester, tomber, devenir…) ET les tournures passives (« la maison est construite »).",
          },
        ],
      },
      {
        id: "regle-avoir",
        title: "Accord avec l'auxiliaire avoir",
        badge: "Fondamental",
        blocks: [
          {
            kind: "rule",
            content:
              "Le participe passé employé avec l'auxiliaire AVOIR ne s'accorde jamais avec le sujet. Il s'accorde en genre et en nombre avec le COD (complément d'objet direct) si et seulement si celui-ci est placé AVANT le verbe.",
          },
          {
            kind: "table",
            caption: "Accord avec avoir — les 3 cas",
            headers: ["Situation", "Accord ?", "Exemple"],
            rows: [
              [
                "Pas de COD",
                "Non → invariable",
                "Elles ont dormi. (dormir = intransitif, pas de COD)",
              ],
              [
                "COD après le verbe",
                "Non → invariable",
                "Elle a mangé une pomme. (COD « une pomme » est après)",
              ],
              [
                "COD avant le verbe",
                "Oui → accord avec le COD",
                "La pomme qu'elle a mangée. (COD « que » = « la pomme », fém. sing., placé avant)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Ne pas confondre COD et COI",
                explanation:
                  "Seul le COD déclenche l'accord. Pas de COI : « Les filles à qui j'ai parlé » → invariable (« à qui » = COI, pas de COD). « Les filles que j'ai rencontrées » → accord (« que » = COD).",
              },
              {
                label: "Les pronoms COD placés avant",
                explanation:
                  "Les pronoms « le, la, les, l', que, me, te, se, nous, vous » peuvent être COD placé avant le verbe : « Je les ai vues » (les = fém. plur. → vues). « La lettre, je l'ai écrite » (l' = la lettre, fém. sing. → écrite).",
              },
            ],
          },
        ],
      },
      {
        id: "cas-particuliers-avoir",
        title: "Cas particuliers avec avoir",
        badge: "Pièges classiques",
        blocks: [
          {
            kind: "table",
            caption: "Cas particuliers — avoir",
            headers: ["Cas", "Règle", "Exemple"],
            rows: [
              [
                "Pronom « en » COD",
                "Traditionnellement invariable (toléré par les rectifications 1990)",
                "Des pommes, j'en ai mangé. (invariable malgré le sens pluriel)",
              ],
              [
                "COD = pronom « l' » neutre",
                "Invariable quand « l' » remplace une proposition ou une idée",
                "La situation est pire que je ne l'avais imaginé. (l' = le fait que…, neutre)",
              ],
              [
                "Verbes de mesure (coûter, peser, valoir, durer, mesurer, vivre…)",
                "Invariable quand le complément est un CC de mesure (pas un vrai COD)",
                "Les 80 kg qu'il a pesé. (= peser au sens « avoir un poids de », CC) MAIS : Les fruits qu'il a pesés. (= peser au sens « mettre sur la balance », COD)",
              ],
              [
                "PP suivi d'un infinitif",
                "Accord si le COD fait l'action de l'infinitif",
                "Les enfants que j'ai vus jouer. (les enfants jouent → accord) MAIS : Les chansons que j'ai entendu chanter. (les chansons ne chantent pas → invariable)",
              ],
              [
                "Fait + infinitif",
                "Toujours invariable (rectification officielle)",
                "Elle s'est fait couper les cheveux. Les robes qu'elle a fait coudre.",
              ],
              [
                "Laissé + infinitif",
                "Invariable recommandé (rectifications 1990)",
                "Elle s'est laissé tomber. (toléré invariable)",
              ],
            ],
          },
        ],
      },
      {
        id: "pronominaux",
        title: "Les verbes pronominaux",
        badge: "Difficulté majeure",
        blocks: [
          {
            kind: "rule",
            content:
              "Le participe passé des verbes pronominaux suit une règle en deux temps : (1) Identifier le type de pronominal. (2) Appliquer la règle appropriée. Le pronom réfléchi (se) peut être COD, COI, ou n'avoir aucune fonction analysable.",
          },
          {
            kind: "table",
            caption: "Accord des verbes pronominaux",
            headers: ["Type", "Règle", "Exemple"],
            rows: [
              [
                "Essentiellement pronominal (n'existe pas sans « se »)",
                "Accord avec le SUJET (comme avec être)",
                "Elles se sont enfuies. (s'enfuir n'existe qu'à la forme pronominale) — Elle s'est souvenue.",
              ],
              [
                "Sens passif",
                "Accord avec le SUJET",
                "Les pommes se sont bien vendues. (= ont été vendues)",
              ],
              [
                "Réfléchi ou réciproque — « se » est COD",
                "Accord avec le COD « se » (= sujet)",
                "Elle s'est lavée. (elle a lavé qui ? se = elle-même → accord) — Ils se sont regardés.",
              ],
              [
                "Réfléchi ou réciproque — « se » est COI",
                "Pas d'accord avec « se » ; accord avec le COD si placé avant",
                "Elle s'est lavé les mains. (elle a lavé quoi ? les mains, COD après → invariable) — Les mains qu'elle s'est lavées. (COD « que » avant → accord)",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Astuce pour les pronominaux réfléchis/réciproques : remplacer l'auxiliaire être par avoir et analyser la fonction de « se ». « Elle s'est lavée » → « Elle a lavé elle-même » → COD avant → accord. « Elle s'est lavé les mains » → « Elle a lavé les mains à elle-même » → « se » est COI → pas d'accord.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "se plaire, se complaire, se rire, se succéder, se ressembler, se nuire, se parler, se téléphoner, s'en vouloir",
                explanation:
                  "Ces verbes ont un pronom COI (on plaît À quelqu'un, on parle À quelqu'un…). Le PP est toujours invariable : « Elles se sont plu. » « Ils se sont succédé. » « Elles se sont parlé. »",
              },
            ],
          },
        ],
      },
      {
        id: "impersonnels-attribut",
        title: "Verbes impersonnels et PP attribut du COD",
        badge: "Compléments",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le participe passé des verbes impersonnels (il faut, il neige, il y a, il s'agit…) est toujours invariable. Le sujet réel, placé après le verbe, ne déclenche pas d'accord.",
          },
          {
            kind: "example",
            sentence:
              "Les efforts qu'il a fallu. — La chaleur qu'il a fait. — Les inondations qu'il y a eu.",
            annotation:
              "Dans chaque cas, « il » est sujet apparent (impersonnel). Le complément n'est pas un COD au sens strict. Le PP reste invariable.",
          },
          {
            kind: "rule",
            content:
              "Le participe passé employé comme attribut du COD s'accorde avec ce COD : « Je les ai trouvées sympathiques. » (les = COD fém. plur. → trouvées accord).",
          },
        ],
      },
      {
        id: "employe-sans-auxiliaire",
        title: "Participe passé employé sans auxiliaire",
        badge: "Complément",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le participe passé employé sans auxiliaire (comme un adjectif) s'accorde en genre et en nombre avec le nom qu'il qualifie.",
          },
          {
            kind: "example",
            sentence:
              "Les portes fermées. — Une lettre écrite à la main. — Surpris par la nouvelle, il resta muet.",
            annotation:
              "« fermées » s'accorde avec « portes » (fém. plur.), « écrite » avec « lettre » (fém. sing.), « surpris » avec « il » (masc. sing.).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Exceptions figées",
                explanation:
                  "Certaines expressions sont invariables par usage : « ci-joint », « ci-inclus », « vu », « excepté », « passé », « attendu », « y compris », « non compris », « étant donné » sont invariables quand placés AVANT le nom. Ils s'accordent quand placés APRÈS. Ex. : « Ci-joint les factures » (avant = invariable) vs « Les factures ci-jointes » (après = accord).",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Avec ÊTRE : accord avec le sujet. Avec AVOIR : accord avec le COD placé avant (jamais avec le sujet).",
      "Pronominaux : essentiellement pronominal ou sens passif → accord avec le sujet. Réfléchi/réciproque → analyser la fonction de « se » (COD ou COI).",
      "Fait + infinitif = toujours invariable. PP suivi d'un infinitif : accord si le COD fait l'action de l'infinitif.",
      "Verbes impersonnels (il faut, il y a…) → PP toujours invariable.",
      "Les verbes pronominaux avec « se » = COI (se plaire, se parler, se succéder…) → PP invariable.",
      "Sans auxiliaire, le PP s'accorde comme un adjectif avec le nom qu'il qualifie.",
    ],
    quiz: [
      {
        sentence:
          "Dans « Les fleurs que j'ai cueillies », le participe passé s'accorde avec « les fleurs ».",
        isCorrect: true,
        explanation:
          "VRAI. Auxiliaire avoir + COD « que » (= les fleurs, fém. plur.) placé AVANT le verbe → accord : « cueillies ».",
      },
      {
        sentence:
          "Dans « Elles se sont téléphoné hier », le participe passé doit prendre un -es.",
        isCorrect: false,
        explanation:
          "FAUX. On téléphone À quelqu'un → « se » est COI (pas COD). Le PP reste invariable : « Elles se sont téléphoné. »",
      },
      {
        sentence:
          "Dans « Elle s'est lavé les mains », « lavé » est invariable.",
        isCorrect: true,
        explanation:
          "VRAI. « Elle a lavé quoi ? Les mains » (COD après le verbe) et « à qui ? À elle-même » (se = COI). Le COD est après → pas d'accord.",
      },
      {
        sentence:
          "Dans « La chaleur qu'il a fait cet été », « fait » doit s'accorder au féminin.",
        isCorrect: false,
        explanation:
          "FAUX. « Il fait » est impersonnel (sujet apparent « il »). Le PP des verbes impersonnels est toujours invariable : « la chaleur qu'il a fait ».",
      },
      {
        sentence:
          "Dans « Les actrices que j'ai vues jouer », l'accord est correct.",
        isCorrect: true,
        explanation:
          "VRAI. PP + infinitif : on accorde si le COD (les actrices) fait l'action de l'infinitif (ce sont les actrices qui jouent). Donc « vues » s'accorde au fém. plur.",
      },
      {
        sentence:
          "« Les robes qu'elle a fait coudre » — « fait » devrait s'écrire « faites ».",
        isCorrect: false,
        explanation:
          "FAUX. « Fait » suivi d'un infinitif est toujours invariable. C'est une règle absolue (confirmée par les rectifications de 1990). On écrit : « elle a fait coudre ».",
      },
      {
        sentence:
          "Dans « Elles se sont enfuies », le participe s'accorde avec le sujet.",
        isCorrect: true,
        explanation:
          "VRAI. « S'enfuir » est un verbe essentiellement pronominal (il n'existe pas sans « se »). Le PP s'accorde avec le sujet : « elles » → « enfuies ».",
      },
      {
        sentence:
          "Le pronom « en » déclenche l'accord du participe passé avec avoir.",
        isCorrect: false,
        explanation:
          "FAUX. Traditionnellement, le pronom « en » ne déclenche pas l'accord : « Des gâteaux, j'en ai mangé. » (invariable). Cette règle est maintenue par l'usage courant et tolérée par les rectifications.",
      },
    ],
  },
};
