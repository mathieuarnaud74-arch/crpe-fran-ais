import type { Fiche } from "@/features/fiches/types";

export const didactiqueSoustractionSprint: Fiche = {
  id: "didactique-soustraction-sprint",
  slug: "didactique-soustraction-sprint",
  title: "Didactique de la soustraction",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "soustraction",
    "structures additives",
    "Vergnaud",
    "retrait",
    "complément",
    "comparaison",
    "bug du plus petit au plus grand",
    "cycle 2",
    "CE1",
    "CE2",
  ],
  notionsLiees: [
    "didactique-addition-sprint",
    "didactique-calcul-pose-sprint",
    "didactique-vergnaud-structures-sprint",
    "didactique-erreurs-eleves-reference",
  ],
  exercicesAssocies: ["math_didactique_soustraction"],
  content: {
    model: "sprint",
    disclaimer:
      "La soustraction est souvent présentée comme l'opération inverse de l'addition, mais ses trois sens (retrait, complément, comparaison) créent des difficultés spécifiques chez les élèves. Au CRPE, vous serez évalué sur votre capacité à identifier ces structures, analyser le 'bug du plus petit au plus grand' et proposer des remédiations s'appuyant sur la manipulation.",
    oneLiner:
      "La soustraction recouvre trois structures de problèmes distinctes (Vergnaud) : le RETRAIT (état initial − transformation = état final), le COMPLÉMENT (état initial + ? = état final) et la COMPARAISON (trouver l'écart entre deux quantités). (Vergnaud classe ces situations en trois catégories : composition, transformation et comparaison. Le retrait est un cas de transformation négative, le complément une transformation inconnue.) Ces trois sens ne sont pas équivalents en difficulté : le retrait est le plus intuitif, le complément et la comparaison sont sources d'erreurs fréquentes car les élèves n'identifient pas spontanément qu'il faut soustraire.",
    exampleCorrect: {
      sentence:
        "Pour remédier à l'erreur 'bug du plus petit au plus grand' (542 − 278 = 335), un enseignant revient à la manipulation avec des barres-dizaines et des cubes-unités pour faire construire le sens de l'échange.",
      explanation:
        "La démarche est pertinente. L'erreur 'petit du grand' révèle que l'élève n'a pas construit le sens de la retenue comme un ÉCHANGE (1 dizaine = 10 unités). En manipulant, il voit concrètement qu'on ne peut pas retirer 8 cubes de 3 cubes sans casser une barre-dizaine. Cette démarche suit la progression enactif → iconique → symbolique (Bruner) et est recommandée par Éduscol pour les remédiations en cycle 2. La répétition mécanique de l'algorithme ne guérirait pas l'erreur — elle la renforcerait.",
    },
    exampleWrong: {
      sentence:
        "Le problème « Léa a 34 bonbons, Paul en a 19. Combien de bonbons de plus a Léa ? » est un problème de retrait.",
        explanation:
        "FAUX. C'est un problème de COMPARAISON (mettre en relation deux quantités simultanées pour trouver un écart), non de retrait. Le retrait implique qu'une collection diminue dans le temps (« Léa avait 34 bonbons, elle en a mangé 19 »). La comparaison met en relation deux collections présentes simultanément sans qu'aucune ne diminue. Cette distinction est fondamentale : les élèves réussissent mieux les problèmes de retrait que les problèmes de comparaison car le schème de 'prendre/enlever' est plus intuitif que celui de 'comparer/mesurer l'écart'.",
    },
    mainTrap:
      "Présenter la soustraction uniquement comme l'opération inverse de l'addition ('soustraction = addition à l'envers'). Si cette réversibilité est réelle et utile, elle cache la diversité des situations de soustraction. Un élève qui sait 'défaire' l'addition ne résoudra pas forcément un problème de comparaison. L'enseignement doit exposer les élèves aux trois types de problèmes dès le CE1 (programmes Éduscol), avec une progression de complexité : retrait simple → complément → comparaison → problèmes à deux étapes.",
    quiz: [
      {
        sentence:
          "Le problème « J'ai 8 billes. J'en veux 15. Combien m'en manque-t-il ? » est un problème de soustraction par complément.",
        isCorrect: true,
        explanation:
          "Exact. C'est la structure de complément (ou état manquant) : on connait l'état initial et l'état final, on cherche la transformation. La notation mathématique peut être 8 + ? = 15 ou 15 − 8 = ?. Les élèves hésitent souvent à écrire une soustraction car l'énoncé n'évoque pas d'enlèvement. Ce type de problème est plus difficile que le retrait pur car il requiert de comprendre la relation entre addition et soustraction (réversibilité).",
      },
      {
        sentence:
          "L'algorithme de soustraction 'par emprunt' (cassage) et l'algorithme 'par compensation' (à la française) donnent des résultats différents.",
        isCorrect: false,
        explanation:
          "FAUX. Les deux algorithmes sont mathématiquement équivalents et donnent le même résultat. L'algorithme par emprunt échange 1 dizaine en 10 unités dans le haut. L'algorithme par compensation ajoute 10 unités en haut ET 1 dizaine en bas. Les deux s'appuient sur la propriété : a − b = (a + 10) − (b + 10). Aucun n'est 'plus juste' que l'autre. Le choix pédagogique dépend de la cohérence avec l'enseignement de la numération dans la classe, pas d'une supériorité intrinsèque.",
      },
      {
        sentence:
          "Un élève de CE2 qui réussit 73 − 28 avec l'algorithme posé mais échoue au problème 'Lou a 73 images. Elle en a 28 de plus que Théo. Combien en a Théo ?' manifeste un obstacle dans la compréhension de la structure comparative.",
        isCorrect: true,
        explanation:
          "Exact. Ce décalage est fréquent et révèle une dissociation entre le savoir procédural (algorithme) et la compréhension conceptuelle des structures de problèmes. L'élève sait 'calculer' mais ne sait pas 'mettre en équation' une situation de comparaison. La remédiation doit porter sur la schématisation de la situation (bande numérique, schéma de comparaison) plutôt que sur la répétition de l'algorithme.",
      },
      {
        sentence:
          "La soustraction 'par cassage' (décomposer le nombre soustrait en dizaines puis unités : 62 − 45 = 62 − 40 − 5 = 17) est une procédure de calcul réfléchi à enseigner avant l'algorithme posé.",
        isCorrect: true,
        explanation:
          "Exact. Cette procédure de calcul réfléchi (cassage du nombre retranché) conserve le sens des nombres et prépare au calcul mental. Elle est recommandée par Éduscol comme étape intermédiaire entre le calcul posé en ligne et l'algorithme posé en colonnes. Elle mobilise les propriétés de la numération (valeur positionnelle, décomposition dizaines/unités) et développe la flexibilité numérique, contrairement à l'algorithme posé qui opère chiffre par chiffre sans maintenir la valeur des nombres.",
      },
      {
        sentence:
          "La progression recommandée pour enseigner la soustraction est : algorithme posé → calcul mental → problèmes.",
        isCorrect: false,
        explanation:
          "FAUX. Cette progression est inversée. La progression pertinente (Éduscol, cycle 2) est : (1) manipulation et résolution de problèmes (construire le sens) → (2) calcul en ligne par décomposition → (3) calcul mental avec stratégies variées → (4) algorithme posé (dernier recours, pour les grands nombres). Commencer par l'algorithme posé sans avoir construit le sens produit les erreurs systématiques les plus fréquentes ('bug du plus petit au plus grand', confusion retenue et chiffre à poser).",
      },
    ],
  },
};
