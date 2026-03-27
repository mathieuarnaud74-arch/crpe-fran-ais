import type { Fiche } from "@/features/fiches/types";

export const registresLangueReference: Fiche = {
  id: "lexique-registres-langue-reference",
  slug: "registres-langue-reference",
  title: "Les registres de langue",
  subtitle: "Fiche de référence complète",
  domaine: "lexique",
  model: "reference",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "registre",
    "langue",
    "familier",
    "courant",
    "soutenu",
    "variation",
  ],
  notionsLiees: [
    "lexique-registres-langue-sprint",
    "lexique-champs-lexicaux-sprint",
    "lexique-denotation-connotation-sprint",
  ],
  exercicesAssocies: ["lex_registres_langue", "registres_langue_pratique"],
  content: {
    model: "reference",
    intro:
      "Les registres (ou niveaux) de langue désignent les variations de l'usage linguistique en fonction de la situation de communication. Un même locuteur adapte son lexique, sa syntaxe et sa prononciation selon qu'il s'adresse à un ami, à un collègue ou à un supérieur hiérarchique. Maîtriser cette notion est essentiel pour le CRPE : elle intervient dans l'analyse de textes, la didactique de l'oral et de l'écrit, et la compétence « adapter son langage à la situation ».",
    sections: [
      {
        id: "trois-registres",
        title: "Les trois registres",
        badge: "Définitions",
        blocks: [
          {
            kind: "rule",
            content:
              "On distingue traditionnellement trois registres de langue : le registre familier (usage relâché, oral spontané entre proches), le registre courant (usage standard, adapté à la plupart des situations de communication) et le registre soutenu (usage soigné, recherché, propre à l'écrit littéraire ou aux situations formelles). Aucun registre n'est intrinsèquement « meilleur » qu'un autre : chacun est approprié dans un contexte donné.",
            linguisticLogic:
              "La sociolinguistique (Labov, 1972) montre que la variation stylistique (adaptation du registre au contexte) est une compétence sociale universelle. L'école enseigne le registre courant comme norme scolaire et rend les élèves conscients des autres registres pour développer leur flexibilité langagière.",
          },
          {
            kind: "table",
            caption:
              "Comparaison d'une même idée dans les trois registres",
            headers: [
              "Registre",
              "Expression",
              "Marqueurs linguistiques",
            ],
            rows: [
              [
                "Familier",
                "Il a pété les plombs, il s'est barré.",
                "Lexique argotique (péter les plombs, se barrer), absence du « ne » de négation, syntaxe simple",
              ],
              [
                "Courant",
                "Il s'est mis en colère et il est parti.",
                "Lexique standard, négation complète possible, syntaxe claire et directe",
              ],
              [
                "Soutenu",
                "Pris d'un violent accès de courroux, il prit congé sans délai.",
                "Lexique recherché (courroux, prendre congé), passé simple, inversion sujet-verbe possible, subordination complexe",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Familier : « T'as vu sa bagnole ? » — Courant : « Tu as vu sa voiture ? » — Soutenu : « Avez-vous remarqué son véhicule ? »",
            annotation:
              "Trois indices varient simultanément : le lexique (bagnole / voiture / véhicule), la morphologie (t'as / tu as / avez-vous) et la syntaxe (forme déclarative / interrogative avec inversion).",
          },
        ],
      },
      {
        id: "criteres-reconnaissance",
        title: "Critères de reconnaissance",
        badge: "Analyse",
        blocks: [
          {
            kind: "table",
            caption:
              "Marqueurs linguistiques par registre",
            headers: ["Critère", "Familier", "Courant", "Soutenu"],
            rows: [
              [
                "Lexique",
                "Mots argotiques, abréviations, verlan (bagnole, boulot, meuf)",
                "Mots du vocabulaire standard (voiture, travail, femme)",
                "Mots rares, littéraires, spécialisés (automobile, labeur, dame)",
              ],
              [
                "Syntaxe",
                "Phrases courtes, dislocation (moi, je…), parataxe, absence de subordonnées complexes",
                "Phrases structurées, subordination simple (parce que, quand, si)",
                "Phrases longues, subordination complexe (bien que + subjonctif, après que + indicatif), inversion du sujet",
              ],
              [
                "Morphologie verbale",
                "Passé composé systématique, conditionnel simplifié, disparition du subjonctif",
                "Passé composé dominant, subjonctif présent dans les cas fréquents",
                "Passé simple, subjonctif imparfait, plus-que-parfait du subjonctif",
              ],
              [
                "Négation",
                "Chute fréquente du « ne » (je sais pas)",
                "Négation bipartite variable (je ne sais pas / je sais pas selon le contexte)",
                "Négation bipartite systématique, emploi de « point », « guère », « nullement »",
              ],
              [
                "Prononciation (oral)",
                "Élisions (t'as, ch'ais pas), liaisons omises, débit rapide",
                "Articulation standard, liaisons courantes respectées",
                "Articulation soignée, liaisons facultatives réalisées, rythme mesuré",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Pour identifier le registre d'un texte, il faut croiser plusieurs critères (lexique, syntaxe, morphologie verbale, type de négation). Un seul marqueur ne suffit pas : un mot familier isolé dans un texte courant ne fait pas basculer l'ensemble du texte en registre familier. C'est la convergence des indices qui détermine le registre dominant.",
          },
        ],
      },
      {
        id: "registres-situation-communication",
        title: "Registres et situation de communication",
        badge: "Didactique",
        blocks: [
          {
            kind: "rule",
            content:
              "La notion de norme linguistique est centrale : le registre courant constitue la norme scolaire, celle que l'école enseigne comme référence. Mais la norme n'est pas un jugement de valeur : elle désigne l'usage considéré comme standard dans un contexte donné. La variation linguistique (géographique, sociale, situationnelle) est un phénomène naturel que l'école doit expliquer, pas combattre. L'objectif est de développer chez l'élève la capacité d'adaptation : savoir quel registre utiliser selon le destinataire, le lieu et l'enjeu de la communication.",
            watchout:
              "Au CRPE, ne jamais dire qu'un registre est « incorrect ». Le registre familier est inapproprié dans un écrit scolaire, mais il est parfaitement légitime dans un échange oral entre pairs. La compétence visée est l'adaptation, pas l'éradication du familier.",
          },
          {
            kind: "example",
            sentence:
              "Un élève de CM2 écrit dans une rédaction : « Le héros il était trop dégoûté alors il s'est cassé. » L'enseignant ne dit pas « c'est mal dit » mais demande : « Comment pourrais-tu écrire la même chose dans un registre courant, adapté à un récit scolaire ? »",
            annotation:
              "L'approche contrastive (reformuler la même idée dans un autre registre) est le dispositif didactique de référence pour enseigner les registres de langue. Elle valorise la production initiale tout en développant la flexibilité langagière.",
          },
          {
            kind: "rule",
            content:
              "Les programmes de cycle 3 inscrivent explicitement la compétence « adapter son niveau de langue à la situation de communication ». En production d'écrit, cela signifie utiliser le registre courant ou soutenu selon le genre (lettre formelle vs journal intime). En oral, cela signifie distinguer l'échange informel entre pairs et la présentation devant la classe.",
          },
        ],
      },
    ],
    keyPoints: [
      "Trois registres de langue : familier (oral relâché), courant (norme scolaire), soutenu (écrit littéraire ou situation formelle). Aucun n'est intrinsèquement supérieur aux autres.",
      "L'identification du registre repose sur la convergence de plusieurs critères : lexique, syntaxe, morphologie verbale, négation, prononciation.",
      "La norme scolaire est le registre courant. L'école enseigne l'adaptation, pas l'éradication du familier.",
      "L'approche contrastive (reformuler une même idée dans différents registres) est le dispositif didactique de référence.",
      "Ne pas confondre registre de langue (familier, courant, soutenu) et registre littéraire (comique, tragique, lyrique). Ce sont deux notions distinctes.",
    ],
    quiz: [
      {
        sentence:
          "Le registre familier est un usage « incorrect » de la langue française.",
        isCorrect: false,
        explanation:
          "FAUX. Le registre familier est un usage légitime adapté à certaines situations (échange oral entre proches). Il n'est pas incorrect mais inapproprié dans un contexte scolaire formel. La sociolinguistique distingue norme et variation : la compétence visée est l'adaptation au contexte, pas la stigmatisation d'un registre.",
      },
      {
        sentence:
          "La chute du « ne » de négation (« je sais pas ») est un marqueur du registre familier à l'oral.",
        isCorrect: true,
        explanation:
          "VRAI. L'absence de la première partie de la négation (ne) est l'un des marqueurs morphosyntaxiques les plus fiables du registre familier à l'oral. En registre courant, les deux formes coexistent selon le contexte ; en registre soutenu, la négation bipartite est systématique.",
      },
      {
        sentence:
          "Pour identifier le registre d'un texte, un seul marqueur linguistique suffit.",
        isCorrect: false,
        explanation:
          "FAUX. L'identification du registre exige la convergence de plusieurs critères (lexique, syntaxe, morphologie verbale, type de négation). Un mot argotique isolé dans un texte courant ne fait pas basculer l'ensemble en registre familier. C'est le faisceau d'indices qui détermine le registre dominant.",
      },
      {
        sentence:
          "Les programmes de cycle 3 visent la compétence « adapter son niveau de langue à la situation de communication ».",
        isCorrect: true,
        explanation:
          "VRAI. Cette compétence est inscrite dans les programmes de français des cycles 2 et 3. Elle se travaille en production d'écrit (adapter le registre au genre textuel) et en oral (distinguer échange informel et présentation formelle). L'approche contrastive est le dispositif didactique recommandé.",
      },
    ],
  },
};
