import type { Fiche } from "@/features/fiches/types";

export const didactiqueInstitutionnalisationSprint: Fiche = {
  id: "didactique-institutionnalisation-sprint",
  slug: "institutionnalisation-du-faire-au-savoir",
  title: "L'institutionnalisation : du faire-savoir au savoir",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "institutionnalisation",
    "Brousseau",
    "savoir",
    "mémoire de la classe",
    "synthèse",
    "trace écrite",
    "situation didactique",
    "contrat didactique",
    "cycle 1",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "didactique-brousseau-contrat-situations-sprint",
    "didactique-situations-recherche-sprint",
    "didactique-concevoir-sequence-operatoire",
    "didactique-preparer-seance-maths-operatoire",
  ],
  exercicesAssocies: ["math_didactique_situations_brousseau"],
  content: {
    model: "sprint",
    disclaimer:
      "L'institutionnalisation est un concept central de la théorie des situations didactiques de Brousseau. Au CRPE, elle est fréquemment testée à travers l'analyse de séquences de classe et les questions sur la progression didactique.",
    oneLiner:
      "L'INSTITUTIONNALISATION est le moment, dans la séquence didactique, où l'enseignant formule officiellement le savoir construit par les élèves lors de la phase de recherche. Elle transforme un « savoir faire » provisoire et personnel en UN SAVOIR RECONNU, partagé et mémorisé par toute la classe. C'est Brousseau qui a théorisé ce moment comme distinct de la correction et de la validation.",
    exampleCorrect: {
      sentence:
        "Après une séance de recherche en CE2 où les élèves ont manipulé des formes pour trier des triangles, l'enseignant synthétise : « Nous venons de découvrir que les triangles rectangles ont un angle droit. Voilà la propriété que nous allons retenir : UN TRIANGLE EST RECTANGLE SI ET SEULEMENT SI IL A UN ANGLE DE 90°. » Il l'écrit au tableau et les élèves la recopient dans leur cahier de référence.",
      explanation:
        "C'est une institutionnalisation correcte. L'enseignant attend la fin de la phase de recherche et de validation avant de formuler le savoir. Il le pose explicitement comme « ce que nous retenons », lui donnant un statut officiel dans la mémoire de la classe. La trace écrite dans le cahier de référence (ou leçon) matérialise cette institutionnalisation.",
    },
    exampleWrong: {
      sentence:
        "À la fin de l'exercice, l'enseignant dit : « Bravo, vous avez tous bien calculé, c'était les propriétés des angles ! » sans écrire de synthèse.",
      explanation:
        "Ce n'est pas une institutionnalisation, mais une simple validation (ou un encouragement). Le savoir n'est pas formalisé, nommé, ni mis en mémoire collective. Les élèves savent qu'ils ont « bien travaillé » mais le savoir visé n'est pas clairement désigné, reformulé dans un langage mathématique précis, ni ancrésous une forme reproductible. L'institutionnalisation exige une formulation explicite du savoir dans le langage de la discipline.",
    },
    mainTrap:
      "Confondre les TROIS moments distincts d'une séance de recherche : (1) la VALIDATION — vérifier si une réponse est juste ou fausse (souvent prise en charge par la situation elle-même ou par les pairs) ; (2) la CORRECTION — confronter les réponses et identifier les erreurs ; (3) l'INSTITUTIONNALISATION — énoncer officiellement le savoir visé, lui donner un statut dans la mémoire de la classe. L'institutionnalisation vient APRÈS la validation et peut survenir après la correction, mais elle a une nature différente : elle n'est pas un bilan des activités, elle est la naissance officielle d'un savoir partagé.",
    quiz: [
      {
        sentence:
          "L'institutionnalisation peut avoir lieu n'importe quand pendant la séance, dès que l'enseignant a expliqué la notion.",
        isCorrect: false,
        explanation:
          "FAUX. Dans la théorie des situations didactiques de Brousseau, l'institutionnalisation intervient APRÈS la phase d'action (les élèves agissent sur une situation), la phase de formulation (ils verbalisent leurs stratégies) et la phase de validation (les élèves et/ou la situation valident les réponses). Institutionnaliser trop tôt, avant que les élèves aient construit le savoir par leur activité, revient à simplement « donner le cours » — ce qui court-circuite la construction du sens.",
      },
      {
        sentence:
          "L'institutionnalisation constitue la trace mémorielle collective de ce qui a été appris en classe.",
        isCorrect: true,
        explanation:
          "VRAI. Brousseau définit l'institutionnalisation comme le moment qui fixe le savoir dans la « mémoire de la classe ». Avant ce moment, ce que les élèves ont construit reste un savoir personnel, fragile et provisoire. L'institutionnalisation le transforme en un savoir public, nommé, mémorisable et réutilisable dans de nouvelles situations. La trace écrite (affichage de classe, cahier de leçons, trace référence) est le support matériel de cette mémoire collective.",
      },
      {
        sentence:
          "Institutionnaliser signifie que l'enseignant résume ce que les élèves ont fait pendant la séance.",
        isCorrect: false,
        explanation:
          "FAUX. Résumer les activités, c'est faire un bilan procédural (« nous avons fait ceci, puis ceci »). L'institutionnalisation consiste à formuler LE SAVOIR en jeu, pas le déroulé. La formulation doit utiliser le vocabulaire mathématique précis de la discipline, désigner clairement la notion, et énoncer la propriété (ou règle, définition, théorème) sous une forme reproductible. Un résumé d'activité sans formulation du savoir n'est pas une institutionnalisation.",
      },
      {
        sentence:
          "Après une institutionnalisation réussie, les élèves devraient pouvoir réutiliser le savoir dans un contexte différent de celui de la découverte.",
        isCorrect: true,
        explanation:
          "VRAI. C'est l'un des critères d'une institutionnalisation réussie : le savoir doit être formulé de façon suffisamment générale (décontextualisé du problème particulier qui a servi de point d'entrée) pour être transférable. Si un élève ne peut appliquer la propriété qu'à la situation exacte utilisée en cours, c'est que l'institutionnalisation est restée trop proche du contexte particulier. Le processus de décontextualisation est essentiel.",
      },
      {
        sentence:
          "Dans une séquence bien menée, l'institutionnalisation peut être réalisée par les élèves eux-mêmes, sans intervention de l'enseignant.",
        isCorrect: false,
        explanation:
          "FAUX selon Brousseau. L'institutionnalisation est une responsabilité PROPRE à l'enseignant : c'est lui qui désigne officiellement et garantit le statut de savoir. Un élève peut formuler une synthèse, mais sans l'acte institutionnel de l'enseignant (qui dit « voilà ce que nous retenons »), le savoir reste dans la classe comme une proposition parmi d'autres. C'est l'enseignant qui transforme une production d'élève en savoir reconnu par l'institution scolaire. Cette asymétrie est constitutive de la relation didactique.",
      },
    ],
  },
};
