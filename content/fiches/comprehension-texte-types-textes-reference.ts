import type { Fiche } from "@/features/fiches/types";

export const typesTextesReference: Fiche = {
  id: "comprehension-texte-types-textes-reference",
  slug: "types-textes-guide-reference",
  title: "Les types de textes : guide de référence",
  domaine: "comprehension_texte",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "types de textes",
    "narratif",
    "descriptif",
    "argumentatif",
    "explicatif",
    "injonctif",
    "dialogal",
    "genre textuel",
    "typologie",
  ],
  notionsLiees: [
    "comprehension-texte-argumentatif-sprint",
    "comprehension-texte-schema-narratif-sprint",
    "comprehension-texte-documentaire-sprint",
    "comprehension-texte-coherence-textuelle-sprint",
  ],
  exercicesAssocies: ["cpt_types_textes_caracteristiques", "tri_types_textes"],
  content: {
    model: "reference",
    intro:
      "La typologie des textes est un outil d'analyse fondamental au CRPE. Elle permet de classer les textes selon leur intention communicative dominante : raconter, décrire, argumenter, expliquer, ordonner ou dialoguer. Adam (1992) distingue cinq séquences textuelles (narrative, descriptive, argumentative, explicative, dialogale), auxquelles on ajoute traditionnellement le type injonctif. Un même texte peut combiner plusieurs types, mais l'un domine généralement. Cette fiche présente les caractéristiques linguistiques de chaque type, les critères de reconnaissance et les pièges fréquents.",
    sections: [
      {
        id: "narratif",
        title: "Le texte narratif",
        badge: "Raconter",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte narratif raconte une histoire, réelle ou fictive, avec une progression temporelle. Il suit généralement le schéma narratif (situation initiale → élément perturbateur → péripéties → résolution → situation finale). Il se caractérise par la présence de personnages, d'un cadre spatio-temporel et d'une transformation entre le début et la fin.",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte narratif",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Temps verbaux",
                "Passé simple / imparfait (récit) ou passé composé / présent (discours). Plus-que-parfait pour les retours en arrière.",
              ],
              [
                "Connecteurs",
                "Temporels : d'abord, puis, ensuite, soudain, enfin, un jour, le lendemain…",
              ],
              [
                "Pronoms",
                "3e personne (il, elle) ou 1re personne (je) selon le point de vue narratif",
              ],
              [
                "Champs lexicaux",
                "Actions, sentiments, lieux, temps",
              ],
              [
                "Genres associés",
                "Roman, conte, nouvelle, fable, récit autobiographique, fait divers",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Un matin, le petit prince quitta sa planète. Il voyagea longtemps avant d'arriver sur la Terre. Là, il rencontra un renard qui lui apprit le sens de l'amitié.",
            annotation: "Texte narratif : progression temporelle, personnage, transformation",
          },
        ],
      },
      {
        id: "descriptif",
        title: "Le texte descriptif",
        badge: "Décrire",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte descriptif donne à voir un lieu, un objet, un personnage ou un phénomène. Il n'y a pas de progression temporelle : le texte progresse dans l'espace ou par thèmes. La description peut être objective (documentaire) ou subjective (littéraire, avec des impressions et des jugements).",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte descriptif",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Temps verbaux",
                "Imparfait (dans un récit) ou présent (description autonome, documentaire)",
              ],
              [
                "Connecteurs",
                "Spatiaux : à droite, au fond, en haut, au premier plan, plus loin…",
              ],
              [
                "Expansions du nom",
                "Adjectifs qualificatifs, compléments du nom, propositions relatives abondants",
              ],
              [
                "Figures de style",
                "Comparaisons, métaphores, personnifications (description littéraire)",
              ],
              [
                "Genres associés",
                "Portrait, guide touristique, article encyclopédique, passage descriptif dans un roman",
              ],
            ],
          },
          {
            kind: "tip",
            text: "La description est rarement un texte autonome : elle est le plus souvent insérée dans un récit (pause descriptive) ou dans un texte explicatif. C'est une séquence textuelle plutôt qu'un genre à part entière.",
          },
        ],
      },
      {
        id: "argumentatif",
        title: "Le texte argumentatif",
        badge: "Convaincre",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte argumentatif vise à convaincre ou persuader le destinataire en défendant une thèse à l'aide d'arguments et d'exemples. Il suit une progression logique : thèse → arguments → exemples → conclusion. Il peut aussi présenter une thèse adverse pour la réfuter (argumentation par concession).",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte argumentatif",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Temps verbaux",
                "Présent de vérité générale, présent d'énonciation",
              ],
              [
                "Connecteurs",
                "Logiques : car, parce que, en effet (cause) ; donc, par conséquent (conséquence) ; mais, cependant, néanmoins (opposition) ; d'abord, ensuite, enfin (organisation)",
              ],
              [
                "Modalisation",
                "Verbes d'opinion (je pense, il est certain), adverbes (évidemment, sans doute), vocabulaire évaluatif (excellent, désastreux)",
              ],
              [
                "Pronoms",
                "Je/nous (énonciateur) et vous/on (destinataire) pour impliquer le lecteur",
              ],
              [
                "Genres associés",
                "Éditorial, lettre ouverte, essai, discours, publicité, critique littéraire",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Convaincre ≠ persuader",
                explanation:
                  "Convaincre fait appel à la raison (arguments logiques, preuves). Persuader fait appel aux émotions (exemples touchants, appel aux valeurs). Un texte argumentatif peut combiner les deux stratégies.",
              },
            ],
          },
        ],
      },
      {
        id: "explicatif",
        title: "Le texte explicatif",
        badge: "Expliquer",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte explicatif vise à faire comprendre un phénomène, un fonctionnement ou un concept. Il répond à une question implicite ou explicite (pourquoi ? comment ?). Il est objectif : l'énonciateur ne cherche pas à convaincre mais à informer. La progression thématique est souvent linéaire (du simple au complexe) ou à thème dérivé.",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte explicatif",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Temps verbaux",
                "Présent de vérité générale (gnomique), présent atemporel",
              ],
              [
                "Connecteurs",
                "Cause/conséquence : parce que, en raison de, c'est pourquoi, ce qui entraîne… — Organisation : d'une part / d'autre part, premièrement…",
              ],
              [
                "Vocabulaire",
                "Termes techniques ou spécialisés, définitions, reformulations (c'est-à-dire, autrement dit)",
              ],
              [
                "Procédés explicatifs",
                "Définition, reformulation, exemple, comparaison, schéma, analogie",
              ],
              [
                "Genres associés",
                "Article encyclopédique, manuel scolaire, documentaire, notice explicative, vulgarisation scientifique",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "L'arc-en-ciel se forme lorsque la lumière du soleil traverse des gouttes de pluie. Chaque goutte agit comme un prisme : elle décompose la lumière blanche en un spectre de couleurs, du rouge au violet.",
            annotation: "Texte explicatif : présent gnomique, vocabulaire scientifique, explication causale",
          },
        ],
      },
      {
        id: "injonctif",
        title: "Le texte injonctif",
        badge: "Ordonner",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte injonctif (ou prescriptif) donne des instructions, des conseils ou des ordres. Il vise à faire agir le destinataire. Il se caractérise par une organisation séquentielle (étapes à suivre dans l'ordre) et l'emploi de l'impératif ou de l'infinitif.",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte injonctif",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Temps verbaux / modes",
                "Impératif (Mélangez), infinitif (Mélanger), futur à valeur d'ordre (Vous mélangerez), subjonctif (Qu'il mélange)",
              ],
              [
                "Connecteurs",
                "Chronologiques : d'abord, ensuite, puis, enfin — Numérotation : 1., 2., 3.",
              ],
              [
                "Vocabulaire",
                "Précis, technique, concret — quantités exactes, verbes d'action",
              ],
              [
                "Mise en page",
                "Listes numérotées, puces, schémas, illustrations, typographie distinctive",
              ],
              [
                "Genres associés",
                "Recette de cuisine, notice de montage, règle de jeu, consigne scolaire, loi, règlement intérieur",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "1. Préchauffez le four à 180 °C. 2. Mélangez la farine et le sucre. 3. Ajoutez les œufs un à un. 4. Versez la pâte dans un moule beurré. 5. Enfournez pendant 35 minutes.",
            annotation: "Texte injonctif : impératif, numérotation, verbes d'action, séquentialité",
          },
        ],
      },
      {
        id: "dialogal",
        title: "Le texte dialogal",
        badge: "Dialoguer",
        blocks: [
          {
            kind: "rule",
            content:
              "Le texte dialogal (ou conversationnel) représente un échange verbal entre deux ou plusieurs interlocuteurs. Il se caractérise par l'alternance des tours de parole, les marques de l'oral et la présence de déictiques (je, tu, ici, maintenant). Il peut être transcrit (interview, entretien) ou fictionnel (dialogue de roman, pièce de théâtre).",
          },
          {
            kind: "table",
            caption: "Caractéristiques linguistiques du texte dialogal",
            headers: ["Critère", "Marqueurs"],
            rows: [
              [
                "Typographie",
                "Tirets, guillemets, noms des interlocuteurs, didascalies (théâtre)",
              ],
              [
                "Pronoms",
                "1re et 2e personnes dominantes (je, tu, nous, vous)",
              ],
              [
                "Temps verbaux",
                "Présent d'énonciation, passé composé, futur proche",
              ],
              [
                "Marques de l'oral",
                "Phrases incomplètes, interjections, hésitations, reprises, registre familier possible",
              ],
              [
                "Genres associés",
                "Pièce de théâtre, dialogue de roman, interview, bande dessinée, scénario",
              ],
            ],
          },
        ],
      },
      {
        id: "tableau-synthese",
        title: "Tableau de synthèse comparatif",
        badge: "Synthèse",
        blocks: [
          {
            kind: "table",
            caption: "Les six types de textes — vue synthétique",
            headers: ["Type", "Intention", "Question implicite", "Temps dominants", "Connecteurs dominants"],
            rows: [
              [
                "Narratif",
                "Raconter",
                "Que s'est-il passé ?",
                "PS / imparfait / PC",
                "Temporels",
              ],
              [
                "Descriptif",
                "Décrire",
                "Comment est-ce ?",
                "Imparfait / présent",
                "Spatiaux",
              ],
              [
                "Argumentatif",
                "Convaincre / persuader",
                "Pourquoi penser cela ?",
                "Présent",
                "Logiques",
              ],
              [
                "Explicatif",
                "Faire comprendre",
                "Pourquoi ? Comment ça marche ?",
                "Présent gnomique",
                "Cause / conséquence",
              ],
              [
                "Injonctif",
                "Faire agir",
                "Comment faire ?",
                "Impératif / infinitif",
                "Chronologiques",
              ],
              [
                "Dialogal",
                "Échanger",
                "Que se disent-ils ?",
                "Présent d'énonciation",
                "Phatiques (euh, bon, alors)",
              ],
            ],
          },
        ],
      },
      {
        id: "type-vs-genre",
        title: "Type de texte vs genre littéraire",
        badge: "Piège CRPE",
        blocks: [
          {
            kind: "watchout",
            items: [
              {
                label: "Type ≠ genre",
                explanation:
                  "Le type de texte (narratif, descriptif, argumentatif…) est un outil linguistique de classification fondé sur l'intention communicative et les marqueurs de langue. Le genre littéraire (roman, conte, poésie, théâtre, essai…) est un classement socio-culturel fondé sur des conventions formelles. Un même genre peut combiner plusieurs types : un roman contient des passages narratifs, descriptifs et dialogaux.",
                correction:
                  "Au CRPE, bien distinguer : « ce texte est de type narratif » (analyse linguistique) vs « ce texte appartient au genre du conte » (classification littéraire).",
              },
              {
                label: "Séquence dominante vs séquences insérées",
                explanation:
                  "Un texte est rarement pur : un récit contient des descriptions (séquences descriptives insérées), un article explicatif peut contenir un exemple narratif. On identifie le type par la séquence dominante, tout en repérant les séquences secondaires.",
              },
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, quand on vous demande d'identifier le type d'un texte, cherchez d'abord l'intention dominante (raconter ? expliquer ? convaincre ?), puis appuyez votre réponse sur les marqueurs linguistiques (temps verbaux, connecteurs, pronoms, vocabulaire).",
          },
        ],
      },
      {
        id: "didactique-types-textes",
        title: "Enseigner les types de textes à l'école",
        badge: "Didactique",
        collapsible: true,
        blocks: [
          {
            kind: "didactic",
            cycleEntries: [
              {
                cycle: "Cycle 2 (CP-CE1-CE2)",
                content:
                  "Découverte intuitive des types de textes par la lecture d'œuvres variées : albums (narratif), documentaires (explicatif), recettes (injonctif). Les élèves apprennent à reconnaître la fonction d'un texte : « ce texte raconte une histoire / explique comment fonctionne… / donne des instructions ».",
              },
              {
                cycle: "Cycle 3 (CM1-CM2-6e)",
                content:
                  "Identification explicite des types et des genres. Repérage des marqueurs linguistiques caractéristiques. Comparaison de textes de même type mais de genres différents (un fait divers et un conte sont tous deux narratifs). Production d'écrits variés en respectant les caractéristiques du type ciblé.",
              },
            ],
            studentErrors: [
              "Confondre type et genre (dire qu'un conte est un « genre narratif » au lieu de « genre du conte, de type narratif »)",
              "Réduire le narratif au fictif (un fait divers est aussi narratif)",
              "Confondre argumentatif et explicatif (les deux utilisent « parce que » mais avec des intentions différentes)",
            ],
            activities: [
              "Tri de textes : classer des extraits selon leur type dominant",
              "Recherche de marqueurs : surligner les connecteurs, temps verbaux, pronoms pour justifier le type identifié",
              "Transformation : réécrire un texte explicatif en texte argumentatif sur le même sujet",
              "Production d'écrits : écrire une recette (injonctif), un article documentaire (explicatif), un récit (narratif)",
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
                label: "Le schéma narratif (sprint)",
                slug: "schema-narratif-sprint",
              },
              {
                label: "Le texte argumentatif (sprint)",
                slug: "texte-argumentatif-sprint",
              },
              {
                label: "Le texte documentaire (sprint)",
                slug: "texte-documentaire-sprint",
              },
              {
                label: "Cohérence textuelle (sprint)",
                slug: "coherence-textuelle-sprint",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Six types de textes : narratif (raconter), descriptif (décrire), argumentatif (convaincre), explicatif (faire comprendre), injonctif (faire agir), dialogal (échanger).",
      "Chaque type se reconnaît par des marqueurs linguistiques spécifiques : temps verbaux, connecteurs, pronoms, vocabulaire, mise en page.",
      "Type ≠ genre : le type est linguistique (narratif, explicatif…), le genre est socio-culturel (roman, conte, essai…). Un genre combine souvent plusieurs types.",
      "Un texte est rarement pur : il faut identifier la séquence dominante (intention principale) et repérer les séquences insérées.",
      "Argumentatif ≠ explicatif : l'argumentatif défend une thèse (subjectif), l'explicatif fait comprendre un phénomène (objectif).",
      "Au CRPE, toujours appuyer l'identification du type sur des marqueurs linguistiques précis, pas seulement sur l'impression générale.",
    ],
    quiz: [
      {
        sentence:
          "Le type de texte et le genre littéraire désignent la même chose : le roman est un type narratif.",
        isCorrect: false,
        explanation:
          "FAUX. Le type (narratif, explicatif…) est un classement linguistique fondé sur l'intention communicative. Le genre (roman, conte, essai…) est un classement socio-culturel. On dit : le roman est un genre qui relève du type narratif.",
      },
      {
        sentence:
          "Un texte explicatif et un texte argumentatif peuvent tous deux utiliser le connecteur « parce que », mais avec des intentions différentes.",
        isCorrect: true,
        explanation:
          "VRAI. Dans un texte explicatif, « parce que » introduit une cause objective (L'eau gèle parce que la température descend sous 0 °C). Dans un texte argumentatif, il justifie une opinion (Il faut protéger les forêts parce qu'elles sont essentielles à la biodiversité).",
      },
      {
        sentence:
          "Un texte narratif utilise toujours le passé simple et ne peut pas être écrit au présent.",
        isCorrect: false,
        explanation:
          "FAUX. Un texte narratif peut utiliser le présent de narration (En 1789, le peuple prend la Bastille) ou le passé composé (système du discours). Le passé simple est caractéristique du récit littéraire mais pas le seul temps possible.",
      },
      {
        sentence:
          "Le texte injonctif se caractérise par l'emploi de l'impératif ou de l'infinitif et une organisation séquentielle (étapes à suivre).",
        isCorrect: true,
        explanation:
          "VRAI. Le texte injonctif (recette, notice, règlement) guide l'action du destinataire. Il utilise l'impératif (Mélangez) ou l'infinitif (Mélanger) et organise les étapes dans un ordre chronologique.",
      },
      {
        sentence:
          "Un texte peut combiner plusieurs types : par exemple, un roman contient des passages narratifs, descriptifs et dialogaux.",
        isCorrect: true,
        explanation:
          "VRAI. Un texte est rarement « pur ». Un roman alterne séquences narratives (l'action), séquences descriptives (le décor, les personnages) et séquences dialogales (les échanges entre personnages). On identifie le type dominant.",
      },
      {
        sentence:
          "Le texte descriptif se caractérise par une progression temporelle et l'emploi du passé simple.",
        isCorrect: false,
        explanation:
          "FAUX. Le texte descriptif n'a pas de progression temporelle mais une progression spatiale ou thématique. Il utilise l'imparfait (dans un récit) ou le présent (description autonome), pas le passé simple qui est le temps de l'action narrative.",
      },
    ],
  },
};
