import type { Fiche } from "@/features/fiches/types";

export const formationMotsReference: Fiche = {
  id: "lexique-formation-mots-reference",
  slug: "formation-mots-guide-reference",
  title: "La formation des mots : guide de référence",
  domaine: "lexique",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "formation des mots",
    "dérivation",
    "préfixe",
    "suffixe",
    "composition",
    "famille de mots",
    "néologisme",
    "emprunt",
    "troncation",
    "siglaison",
  ],
  notionsLiees: [
    "lexique-formation-mots-sprint",
    "lexique-familles-mots-sprint",
    "analyse-langue-derivation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La formation des mots est un chapitre central du lexique au CRPE. Le français enrichit son vocabulaire par quatre grands procédés : la dérivation (ajout de préfixes et suffixes à un radical), la composition (association de mots existants), l'emprunt à d'autres langues et les créations internes (siglaison, troncation, néologisme). Comprendre ces mécanismes permet d'analyser la structure des mots, de construire des familles de mots et d'enrichir le vocabulaire des élèves de façon raisonnée.",
    sections: [
      {
        id: "derivation",
        title: "La dérivation",
        badge: "Procédé majeur",
        blocks: [
          {
            kind: "rule",
            content:
              "La dérivation consiste à former un mot nouveau en ajoutant un ou plusieurs affixes (préfixe et/ou suffixe) à un radical (ou base). Le mot obtenu est un dérivé. Exemples : faire → dé-faire (préfixation), chant → chant-eur (suffixation), dé-charg-ement (préfixation + suffixation = dérivation parasynthétique). La dérivation est le procédé de formation le plus productif du français.",
          },
          {
            kind: "rule",
            content:
              "Le radical (ou base) est la partie du mot qui porte le sens fondamental. Il peut subir des variations (allomorphes) : mer → marin (rad. mar-), fleur → floral (rad. flor-). Les variations de radical s'expliquent souvent par l'étymologie latine ou grecque.",
            linguisticLogic:
              "On distingue le radical populaire (hérité du latin parlé : eau) du radical savant (emprunté au latin écrit : aqu-atique). Les deux coexistent dans la même famille de mots.",
          },
        ],
      },
      {
        id: "prefixes",
        title: "Les préfixes",
        badge: "Avant le radical",
        blocks: [
          {
            kind: "rule",
            content:
              "Le préfixe se place avant le radical. Il modifie le sens du mot sans changer sa classe grammaticale : faire (verbe) → défaire (verbe), heureux (adj.) → malheureux (adj.). Les préfixes expriment des nuances de sens : négation, opposition, répétition, intensité, localisation…",
          },
          {
            kind: "table",
            caption: "Les préfixes les plus courants et leur sens",
            headers: ["Préfixe", "Sens", "Exemples"],
            rows: [
              ["dé- / dés- / dis-", "Négation, contraire, séparation", "défaire, désordre, disparaître"],
              ["re- / ré- / r-", "Répétition, retour en arrière", "refaire, réécrire, rouvrir"],
              ["in- / im- / il- / ir-", "Négation, contraire", "injuste, impossible, illégal, irrégulier"],
              ["pré-", "Antériorité", "prévoir, préhistoire, prénommer"],
              ["sur- / super-", "Au-dessus, excès", "surcharger, superposer"],
              ["sous- / sub-", "En dessous, insuffisance", "sous-estimer, subdiviser"],
              ["anti-", "Opposition, contre", "antivol, anticonstitutionnel"],
              ["co- / con- / com-", "Avec, ensemble", "coéquipier, concitoyen, compatriote"],
              ["trans- / tra-", "À travers, au-delà", "transporter, traverser"],
              ["extra-", "En dehors de, très", "extraordinaire, extraterrestre"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Préfixe in- : assimilation",
                explanation:
                  "Le préfixe in- (négatif) s'adapte à la consonne qui suit : in- devant voyelle ou consonne générale (inutile, injuste), im- devant m, b, p (impossible, imbuvable), il- devant l (illégal), ir- devant r (irrégulier). Ce phénomène s'appelle l'assimilation.",
              },
            ],
          },
        ],
      },
      {
        id: "suffixes",
        title: "Les suffixes",
        badge: "Après le radical",
        blocks: [
          {
            kind: "rule",
            content:
              "Le suffixe se place après le radical. Contrairement au préfixe, il change généralement la classe grammaticale du mot : chanter (verbe) → chanteur (nom), nation (nom) → national (adjectif), lent (adjectif) → lentement (adverbe). Le suffixe apporte aussi une nuance de sens (agent, action, qualité, diminutif…).",
          },
          {
            kind: "table",
            caption: "Les suffixes les plus courants classés par catégorie",
            headers: ["Catégorie", "Suffixe", "Sens / fonction", "Exemples"],
            rows: [
              [
                "Nom d'agent",
                "-eur / -euse, -teur / -trice, -ier / -ière",
                "Celui/celle qui fait l'action",
                "chanteur, actrice, boulanger",
              ],
              [
                "Nom d'action",
                "-tion / -ation, -ment, -age, -ure",
                "L'action de…",
                "formation, changement, lavage, coupure",
              ],
              [
                "Nom de qualité",
                "-ité / -eté, -eur, -esse, -ance / -ence",
                "La qualité de…",
                "bonté, grandeur, sagesse, prudence",
              ],
              [
                "Adjectif",
                "-able / -ible, -eux / -euse, -al / -ale, -if / -ive",
                "Qui peut être… / qui a la qualité de…",
                "mangeable, joyeux, national, actif",
              ],
              [
                "Diminutif",
                "-et / -ette, -on / -onne, -ot / -otte",
                "Petitesse, affection",
                "maisonnette, chaton, îlot",
              ],
              [
                "Adverbe",
                "-ment",
                "De manière…",
                "lentement, joyeusement, prudemment",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Pour former un adverbe en -ment : prendre l'adjectif au féminin + -ment (lent → lente → lentement). Exceptions : les adjectifs en -ant donnent -amment (puissant → puissamment), ceux en -ent donnent -emment (prudent → prudemment).",
          },
        ],
      },
      {
        id: "familles-mots",
        title: "Les familles de mots",
        badge: "Radical commun",
        blocks: [
          {
            kind: "rule",
            content:
              "Une famille de mots regroupe tous les mots formés à partir d'un même radical. Ils partagent un sens commun. Exemples : terre, terrain, terrasse, atterrir, déterrer, terrestre, souterrain. La connaissance des familles de mots aide à comprendre les mots inconnus, à orthographier les lettres muettes (bavard → bavarder, donc -d final) et à enrichir le vocabulaire.",
          },
          {
            kind: "example",
            sentence:
              "Famille du mot « fleur » : fleur, fleurir, fleuriste, floraison, florilège, effleuré, déflorer. — Radical populaire : fleur- ; radical savant : flor-.",
            annotation: "Une même famille peut contenir un radical populaire et un radical savant d'origine latine",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Faux amis morphologiques",
                explanation:
                  "Attention aux mots qui partagent des lettres mais pas le même radical : « terrible » n'est pas de la famille de « terre » (terrible vient de terrere = effrayer en latin). Toujours vérifier le lien de sens, pas seulement la ressemblance formelle.",
              },
            ],
          },
        ],
      },
      {
        id: "composition",
        title: "La composition",
        badge: "Association de mots",
        blocks: [
          {
            kind: "rule",
            content:
              "La composition consiste à former un mot nouveau en associant deux ou plusieurs mots existants. On distingue : (1) la composition populaire — mots français assemblés avec ou sans trait d'union (porte-monnaie, pomme de terre, chou-fleur) ; (2) la composition savante — éléments d'origine grecque ou latine (téléphone = télé- « loin » + -phone « voix », biologie = bio- « vie » + -logie « science »).",
          },
          {
            kind: "table",
            caption: "Éléments grecs et latins les plus fréquents en composition savante",
            headers: ["Élément", "Origine", "Sens", "Exemples"],
            rows: [
              ["télé-", "Grec", "Loin", "téléphone, télévision, télécommande"],
              ["bio-", "Grec", "Vie", "biologie, biodiversité, biographie"],
              ["-graphe / -graphie", "Grec", "Écrire", "orthographe, géographie, photographe"],
              ["-logie / -logue", "Grec", "Science, discours", "zoologie, dialogue, psychologue"],
              ["poly-", "Grec", "Plusieurs", "polygone, polyglotte, polychrome"],
              ["mono-", "Grec", "Un seul", "monologue, monosyllabe, monopole"],
              ["aqua- / hydro-", "Latin / Grec", "Eau", "aquarium, aquatique, hydraulique"],
              ["-vore", "Latin", "Manger", "carnivore, herbivore, omnivore"],
              ["-cide", "Latin", "Tuer", "insecticide, homicide, herbicide"],
              ["-phile / -phobe", "Grec", "Aimer / craindre", "bibliophile, claustrophobe"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Pluriel des mots composés",
                explanation:
                  "Règle traditionnelle : seuls les noms et adjectifs prennent la marque du pluriel dans un mot composé. Les verbes, adverbes et prépositions restent invariables. Exemple : des porte-clés (verbe + nom = seul le nom varie), des chefs-d'œuvre (nom + prép. + nom = seul le 1er nom varie). La réforme de 1990 simplifie : trait d'union + s au 2nd élément (des porte-clés).",
              },
            ],
          },
        ],
      },
      {
        id: "autres-procedes",
        title: "Autres procédés de formation",
        badge: "Emprunt, siglaison, troncation",
        blocks: [
          {
            kind: "rule",
            content:
              "Outre la dérivation et la composition, le français crée des mots par : (1) emprunt — adoption d'un mot étranger (parking, pizza, handball, algèbre) ; (2) siglaison — mot formé des initiales (SNCF, ONU, sida) ; (3) acronymie — sigle prononcé comme un mot (sida, ovni, radar) ; (4) troncation — raccourcissement d'un mot (métro < métropolitain, prof < professeur, bus < autobus) ; (5) mot-valise — fusion de deux mots (courriel = courrier + électronique, franglais = français + anglais).",
          },
          {
            kind: "table",
            caption: "Récapitulatif des procédés de formation des mots",
            headers: ["Procédé", "Mécanisme", "Exemple"],
            rows: [
              ["Dérivation (préfixation)", "Préfixe + radical", "in- + juste = injuste"],
              ["Dérivation (suffixation)", "Radical + suffixe", "chant- + -eur = chanteur"],
              ["Composition populaire", "Mot + mot (français)", "porte-monnaie, pomme de terre"],
              ["Composition savante", "Élément grec/latin + élément grec/latin", "téléphone, biologie"],
              ["Emprunt", "Adoption d'un mot étranger", "parking (anglais), piano (italien)"],
              ["Siglaison / acronymie", "Initiales des mots d'un groupe", "ONU, sida, laser"],
              ["Troncation", "Raccourcissement", "métro, vélo, pub"],
              ["Mot-valise", "Fusion de deux mots", "courriel, informatique"],
            ],
          },
          {
            kind: "example",
            sentence:
              "Le mot « informatique » est un mot-valise créé par Philippe Dreyfus en 1962 à partir de « information » et « automatique ». Le mot « courriel » (courrier + électronique) est un néologisme québécois adopté officiellement en France.",
            annotation: "Les mots-valises et néologismes enrichissent activement le français contemporain",
          },
        ],
      },
      {
        id: "exercices-crpe",
        title: "Types d'exercices au CRPE",
        badge: "Méthodologie",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Au CRPE, les questions sur la formation des mots prennent plusieurs formes : (1) Analyser la structure d'un mot (identifier radical, préfixe, suffixe) ; (2) Constituer une famille de mots à partir d'un radical ; (3) Expliquer le sens d'un mot inconnu grâce à sa morphologie ; (4) Identifier le procédé de formation (dérivation, composition, emprunt…) ; (5) Proposer une séquence didactique sur les familles de mots ou la dérivation.",
          },
          {
            kind: "tip",
            text: "Pour analyser un mot dérivé au CRPE : (1) identifier le radical (partie commune à la famille de mots) ; (2) isoler le préfixe (avant le radical) et le suffixe (après le radical) ; (3) donner le sens de chaque élément ; (4) expliquer comment le sens du mot résulte de la combinaison de ces éléments.",
          },
          {
            kind: "example",
            sentence:
              "Analyse du mot « inoubliable » : radical = oubli (du verbe oublier) ; préfixe in- = négation ; suffixe -able = « qui peut être » → inoubliable = « qui ne peut pas être oublié ».",
            annotation: "Décomposition morphologique typique demandée au CRPE",
          },
        ],
      },
      {
        id: "didactique-formation-mots",
        title: "Enseigner la formation des mots",
        badge: "Didactique",
        collapsible: true,
        blocks: [
          {
            kind: "didactic",
            cycleEntries: [
              {
                cycle: "Cycle 2 (CP-CE1-CE2)",
                content:
                  "Observation intuitive des familles de mots : regrouper des mots qui « vont ensemble » (dent, dentiste, dentier). Repérage de quelques préfixes et suffixes fréquents (re-, dé-, -eur, -ette). Utiliser les familles de mots pour orthographier les lettres muettes (bavard → bavarder).",
              },
              {
                cycle: "Cycle 3 (CM1-CM2-6e)",
                content:
                  "Étude systématique de la dérivation : analyse de la structure des mots (radical, préfixe, suffixe). Composition populaire et savante. Familles de mots avec radical savant (aqua-/eau, flor-/fleur). Utilisation du dictionnaire pour vérifier l'étymologie. Enrichissement du vocabulaire par la morphologie.",
              },
            ],
            studentErrors: [
              "Confondre des mots formellement proches mais de familles différentes (terrible / terre)",
              "Ne pas repérer le radical quand il varie (mer / marin / maritime)",
              "Inventer des dérivés qui n'existent pas (*marcheur au lieu de marchand pour « celui qui marche vers le marché »)",
              "Confondre préfixe et première syllabe (le « re- » de « renard » n'est pas un préfixe)",
            ],
            activities: [
              "Chasse aux mots de la même famille dans un texte ou le dictionnaire",
              "Jeu des préfixes : combien de mots peut-on former avec dé-, re-, in- + un même radical ?",
              "Décomposition de mots en boîtes (préfixe | radical | suffixe) avec affichage collectif",
              "Devinettes étymologiques : que signifie « aqueduc » ? (aqua- = eau + -duc = conduire)",
              "Production d'écrits : inventer un mot-valise et rédiger sa définition de dictionnaire",
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
                label: "Formation des mots (sprint)",
                slug: "formation-mots-sprint",
              },
              {
                label: "Familles de mots (sprint)",
                slug: "familles-mots-sprint",
              },
              {
                label: "Dérivation — analyse de langue (sprint)",
                slug: "derivation-sprint",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Quatre grands procédés de formation des mots : dérivation (préfixe/suffixe), composition (populaire/savante), emprunt et créations internes (siglaison, troncation, mot-valise).",
      "La dérivation est le procédé le plus productif. Le préfixe modifie le sens sans changer la classe grammaticale ; le suffixe change généralement la classe grammaticale.",
      "Une famille de mots regroupe tous les dérivés d'un même radical. Attention aux variations de radical (radical populaire vs radical savant : eau / aqu-).",
      "La composition savante utilise des éléments grecs et latins (télé-, bio-, -graphie, -logie…) très productifs en français scientifique et technique.",
      "Au CRPE, savoir analyser la structure d'un mot (radical + affixes), constituer des familles et expliquer le sens par la morphologie.",
      "En classe, travailler les familles de mots dès le cycle 2 pour enrichir le vocabulaire et aider à l'orthographe (lettres muettes).",
    ],
    quiz: [
      {
        sentence:
          "La dérivation consiste à associer deux mots existants pour en former un nouveau, comme « porte-monnaie ».",
        isCorrect: false,
        explanation:
          "FAUX. C'est la définition de la composition. La dérivation consiste à ajouter un préfixe et/ou un suffixe à un radical : chant → chant-eur (suffixation), faire → dé-faire (préfixation).",
      },
      {
        sentence:
          "Le préfixe modifie le sens du mot sans changer sa classe grammaticale : « heureux » (adjectif) → « malheureux » (adjectif).",
        isCorrect: true,
        explanation:
          "VRAI. Le préfixe mal- ajoute un sens négatif mais le mot reste un adjectif. C'est une propriété générale des préfixes, contrairement aux suffixes qui changent souvent la catégorie.",
      },
      {
        sentence:
          "Les mots « terrible » et « terrasse » appartiennent à la même famille de mots car ils commencent tous deux par « terr- ».",
        isCorrect: false,
        explanation:
          "FAUX. « Terrasse » vient de « terre » (latin terra), mais « terrible » vient de « terrere » (effrayer en latin). Ils ne partagent pas le même radical ni le même sens. Il faut vérifier le lien de sens, pas seulement la ressemblance formelle.",
      },
      {
        sentence:
          "Un mot-valise est formé par la fusion de deux mots existants, comme « courriel » (courrier + électronique).",
        isCorrect: true,
        explanation:
          "VRAI. Le mot-valise combine des fragments de deux mots pour en créer un nouveau. Autres exemples : informatique (information + automatique), franglais (français + anglais).",
      },
      {
        sentence:
          "Le suffixe -ment permet de former des adverbes à partir d'adjectifs : « lent » → « lentement ».",
        isCorrect: true,
        explanation:
          "VRAI. Le suffixe -ment s'ajoute généralement à la forme féminine de l'adjectif : lent → lente → lentement. Exceptions pour les adjectifs en -ant (puissamment) et -ent (prudemment).",
      },
      {
        sentence:
          "Dans le mot « inoubliable », le préfixe est « in- » (négation) et le suffixe est « -able » (possibilité), donc le mot signifie « qui ne peut pas être oublié ».",
        isCorrect: true,
        explanation:
          "VRAI. Analyse morphologique : in- (préfixe négatif) + oubli (radical) + -able (suffixe = « qui peut être ») → « qui ne peut pas être oublié ». C'est ce type de décomposition qui est attendu au CRPE.",
      },
    ],
  },
};
