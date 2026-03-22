import type { Fiche } from "@/features/fiches/types";

export const didactiqueNumerationCyclesSprint: Fiche = {
  id: "didactique-numeration-cycles-sprint",
  slug: "numeration-cycles-sprint",
  title: "Enseigner la numération : repères par cycle",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "numération",
    "cycles",
    "numération positionnelle",
    "dizaines",
    "unités",
    "progression",
    "didactique",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-programmes-cycles-reference",
    "nombres-entiers-naturels-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche mobilise des notions de didactique des mathématiques appliquées à la numération. Elle est essentielle pour les questions portant sur la progressivité des apprentissages au CRPE.",
    oneLiner:
      "La numération positionnelle repose sur deux principes : le groupement par dix et la valeur de position. L'enseignement progresse du matériel concret (cubes, bûchettes) en cycle 1 vers l'abstraction des écritures chiffrées en cycle 3, en passant par la manipulation et la décomposition en cycle 2.",
    exampleCorrect: {
      sentence:
        "En CE1, pour enseigner que 34 = 3 dizaines et 4 unités, l'enseignant fait manipuler 34 bûchettes, demande de les grouper par paquets de 10, puis écrit la décomposition au tableau.",
      explanation:
        "Cette démarche respecte la progression didactique : manipulation concrète → représentation (groupements visibles) → abstraction (écriture chiffrée). Le matériel permet à l'élève de comprendre que le « 3 » de 34 ne vaut pas 3 mais 30 (3 paquets de 10). C'est le passage du cardinal (compter un par un) à la numération positionnelle.",
    },
    exampleWrong: {
      sentence:
        "Donner directement la règle « le chiffre des dizaines indique combien il y a de paquets de 10 » sans manipulation préalable.",
      explanation:
        "FAUX. Sans manipulation, l'élève peut réciter la règle sans la comprendre. Il dira « 3 dizaines » par cœur mais écrira « 30 + 4 = 304 » car il n'a pas construit le lien entre le groupement concret et la valeur de position. La manipulation est un passage obligé pour construire le sens de la numération.",
    },
    mainTrap:
      "Confondre numération orale et numération écrite. En français, les noms des nombres sont irréguliers (onze, douze… soixante-dix, quatre-vingts) et ne reflètent pas la logique positionnelle. L'élève qui sait dire « soixante-douze » ne sait pas forcément que c'est 7 dizaines et 2 unités. L'enseignement doit expliciter le décalage entre la langue parlée et le système décimal écrit.",
    quiz: [
      {
        sentence:
          "En cycle 1, les élèves doivent maîtriser la numération positionnelle jusqu'à 100.",
        isCorrect: false,
        explanation:
          "FAUX. En cycle 1, les élèves construisent la suite orale des nombres, dénombrent des collections (jusqu'à 10 en PS, 30 en GS) et commencent à percevoir les régularités de la suite numérique. La numération positionnelle (dizaines/unités) est un objectif du cycle 2.",
      },
      {
        sentence:
          "La manipulation de matériel (bûchettes, cubes emboîtables) est une étape nécessaire avant l'écriture chiffrée des nombres en cycle 2.",
        isCorrect: true,
        explanation:
          "VRAI. Le passage par le concret permet de construire le sens du groupement par dix et de la valeur de position. Sans cette étape, l'écriture chiffrée reste un code arbitraire mémorisé sans compréhension.",
      },
      {
        sentence:
          "Les irrégularités de la numération orale française (soixante-dix, quatre-vingts) ne posent pas de difficulté particulière aux élèves.",
        isCorrect: false,
        explanation:
          "FAUX. La numération orale française est source d'obstacles majeurs. « Soixante-douze » masque la structure « 7 dizaines et 2 unités ». Les élèves francophones font plus d'erreurs de transcodage (écrire un nombre dicté) que les élèves dont la langue est régulière (chinois, japonais).",
      },
      {
        sentence:
          "En cycle 3, les élèves étendent la numération positionnelle aux grands nombres et aux nombres décimaux.",
        isCorrect: true,
        explanation:
          "VRAI. Le cycle 3 prolonge la numération positionnelle vers les millions/milliards et vers les dixièmes/centièmes/millièmes. Le principe reste identique (groupements de 10, valeur de position) mais appliqué à de nouveaux ordres de grandeur.",
      },
      {
        sentence:
          "Le comptage un par un (dénombrement) est une compétence qui doit être abandonnée dès le CP au profit de la numération positionnelle.",
        isCorrect: false,
        explanation:
          "FAUX. Le dénombrement reste une compétence fondamentale même au-delà du CP. La numération positionnelle s'appuie sur le dénombrement (compter les groupements). Les deux compétences coexistent et se renforcent mutuellement.",
      },
    ],
  },
};
