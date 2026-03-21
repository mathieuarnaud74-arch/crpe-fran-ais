import type { Fiche } from "@/features/fiches/types";

export const sensMotContexteOperatoire: Fiche = {
  id: "lexique-sens-mot-contexte-operatoire",
  slug: "sens-mot-contexte-arbre-decision",
  title: "Trouver le sens d'un mot en contexte : arbre de décision",
  domaine: "lexique",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "lexique",
    "sens en contexte",
    "polysémie",
    "morphologie",
    "préfixe",
    "suffixe",
    "radical",
  ],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Comment trouver le sens d'un mot rencontré dans un texte ?",
    decisionTree: {
      type: "question",
      text: "Le mot est-il déjà connu (fait-il partie de votre vocabulaire actif) ?",
      yes: {
        type: "question",
        text: "Le mot a-t-il plusieurs sens possibles (polysémie) ?",
        yes: {
          type: "question",
          text: "Le contexte immédiat (la phrase, les phrases voisines) permet-il de choisir le bon sens ?",
          yes: {
            type: "leaf",
            label: "Sens identifié par le contexte",
            rule: "Relire la phrase et les phrases environnantes pour repérer les indices (champ lexical, thème, compléments) qui orientent vers le sens approprié du mot polysémique.",
            example:
              "« Il a pris une note brillante à l'examen. » → Le champ lexical de l'école indique que « note » désigne ici une évaluation chiffrée, et non un son musical.",
          },
          no: {
            type: "leaf",
            label: "Vérification par substitution",
            rule: "Remplacer le mot par chacun de ses synonymes connus et vérifier lequel donne un sens cohérent dans la phrase. On peut aussi consulter un dictionnaire pour confirmer.",
            example:
              "« La glace a fondu. » → « glace » = miroir ou eau gelée ? Substituer : « Le miroir a fondu » n'a pas de sens → c'est de l'eau gelée.",
          },
        },
        no: {
          type: "leaf",
          label: "Sens unique connu",
          rule: "Le mot n'a qu'un seul sens courant et vous le connaissez. Vérifier tout de même que ce sens est cohérent avec le contexte de la phrase.",
          example:
            "« Le chat dort sur le canapé. » → « chat » a un sens principal évident ici : l'animal domestique.",
        },
      },
      no: {
        type: "question",
        text: "Peut-on décomposer le mot en éléments connus (préfixe, radical, suffixe) ?",
        yes: {
          type: "question",
          text: "Le radical est-il identifiable et rattachable à une famille de mots connue ?",
          yes: {
            type: "leaf",
            label: "Sens déduit par la morphologie",
            rule: "Identifier le radical (sens de base), le préfixe (modification du sens : négation, répétition, intensité…) et le suffixe (catégorie grammaticale, sens ajouté). Combiner ces éléments pour déduire le sens global.",
            example:
              "« Invraisemblable » → in- (négation) + vraisembl- (qui ressemble au vrai) + -able (qui peut être) = qui ne peut pas ressembler au vrai → incroyable, difficile à croire.",
          },
          no: {
            type: "leaf",
            label: "Radical opaque — recourir au contexte",
            rule: "Si le radical ne rappelle aucun mot connu, observer le contexte large : le thème du texte, le champ lexical environnant, les reprises anaphoriques et les définitions implicites que l'auteur peut fournir.",
            example:
              "« Le zéphyr caressait les feuilles. » → Le verbe « caressait » et « les feuilles » orientent vers un vent léger et doux.",
          },
        },
        no: {
          type: "question",
          text: "Le contexte (phrase, paragraphe, champ lexical) fournit-il des indices suffisants ?",
          yes: {
            type: "leaf",
            label: "Sens déduit par le contexte seul",
            rule: "Exploiter tous les indices contextuels : les mots du même champ lexical, les connecteurs, les reprises (synonymes, périphrases), les exemples ou reformulations présents dans le texte.",
            example:
              "« L'ermite vivait seul, loin de tout village, dans une grotte reculée. » → « ermite » = personne qui vit isolée, en solitaire (indices : « seul », « loin de tout village », « grotte reculée »).",
          },
          no: {
            type: "leaf",
            label: "Recours au dictionnaire",
            rule: "Quand ni la morphologie ni le contexte ne suffisent, consulter un dictionnaire. Repérer la définition qui correspond au contexte d'emploi du mot (domaine, registre, époque).",
            example:
              "Chercher le mot inconnu dans le dictionnaire, lire les différentes acceptions et choisir celle qui s'insère logiquement dans la phrase.",
          },
        },
      },
    },
    workedExample: {
      phrase: "Cette histoire est invraisemblable.",
      steps: [
        "Étape 1 — Le mot « invraisemblable » est-il connu ? Supposons qu'il ne l'est pas.",
        "Étape 2 — Peut-on décomposer le mot ? Oui : in- / vraisembl- / -able. Trois éléments identifiables.",
        "Étape 3 — Le radical est-il identifiable ? Oui : « vraisembl- » rappelle « vraisemblable », qui vient de « vrai » + « sembler ». Famille de mots : vrai, sembler, vraisemblance.",
        "Étape 4 — Analyser chaque élément : le préfixe « in- » exprime la négation ; le radical « vraisembl- » signifie « qui ressemble au vrai, crédible » ; le suffixe « -able » indique la possibilité.",
        "Étape 5 — Combiner : « in- » + « vraisemblable » = qui n'est pas vraisemblable → qui est difficile à croire, incroyable. Le contexte (« cette histoire ») confirme : l'histoire est jugée incroyable, impossible à croire.",
      ],
    },
    quiz: [
      {
        sentence:
          "La polysémie désigne le fait qu'un mot possède plusieurs sens différents.",
        isCorrect: true,
        explanation:
          "VRAI. La polysémie est la propriété d'un mot qui a plusieurs significations. Par exemple, « avocat » peut désigner un fruit ou un professionnel du droit. Le contexte permet de choisir le bon sens.",
      },
      {
        sentence:
          "Pour trouver le sens d'un mot inconnu, la première stratégie est toujours de chercher dans le dictionnaire.",
        isCorrect: false,
        explanation:
          "FAUX. Avant le dictionnaire, on peut mobiliser deux stratégies : la décomposition morphologique (préfixe/radical/suffixe) et l'analyse du contexte. Le dictionnaire intervient en dernier recours, quand les autres stratégies ne suffisent pas.",
      },
      {
        sentence:
          "Le préfixe « dé- » ou « dés- » exprime généralement le contraire ou la suppression.",
        isCorrect: true,
        explanation:
          "VRAI. Le préfixe « dé-/dés- » marque la négation, le contraire ou la suppression : défaire (contraire de faire), désordre (absence d'ordre), démonter (inverser le montage).",
      },
      {
        sentence:
          "Dans « L'opération a été un succès, le chirurgien est satisfait », le mot « opération » désigne un calcul mathématique.",
        isCorrect: false,
        explanation:
          "FAUX. Le champ lexical médical (« chirurgien », « succès ») indique clairement que « opération » désigne ici une intervention chirurgicale, et non un calcul mathématique.",
      },
      {
        sentence:
          "La substitution par un synonyme est une technique efficace pour vérifier le sens d'un mot polysémique.",
        isCorrect: true,
        explanation:
          "VRAI. Remplacer le mot par chacun de ses synonymes possibles et vérifier la cohérence de la phrase est une stratégie fiable pour lever l'ambiguïté d'un mot polysémique.",
      },
    ],
  },
};
