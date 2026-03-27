import type { Fiche } from "@/features/fiches/types";

export const productionEcritsReference: Fiche = {
  id: "didactique-production-ecrits-reference",
  slug: "production-ecrits-reference",
  title: "La production d'écrits — didactique",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_francais",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "production",
    "écrits",
    "rédaction",
    "cycle 3",
    "processus",
    "brouillon",
  ],
  notionsLiees: [
    "didactique-production-ecrite-sprint",
    "didactique-ecriture-cycle2-sprint",
    "didactique-programmes-cycles-reference",
  ],
  exercicesAssocies: ["did_production_ecrite_cycle23"],
  content: {
    model: "reference",
    intro:
      "La production d'écrits est une compétence transversale majeure des programmes de français. Elle ne se réduit pas à la rédaction finale : elle mobilise un processus rédactionnel complexe (planification, mise en texte, révision) que l'enseignant doit accompagner explicitement. Cette fiche synthétise le cadre théorique de référence (modèle de Hayes & Flower), les genres d'écrits au programme, les dispositifs d'étayage et les attendus institutionnels pour le CRPE.",
    sections: [
      {
        id: "processus-redactionnel",
        title: "Le processus rédactionnel",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "Le modèle de Hayes & Flower (1980) décrit trois processus cognitifs en interaction lors de la production d'écrits : la planification (générer des idées, les organiser, fixer des buts), la mise en texte (traduire les idées en phrases, choisir le lexique, gérer la syntaxe et l'orthographe) et la révision (relire, évaluer, corriger). Ces trois processus ne sont pas linéaires : le scripteur expérimenté navigue constamment entre eux. L'élève novice, lui, tend à écrire sans planifier ni réviser — d'où la nécessité d'un enseignement explicite de chaque composante.",
            linguisticLogic:
              "La surcharge cognitive est le principal obstacle chez l'apprenti scripteur : gérer simultanément le contenu, la syntaxe, l'orthographe et la graphie épuise la mémoire de travail. L'automatisation du geste graphique et de l'orthographe libère des ressources pour la planification et la révision.",
          },
          {
            kind: "example",
            sentence:
              "Séance de planification en CE2 : les élèves utilisent une carte mentale pour organiser les idées de leur récit (personnage, lieu, problème, résolution) avant de rédiger.",
            annotation:
              "La planification externalisée (carte mentale, liste, schéma narratif) réduit la charge cognitive et améliore la cohérence du texte produit.",
          },
        ],
      },
      {
        id: "genres-ecrits-cycle3",
        title: "Les genres d'écrits au cycle 3",
        badge: "Programmes",
        blocks: [
          {
            kind: "table",
            caption:
              "Principaux genres d'écrits travaillés au cycle 3 (programmes 2020)",
            headers: [
              "Genre",
              "Caractéristiques",
              "Exemples de productions",
            ],
            rows: [
              [
                "Narratif",
                "Raconte une histoire avec un schéma narratif (situation initiale, élément perturbateur, péripéties, résolution, situation finale)",
                "Conte, nouvelle, récit d'aventure, récit de vie",
              ],
              [
                "Descriptif",
                "Représente un lieu, un personnage, un objet avec précision ; utilise des expansions du nom, des adjectifs, des comparaisons",
                "Portrait, description de paysage, fiche documentaire",
              ],
              [
                "Argumentatif",
                "Défend une thèse avec des arguments et des exemples ; utilise des connecteurs logiques (car, donc, en revanche)",
                "Lettre de demande, essai, compte rendu de débat",
              ],
              [
                "Explicatif",
                "Fait comprendre un phénomène, un fonctionnement ; organisation logique (cause, conséquence, chronologie)",
                "Compte rendu d'expérience, article encyclopédique, exposé écrit",
              ],
              [
                "Poétique",
                "Joue sur la langue, le rythme, les sonorités, les images ; exploite les figures de style",
                "Poème à forme fixe, haïku, calligramme, écriture à contraintes",
              ],
            ],
          },
        ],
      },
      {
        id: "etayage-differenciation",
        title: "Étayage et différenciation",
        badge: "Pédagogie",
        blocks: [
          {
            kind: "rule",
            content:
              "Le brouillon est un outil d'apprentissage central dans l'enseignement de la production d'écrits. Il ne doit pas être perçu comme une version « sale » du texte final, mais comme un espace de travail où l'élève planifie, essaie, rature et réorganise. L'enseignant valorise le brouillon en le rendant visible (affichage, comparaison avant/après) et en enseignant explicitement son usage (annoter, barrer, déplacer, ajouter).",
            watchout:
              "Ne pas confondre brouillon et copie au propre. Le brouillon est un processus de pensée écrite ; la copie au propre est un produit fini. Exiger un brouillon « propre » est contradictoire et décourage les élèves fragiles.",
          },
          {
            kind: "rule",
            content:
              "L'écriture collaborative (en binôme ou en petit groupe) est un dispositif d'étayage efficace : les élèves négocient le contenu, la formulation et l'orthographe, ce qui rend visible le processus rédactionnel. La dictée à l'adulte (cycle 1 et début de cycle 2) est une forme d'écriture collaborative où l'adulte prend en charge la mise en texte pendant que l'élève se concentre sur la planification.",
          },
          {
            kind: "tip",
            text: "La grille de relecture critériée (construite avec les élèves) est un outil de révision incontournable. Elle liste les critères de réussite du texte attendu (cohérence, ponctuation, orthographe, respect du genre) et permet l'autoévaluation et la coévaluation entre pairs.",
          },
        ],
      },
      {
        id: "ecriture-sous-contraintes",
        title: "Écriture sous contraintes",
        badge: "Créativité",
        collapsible: true,
        blocks: [
          {
            kind: "example",
            sentence:
              "Lipogramme : écrire un texte sans utiliser la lettre « e » (exercice inspiré de La Disparition de Georges Perec).",
            annotation:
              "L'écriture sous contrainte formelle force l'élève à chercher des synonymes, à reformuler, à explorer le lexique. Elle développe la conscience linguistique et la flexibilité syntaxique.",
          },
          {
            kind: "example",
            sentence:
              "Cadavre exquis : chaque élève écrit une partie de phrase sans connaître ce qu'ont écrit les autres, puis on lit l'ensemble.",
            annotation:
              "Hérité du surréalisme, ce dispositif ludique travaille la syntaxe (chaque segment doit être grammaticalement correct) et crée un effet de surprise motivant pour les élèves réticents à écrire.",
          },
          {
            kind: "example",
            sentence:
              "Écriture à partir d'une structure imposée : réécrire un conte en changeant le point de vue (le loup raconte l'histoire des Trois Petits Cochons).",
            annotation:
              "Ce type de contrainte narrative travaille la compréhension du texte source, la notion de point de vue et l'énonciation (pronoms, temps verbaux, modalisateurs). C'est un dispositif fréquemment proposé au CRPE.",
          },
        ],
      },
      {
        id: "programmes-attendus",
        title: "Programmes et attendus",
        badge: "Institutionnel",
        blocks: [
          {
            kind: "rule",
            content:
              "Les programmes de cycle 3 (2020, consolidés 2024) fixent des attendus explicites pour la production d'écrits : écrire un texte d'une à deux pages adapté à son destinataire ; après révision, obtenir un texte organisé et cohérent, à la graphie lisible et respectant les régularités orthographiques étudiées en classe. Les repères Éduscol insistent sur la fréquence de l'écriture (écrire quotidiennement), la diversité des genres pratiqués et l'articulation systématique entre lecture et écriture.",
            watchout:
              "Les programmes ne fixent pas un nombre de mots minimal par texte. L'attendu porte sur la qualité (cohérence, correction, adéquation au genre) et non sur la quantité. Un texte court mais maîtrisé vaut mieux qu'un texte long truffé d'erreurs.",
          },
          {
            kind: "rule",
            content:
              "Le lien lecture-écriture est un principe structurant : les textes lus en classe servent de modèles pour l'écriture (repérage des caractéristiques du genre, du lexique, des structures syntaxiques). Inversement, l'écriture renforce la compréhension en lecture (l'élève qui a écrit un récit policier comprend mieux les ressorts du genre).",
          },
        ],
      },
    ],
    keyPoints: [
      "Le modèle de Hayes & Flower identifie trois processus rédactionnels en interaction : planification, mise en texte, révision. L'élève novice doit apprendre explicitement à les mobiliser.",
      "La surcharge cognitive est l'obstacle principal de l'apprenti scripteur. Automatiser le geste graphique et l'orthographe libère des ressources pour la planification et la révision.",
      "Le brouillon est un outil d'apprentissage, pas une version « sale » du texte. Son usage s'enseigne explicitement (annoter, rayer, réorganiser).",
      "Cinq genres d'écrits sont travaillés au cycle 3 : narratif, descriptif, argumentatif, explicatif, poétique. Chacun possède des caractéristiques linguistiques identifiables.",
      "L'écriture collaborative et la grille de relecture critériée sont des dispositifs d'étayage essentiels pour la différenciation.",
      "Les programmes insistent sur l'écriture quotidienne, la diversité des genres et l'articulation lecture-écriture comme principe structurant.",
    ],
    quiz: [
      {
        sentence:
          "Le modèle de Hayes & Flower décrit un processus linéaire : on planifie d'abord, on écrit ensuite, on révise à la fin.",
        isCorrect: false,
        explanation:
          "FAUX. Les trois processus (planification, mise en texte, révision) sont récursifs et interagissent en permanence. Le scripteur expérimenté révise en cours d'écriture et replanifie après relecture. C'est précisément cette non-linéarité que l'élève doit apprendre à maîtriser.",
      },
      {
        sentence:
          "La dictée à l'adulte est un dispositif qui permet à l'élève de se concentrer sur la planification du contenu pendant que l'adulte assure la mise en texte.",
        isCorrect: true,
        explanation:
          "VRAI. La dictée à l'adulte (Chartier, Clesse, Hébrard) libère l'élève de la surcharge liée au geste graphique et à l'orthographe, lui permettant de travailler la construction du discours. C'est un dispositif central en cycle 1 et début de cycle 2.",
      },
      {
        sentence:
          "L'écriture sous contrainte (lipogramme, cadavre exquis) est un exercice ludique sans réel intérêt didactique pour l'enseignement du français.",
        isCorrect: false,
        explanation:
          "FAUX. L'écriture sous contrainte développe la conscience linguistique, la flexibilité lexicale et syntaxique, et la motivation des élèves réticents. Les travaux de l'OuLiPo (Queneau, Perec) et leur transposition didactique sont reconnus par les programmes comme des leviers efficaces.",
      },
      {
        sentence:
          "Les programmes de cycle 3 préconisent d'écrire quotidiennement et de pratiquer une diversité de genres d'écrits.",
        isCorrect: true,
        explanation:
          "VRAI. La fréquence et la diversité sont deux principes structurants des programmes. Les repères Éduscol insistent sur l'écriture quotidienne (écrits courts et écrits longs alternés) et la pratique de genres variés (narratif, argumentatif, explicatif, poétique, descriptif).",
      },
      {
        sentence:
          "Le brouillon doit être propre et lisible pour être utile à l'élève.",
        isCorrect: false,
        explanation:
          "FAUX. Le brouillon est un espace de travail où l'élève rature, ajoute, déplace, annote. Exiger un brouillon propre revient à en faire une première copie au propre, ce qui détourne l'élève du véritable travail de planification et de révision.",
      },
    ],
  },
};
