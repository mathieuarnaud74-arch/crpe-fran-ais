import type { Fiche } from "@/features/fiches/types";

export const anaphoresSprint: Fiche = {
  id: "analyse-langue-anaphores-sprint",
  slug: "anaphores-substitution-sprint",
  title: "Reprises anaphoriques et substitution",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "anaphore",
    "reprise anaphorique",
    "pronom",
    "substitution lexicale",
    "cohésion textuelle",
  ],
  notionsLiees: ["fonctions-grammaticales-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les reprises anaphoriques au sens de la linguistique textuelle (Éduscol 2021), à ne pas confondre avec l'anaphore rhétorique (figure de répétition en début de phrase). Au CRPE, les questions portent sur l'identification des types de reprises et sur l'ambiguïté référentielle dans les textes d'élèves.",
    oneLiner:
      "Les reprises anaphoriques sont tous les moyens linguistiques permettant de reprendre un élément déjà mentionné dans le texte (l'antécédent) pour assurer la cohésion référentielle. On distingue : la reprise pronominale (le pronom tient lieu d'un GN : il, elle, celui-ci, le sien), la reprise par synonyme (le chien → l'animal domestique), la reprise par hyperonyme (le chat → l'animal), la reprise par périphrase (Paris → la Ville lumière), et la reprise par nominalisation (explorer → cette exploration). La variété des reprises évite la répétition tout en maintenant la continuité du référent.",
    exampleCorrect: {
      sentence:
        "« Le renard s'approcha du poulailler. L'animal rusé observa les poules à travers le grillage. Il choisit sa proie et bondit. » — Chaîne anaphorique : le renard → l'animal rusé (hyperonyme + adjectif) → il (pronom).",
      explanation:
        "Le référent « le renard » est maintenu tout au long du passage par des reprises variées. « L'animal rusé » est une reprise lexicale combinant un hyperonyme (animal, terme plus général que renard) et un adjectif caractérisant. « Il » est une reprise pronominale — le pronom tient lieu du GN « l'animal rusé / le renard ». Le lecteur sait à tout moment de qui on parle : la cohésion référentielle est assurée.",
    },
    exampleWrong: {
      sentence:
        "« Pierre a parlé à Jacques dans son bureau. Il était content du résultat. » — Le pronom « il » reprend clairement Pierre.",
      explanation:
        "FAUX. C'est un cas d'ambiguïté référentielle : « il » pourrait renvoyer aussi bien à Pierre qu'à Jacques (les deux sont masculin singulier). De même, « son bureau » est ambigu (le bureau de Pierre ou de Jacques ?). L'absence de désambiguïsation crée une rupture dans la cohésion référentielle. En production d'écrit, l'élève doit apprendre à lever ces ambiguïtés en variant les reprises (utiliser le nom propre, un GN descriptif, ou restructurer la phrase).",
    },
    mainTrap:
      "Le piège principal est l'ambiguïté référentielle : quand un pronom peut renvoyer à plusieurs antécédents possibles, le lecteur ne sait plus de qui ou de quoi on parle. En analyse de texte au CRPE, il faut repérer ces ambiguïtés. En didactique, il faut savoir les diagnostiquer dans les écrits d'élèves et proposer des stratégies de correction (remplacer le pronom ambigu par un GN explicite, réorganiser la phrase). Autre piège fréquent : réduire les reprises anaphoriques aux seuls pronoms — les reprises lexicales (synonymes, hyperonymes, périphrases, nominalisations) sont tout aussi importantes pour la cohésion textuelle.",
    quiz: [
      {
        sentence:
          "Dans « Le loup guettait les moutons. Le prédateur s'approcha lentement », « le prédateur » est une reprise anaphorique par hyperonyme de « le loup ».",
        isCorrect: true,
        explanation:
          "Exact. « Prédateur » est un terme de sens plus général que « loup » (tous les loups sont des prédateurs, mais tous les prédateurs ne sont pas des loups). C'est bien une reprise par hyperonyme : le terme générique reprend le référent spécifique pour éviter la répétition tout en ajoutant une caractérisation (le loup est présenté dans sa fonction de chasseur).",
      },
      {
        sentence:
          "Le pronom anaphorique « remplace un nom » dans la phrase.",
        isCorrect: false,
        explanation:
          "FAUX selon la terminologie Éduscol 2021. On dit que le pronom « tient lieu d'un GN » (groupe nominal), et non qu'il « remplace un nom ». Cette distinction est importante : le pronom ne se substitue pas simplement à un nom, il réfère à un groupe nominal entier avec ses déterminants et expansions. « Il » dans « Le vieux chat gris dort. Il ronronne. » tient lieu du GN « le vieux chat gris », pas du seul nom « chat ».",
      },
      {
        sentence:
          "La nominalisation est un type de reprise anaphorique : « Les explorateurs ont traversé la forêt. Cette traversée dura trois jours. »",
        isCorrect: true,
        explanation:
          "Exact. « Cette traversée » reprend le contenu du verbe « traverser » sous forme nominale. C'est une reprise par nominalisation : l'action exprimée par le verbe est reprise par un nom dérivé. Ce procédé est fréquent dans les textes informatifs et argumentatifs, et permet de faire progresser l'information en transformant un événement en thème de la phrase suivante.",
      },
      {
        sentence:
          "Dans « Marie a prêté son livre à Sophie. Elle l'a trouvé passionnant. », il n'y a aucune ambiguïté référentielle.",
        isCorrect: false,
        explanation:
          "FAUX. Il y a une ambiguïté : « elle » pourrait désigner Marie ou Sophie (les deux sont féminin singulier). Certes, le contexte pragmatique suggère que c'est Sophie (celle qui a reçu le livre) qui l'a trouvé passionnant, mais grammaticalement, le pronom est ambigu. Un texte bien construit lèverait cette ambiguïté, par exemple : « Sophie l'a trouvé passionnant » ou « La lectrice l'a trouvé passionnant ».",
      },
      {
        sentence:
          "Les reprises anaphoriques se limitent aux pronoms personnels (il, elle, ils, elles) : les autres formes de reprise ne sont pas des anaphores.",
        isCorrect: false,
        explanation:
          "FAUX. Les reprises anaphoriques englobent tous les moyens de reprendre un référent déjà mentionné : pronoms personnels (il, elle), pronoms démonstratifs (celui-ci, celle-là), reprises par synonyme (le chien → le canidé), par hyperonyme (le chat → l'animal), par périphrase (Paris → la capitale française), par nominalisation (explorer → cette exploration). Réduire l'anaphore aux seuls pronoms personnels est une erreur fréquente au CRPE.",
      },
    ],
  },
};
