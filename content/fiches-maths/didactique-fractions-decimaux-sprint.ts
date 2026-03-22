import type { Fiche } from "@/features/fiches/types";

export const didactiqueFractionsDecimauxSprint: Fiche = {
  id: "didactique-fractions-decimaux-sprint",
  slug: "fractions-decimaux-obstacles-sprint",
  title: "Fractions et décimaux : obstacles et remédiations",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "fractions",
    "nombres décimaux",
    "obstacles",
    "conceptions erronées",
    "remédiation",
    "cycle 3",
    "didactique",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-representations-reference",
    "nombres-fractions-sprint",
    "nombres-decimaux-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Les fractions et les décimaux sont une source majeure d'obstacles épistémologiques au cycle 3. Cette fiche est de niveau avancé et mobilise des concepts de didactique (obstacle, contrat didactique, variable didactique). Thème très fréquent au CRPE.",
    oneLiner:
      "Les élèves transfèrent abusivement les propriétés des entiers aux fractions et aux décimaux (« obstacle du nombre naturel »). Ils pensent que 1/4 > 1/3 (« 4 est plus grand que 3 »), que 2,15 > 2,9 (« 15 est plus grand que 9 »), ou que multiplier agrandit toujours. La remédiation passe par la manipulation de représentations variées (bandes, droites graduées) et la confrontation explicite avec les conceptions erronées.",
    exampleCorrect: {
      sentence:
        "Pour montrer que 1/4 < 1/3, l'enseignant fait plier deux bandes de papier identiques : l'une en 4 parts, l'autre en 3 parts. Les élèves comparent visuellement la taille des parts et constatent que plus on partage en de parts, plus chaque part est petite.",
      explanation:
        "Cette démarche confronte directement la conception erronée (« 4 > 3 donc 1/4 > 1/3 ») à l'observation concrète. La manipulation permet de construire l'intuition correcte : le dénominateur indique en combien de parts on divise — plus de parts signifie des parts plus petites. Le passage par le concret est indispensable pour surmonter l'obstacle.",
    },
    exampleWrong: {
      sentence:
        "Énoncer la règle « quand le dénominateur augmente, la fraction diminue » sans fournir de support visuel ni de manipulation.",
      explanation:
        "FAUX. Cette règle abstraite n'a aucun sens pour un élève dont la conception est « les nombres plus grands donnent des résultats plus grands ». Sans manipulation, il mémorisera la règle sans l'intégrer à sa compréhension et continuera à faire l'erreur dans des contextes nouveaux.",
    },
    mainTrap:
      "L'obstacle du « nombre naturel » est profondément enraciné car les propriétés des entiers sont construites pendant 4-5 ans avant l'introduction des fractions. Les élèves appliquent aux décimaux les mêmes procédures qu'aux entiers : comparaison chiffre par chiffre (2,15 > 2,9 car « 15 > 9 »), addition des numérateurs ET des dénominateurs (1/3 + 1/4 = 2/7). Ces erreurs ne sont pas des fautes d'inattention mais des conceptions solides qui résistent à un enseignement purement procédural.",
    quiz: [
      {
        sentence:
          "L'erreur « 2,15 > 2,9 » révèle que l'élève compare les parties décimales comme des entiers (15 > 9) sans tenir compte de la valeur de position.",
        isCorrect: true,
        explanation:
          "VRAI. C'est l'obstacle du « nombre naturel » appliqué aux décimaux. L'élève traite « 15 » et « 9 » comme des entiers indépendants au lieu de comparer 0,15 et 0,9. La remédiation passe par la droite graduée et le tableau de numération décimale.",
      },
      {
        sentence:
          "L'erreur 1/3 + 1/4 = 2/7 (addition des numérateurs et des dénominateurs) est une simple faute de calcul.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une erreur conceptuelle profonde : l'élève applique aux fractions la logique additive des entiers. Il ne comprend pas que 1/3 et 1/4 ne sont pas des « paquets de 3 et de 4 » mais des parts d'un même tout. La remédiation exige de revenir au sens de la fraction avec du matériel concret.",
      },
      {
        sentence:
          "La droite graduée est une représentation essentielle pour construire le sens des fractions et des décimaux car elle place ces nombres dans un continuum avec les entiers.",
        isCorrect: true,
        explanation:
          "VRAI. La droite graduée permet de visualiser que les fractions et les décimaux sont des nombres (pas seulement des « parts de gâteau ») et qu'ils se situent entre les entiers. Elle aide à surmonter la conception que « les nombres sont uniquement des entiers ».",
      },
      {
        sentence:
          "Multiplier un nombre décimal par un nombre inférieur à 1 donne toujours un résultat plus petit que le nombre de départ.",
        isCorrect: true,
        explanation:
          "VRAI. Mais cette propriété contredit la conception courante des élèves selon laquelle « multiplier, c'est agrandir ». C'est un obstacle majeur en cycle 3 : 0,5 × 6 = 3 < 6. L'enseignant doit explicitement confronter cette conception avec des exemples concrets.",
      },
      {
        sentence:
          "Il est préférable d'enseigner les décimaux uniquement à travers les mesures (1,5 m = 1 m et 50 cm) plutôt que comme des fractions décimales.",
        isCorrect: false,
        explanation:
          "FAUX. Le passage par les mesures est utile mais insuffisant. Les programmes préconisent d'introduire les décimaux comme des fractions décimales (1,5 = 15/10 = 3/2) pour construire le lien entre fractions et décimaux et donner du sens à l'écriture à virgule. Les mesures seules ne permettent pas de comprendre la structure mathématique du nombre décimal.",
      },
    ],
  },
};
