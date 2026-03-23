export type MathDiagnosticSubdomainKey =
  | "nombres_calcul"
  | "geometrie"
  | "grandeurs_mesures"
  | "organisation_donnees"
  | "didactique_maths";

export type MathDiagnosticQuestion = {
  id: string;
  subdomain: MathDiagnosticSubdomainKey;
  subdomainLabel: string;
  href: string;
  competency: string;
  instruction: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
  retryAdvice: string;
};

const SUBDOMAIN_META: Record<
  MathDiagnosticSubdomainKey,
  {
    label: string;
    href: string;
  }
> = {
  nombres_calcul: {
    label: "Nombres et calcul",
    href: "/maths/nombres-et-calcul",
  },
  geometrie: {
    label: "Géométrie",
    href: "/maths/geometrie",
  },
  grandeurs_mesures: {
    label: "Grandeurs et mesures",
    href: "/maths/grandeurs-et-mesures",
  },
  organisation_donnees: {
    label: "Organisation de données",
    href: "/maths/organisation-de-donnees",
  },
  didactique_maths: {
    label: "Didactique des maths",
    href: "/maths/didactique-des-maths",
  },
};

export const MATH_DIAGNOSTIC_SUBDOMAIN_ORDER: MathDiagnosticSubdomainKey[] = [
  "nombres_calcul",
  "geometrie",
  "grandeurs_mesures",
  "organisation_donnees",
  "didactique_maths",
];

export const MATH_DIAGNOSTIC_SESSION_SIZE = 20;

type QuestionTuple = readonly [
  id: string,
  competency: string,
  instruction: string,
  choices: [string, string, string, string],
  correctIndex: number,
  explanation: string,
  retryAdvice: string,
];

function buildQuestion(
  subdomain: MathDiagnosticSubdomainKey,
  tuple: QuestionTuple,
): MathDiagnosticQuestion {
  return {
    id: tuple[0],
    subdomain,
    subdomainLabel: SUBDOMAIN_META[subdomain].label,
    href: SUBDOMAIN_META[subdomain].href,
    competency: tuple[1],
    instruction: tuple[2],
    choices: [...tuple[3]],
    correctIndex: tuple[4],
    explanation: tuple[5],
    retryAdvice: tuple[6],
  };
}

// ── Nombres et calcul (4 questions) ─────────────────────────────────

const nombresQuestions: MathDiagnosticQuestion[] = [
  buildQuestion("nombres_calcul", [
    "diag-math-nc-1",
    "Décomposer une fraction et identifier la partie entière",
    "Quelle est la partie entière de la fraction 47/6 ?",
    ["6", "7", "8", "9"],
    1,
    "47 ÷ 6 = 7 reste 5, donc 47/6 = 7 + 5/6. La partie entière est 7. On effectue la division euclidienne du numérateur par le dénominateur : le quotient donne la partie entière.",
    "Pour trouver la partie entière d'une fraction, effectue la division euclidienne du numérateur par le dénominateur. Le quotient entier est la réponse.",
  ]),
  buildQuestion("nombres_calcul", [
    "diag-math-nc-2",
    "Appliquer un critère de divisibilité",
    "Parmi ces nombres, lequel est divisible à la fois par 3 et par 4 ?",
    ["246", "312", "418", "526"],
    1,
    "Un nombre est divisible par 12 (= 3 × 4) s'il est divisible à la fois par 3 et par 4. 312 : somme des chiffres = 3 + 1 + 2 = 6, divisible par 3. Les deux derniers chiffres forment 12, divisible par 4. Donc 312 est divisible par 3 et par 4.",
    "Divisibilité par 3 : la somme des chiffres est divisible par 3. Divisibilité par 4 : le nombre formé par les deux derniers chiffres est divisible par 4. Vérifie les deux critères séparément.",
  ]),
  buildQuestion("nombres_calcul", [
    "diag-math-nc-3",
    "Résoudre un problème de proportionnalité",
    "Une recette pour 4 personnes nécessite 250 g de farine. Quelle quantité faut-il pour 7 personnes ?",
    ["375 g", "400 g", "437,5 g", "450 g"],
    2,
    "On applique la proportionnalité : 250 g pour 4 personnes, donc pour 1 personne : 250 ÷ 4 = 62,5 g. Pour 7 personnes : 62,5 × 7 = 437,5 g. On peut aussi utiliser le coefficient multiplicateur : 7/4 × 250 = 437,5.",
    "En proportionnalité, passe par la valeur unitaire (quantité pour 1 personne) ou utilise le coefficient multiplicateur (nombre visé ÷ nombre initial).",
  ]),
  buildQuestion("nombres_calcul", [
    "diag-math-nc-4",
    "Calculer le PGCD de deux nombres",
    "Quel est le PGCD de 84 et 36 ?",
    ["6", "12", "18", "4"],
    1,
    "Par l'algorithme d'Euclide : 84 = 2 × 36 + 12, puis 36 = 3 × 12 + 0. Le dernier reste non nul est 12, donc PGCD(84, 36) = 12. On peut vérifier : 84 = 12 × 7 et 36 = 12 × 3, et 7 et 3 sont premiers entre eux.",
    "L'algorithme d'Euclide consiste à diviser le plus grand par le plus petit, puis le diviseur par le reste, jusqu'à obtenir un reste nul. Le dernier reste non nul est le PGCD.",
  ]),
];

// ── Géométrie (4 questions) ─────────────────────────────────────────

const geometrieQuestions: MathDiagnosticQuestion[] = [
  buildQuestion("geometrie", [
    "diag-math-geo-1",
    "Appliquer le théorème de Pythagore",
    "Un triangle rectangle a des côtés de l'angle droit mesurant 5 cm et 12 cm. Quelle est la longueur de l'hypoténuse ?",
    ["15 cm", "13 cm", "17 cm", "14 cm"],
    1,
    "D'après le théorème de Pythagore : hypoténuse² = 5² + 12² = 25 + 144 = 169. Donc hypoténuse = √169 = 13 cm. Le triplet (5, 12, 13) est un triplet pythagoricien classique à connaître.",
    "Théorème de Pythagore : dans un triangle rectangle, le carré de l'hypoténuse égale la somme des carrés des deux autres côtés. Retiens les triplets classiques : (3,4,5), (5,12,13), (8,15,17).",
  ]),
  buildQuestion("geometrie", [
    "diag-math-geo-2",
    "Identifier les propriétés d'une symétrie axiale",
    "Parmi ces affirmations sur la symétrie axiale, laquelle est correcte ?",
    [
      "Le symétrique d'un segment est un segment de longueur différente",
      "La symétrie axiale conserve les distances et les angles",
      "Le symétrique d'une droite parallèle à l'axe est une droite perpendiculaire à l'axe",
      "La symétrie axiale modifie le sens de parcours d'un cercle mais pas son rayon",
    ],
    1,
    "La symétrie axiale est une isométrie : elle conserve les distances, les angles et les aires. Elle transforme un segment en un segment de même longueur, un angle en un angle de même mesure, un cercle en un cercle de même rayon. En revanche, elle inverse l'orientation (un parcours dans le sens horaire devient anti-horaire).",
    "Les isométries (symétrie axiale, symétrie centrale, rotation, translation) conservent toutes les distances et les angles. La symétrie axiale se distingue par le fait qu'elle inverse l'orientation.",
  ]),
  buildQuestion("geometrie", [
    "diag-math-geo-3",
    "Appliquer le théorème de Thalès",
    "Dans un triangle ABC, la droite (DE) est parallèle à (BC) avec D sur [AB] et E sur [AC]. Si AD = 3, DB = 2 et AE = 4,5, quelle est la longueur EC ?",
    ["2", "2,5", "3", "3,5"],
    2,
    "D'après le théorème de Thalès : AD/AB = AE/AC. AB = AD + DB = 3 + 2 = 5. Donc 3/5 = 4,5/AC, ce qui donne AC = 4,5 × 5/3 = 7,5. Ainsi EC = AC − AE = 7,5 − 4,5 = 3.",
    "Théorème de Thalès : quand une droite est parallèle à un côté d'un triangle, elle découpe les deux autres côtés en segments proportionnels. Pose les rapports : AD/AB = AE/AC = DE/BC.",
  ]),
  buildQuestion("geometrie", [
    "diag-math-geo-4",
    "Reconnaître les propriétés des quadrilatères particuliers",
    "Un quadrilatère a ses diagonales qui se coupent en leur milieu et qui sont perpendiculaires, mais de longueurs différentes. Ce quadrilatère est nécessairement un :",
    ["Rectangle", "Losange", "Carré", "Parallélogramme quelconque"],
    1,
    "Les diagonales se coupent en leur milieu → c'est un parallélogramme. Elles sont perpendiculaires → c'est un losange (un parallélogramme dont les diagonales sont perpendiculaires). Elles sont de longueurs différentes → ce n'est pas un carré (qui aurait des diagonales égales ET perpendiculaires).",
    "Retiens la hiérarchie : parallélogramme (diagonales se coupent en leur milieu) → losange (+ perpendiculaires) → carré (+ de même longueur). Rectangle = parallélogramme dont les diagonales sont de même longueur.",
  ]),
];

// ── Grandeurs et mesures (4 questions) ──────────────────────────────

const grandeursQuestions: MathDiagnosticQuestion[] = [
  buildQuestion("grandeurs_mesures", [
    "diag-math-gm-1",
    "Convertir des unités d'aire",
    "Combien de m² représentent 3,5 hectares ?",
    ["350 m²", "3 500 m²", "35 000 m²", "350 000 m²"],
    2,
    "1 hectare = 10 000 m² (un carré de 100 m de côté). Donc 3,5 ha = 3,5 × 10 000 = 35 000 m². Attention : pour les unités d'aire, on avance de deux rangs à chaque unité (car l'aire est une grandeur en deux dimensions).",
    "Pour les conversions d'aires, chaque unité vaut 100 fois la suivante (et non 10 comme pour les longueurs). 1 ha = 100 a = 10 000 m². Dessine le tableau de conversion en doublant les colonnes.",
  ]),
  buildQuestion("grandeurs_mesures", [
    "diag-math-gm-2",
    "Calculer le volume d'un solide composé",
    "Un cylindre a un rayon de 3 cm et une hauteur de 10 cm. Quel est son volume exact ?",
    ["30π cm³", "60π cm³", "90π cm³", "120π cm³"],
    2,
    "Le volume d'un cylindre est V = π × r² × h = π × 3² × 10 = π × 9 × 10 = 90π cm³. On laisse le résultat en valeur exacte avec π plutôt que de donner une approximation décimale.",
    "Volume du cylindre = π × r² × h. N'oublie pas de mettre le rayon au carré (erreur fréquente : confondre r et r²). En valeur exacte, garde π dans l'expression.",
  ]),
  buildQuestion("grandeurs_mesures", [
    "diag-math-gm-3",
    "Résoudre un problème de vitesse, distance et durée",
    "Un cycliste parcourt 45 km en 1 h 30 min. Quelle est sa vitesse moyenne ?",
    ["25 km/h", "30 km/h", "35 km/h", "22,5 km/h"],
    1,
    "Vitesse = distance ÷ temps. Le temps est 1 h 30 min = 1,5 h. Donc v = 45 ÷ 1,5 = 30 km/h. L'erreur classique est d'écrire 1 h 30 min = 1,30 h au lieu de 1,5 h. Il faut convertir les minutes en fraction d'heure : 30 min = 30/60 = 0,5 h.",
    "Formule : v = d/t. Convertis toujours la durée en heures décimales avant de diviser. 30 min = 0,5 h, 45 min = 0,75 h, 15 min = 0,25 h.",
  ]),
  buildQuestion("grandeurs_mesures", [
    "diag-math-gm-4",
    "Calculer l'aire d'une figure composée",
    "Un terrain rectangulaire de 20 m × 15 m contient une piscine circulaire de 3 m de rayon. Quelle est l'aire de la partie non occupée par la piscine (valeur exacte) ?",
    ["300 − 6π m²", "300 − 9π m²", "300 + 9π m²", "300 − 3π m²"],
    1,
    "Aire du rectangle = 20 × 15 = 300 m². Aire du disque = π × r² = π × 3² = 9π m². Aire restante = 300 − 9π m². L'aire d'un disque utilise le rayon au carré (pas le diamètre), et on soustrait car la piscine est à l'intérieur du terrain.",
    "Pour une figure composée : calcule l'aire de chaque forme simple, puis additionne ou soustrais selon la configuration. Aire du disque = π × r² (pas π × d).",
  ]),
];

// ── Organisation et gestion de données (4 questions) ────────────────

const organisationQuestions: MathDiagnosticQuestion[] = [
  buildQuestion("organisation_donnees", [
    "diag-math-od-1",
    "Calculer une moyenne pondérée",
    "Un élève obtient 12/20 (coefficient 2), 15/20 (coefficient 3) et 9/20 (coefficient 1). Quelle est sa moyenne pondérée ?",
    ["12", "12,5", "13", "13,5"],
    1,
    "Moyenne pondérée = (12×2 + 15×3 + 9×1) ÷ (2+3+1) = (24 + 45 + 9) ÷ 6 = 78 ÷ 6 = 13. La moyenne pondérée donne plus de poids aux notes ayant un coefficient élevé. Sans pondération, la moyenne simple serait (12+15+9)/3 = 12.",
    "Moyenne pondérée = somme (valeur × coefficient) ÷ somme des coefficients. Ne confonds pas avec la moyenne simple qui divise par le nombre de valeurs.",
  ]),
  buildQuestion("organisation_donnees", [
    "diag-math-od-2",
    "Calculer une probabilité simple",
    "On lance un dé équilibré à 6 faces. Quelle est la probabilité d'obtenir un nombre premier ?",
    ["1/3", "1/2", "2/3", "1/6"],
    1,
    "Les nombres premiers entre 1 et 6 sont : 2, 3 et 5 (trois issues favorables sur six possibles). Donc P = 3/6 = 1/2. Rappel : 1 n'est pas un nombre premier (par convention), et 4 et 6 ne le sont pas car ils admettent d'autres diviseurs.",
    "Pour une probabilité simple : P = nombre d'issues favorables ÷ nombre total d'issues. Attention : 1 n'est pas premier. Les nombres premiers inférieurs à 10 sont 2, 3, 5, 7.",
  ]),
  buildQuestion("organisation_donnees", [
    "diag-math-od-3",
    "Lire et interpréter un tableau de données",
    "Dans une classe de 30 élèves, un tableau indique : 8 élèves ont eu A, 12 ont eu B, 7 ont eu C et le reste a eu D. Quel est le pourcentage d'élèves ayant obtenu C ou D ?",
    ["23,3 %", "30 %", "33,3 %", "36,7 %"],
    2,
    "Élèves ayant D : 30 − 8 − 12 − 7 = 3. Élèves ayant C ou D : 7 + 3 = 10. Pourcentage : 10/30 = 1/3 ≈ 33,3 %. La lecture de tableau implique souvent de calculer une donnée manquante avant de répondre à la question posée.",
    "Quand une donnée manque dans un tableau, reconstitue-la par soustraction du total. Puis calcule le pourcentage : effectif concerné ÷ effectif total × 100.",
  ]),
  buildQuestion("organisation_donnees", [
    "diag-math-od-4",
    "Déterminer la médiane d'une série statistique",
    "Voici les notes de 9 élèves classées par ordre croissant : 5, 7, 8, 10, 12, 12, 14, 16, 18. Quelle est la médiane ?",
    ["10", "11", "12", "12,5"],
    2,
    "La série comporte 9 valeurs (effectif impair). La médiane est la valeur qui occupe la position centrale, soit la 5ᵉ valeur : 12. Formule du rang : (9+1)/2 = 5. La médiane partage la série en deux groupes de même effectif.",
    "Pour un effectif impair n, la médiane est la valeur de rang (n+1)/2. Pour un effectif pair n, c'est la moyenne des valeurs de rang n/2 et n/2+1. Classe toujours la série dans l'ordre croissant.",
  ]),
];

// ── Didactique des maths (4 questions) ──────────────────────────────

const didactiqueMathsQuestions: MathDiagnosticQuestion[] = [
  buildQuestion("didactique_maths", [
    "diag-math-did-1",
    "Identifier une erreur typique en numération décimale",
    "Un élève de CM1 affirme que 3,12 > 3,9 « parce que 12 est plus grand que 9 ». Cette erreur relève de :",
    [
      "Une mauvaise maîtrise des tables de multiplication",
      "Un obstacle lié au transfert des règles de comparaison des entiers aux décimaux",
      "Un problème de lecture : l'élève inverse les chiffres",
      "Une confusion entre numérateur et dénominateur",
    ],
    1,
    "L'élève applique aux décimaux la comparaison des entiers : il compare 12 et 9 au lieu de 0,12 et 0,9. C'est un obstacle didactique classique identifié par la recherche : le transfert abusif des propriétés des entiers aux décimaux. L'élève n'a pas construit le sens de la partie décimale comme une fraction de l'unité.",
    "Les erreurs sur les décimaux proviennent souvent du transfert des règles des entiers. Autres exemples : penser que 2,15 est entre 2,1 et 2,2 « parce que 15 est entre 1 et 2 » (incorrect) ou que la multiplication agrandit toujours.",
  ]),
  buildQuestion("didactique_maths", [
    "diag-math-did-2",
    "Reconnaître le rôle du matériel de manipulation en géométrie",
    "En cycle 2, l'utilisation de gabarits d'angle (plutôt que le rapporteur) pour comparer des angles vise principalement à :",
    [
      "Simplifier l'activité pour que tous les élèves réussissent",
      "Remplacer le rapporteur, jugé trop difficile à manipuler",
      "Permettre à l'élève de construire le concept d'angle comme grandeur avant d'utiliser un instrument de mesure",
      "Apprendre aux élèves à tracer des angles droits",
    ],
    2,
    "Le gabarit d'angle permet à l'élève de comparer des angles par superposition, sans passer par la mesure numérique. Cela construit le concept d'angle comme grandeur (on peut comparer, ordonner) avant d'introduire l'unité de mesure (le degré) et l'instrument (le rapporteur). C'est la progression didactique : manipulation → concept → mesure → abstraction.",
    "En didactique des maths, on distingue : grandeur (ce qu'on compare), mesure (le nombre associé), unité (la référence). Le matériel de manipulation aide à construire le concept de grandeur avant d'introduire la mesure.",
  ]),
  buildQuestion("didactique_maths", [
    "diag-math-did-3",
    "Comprendre la notion de variable didactique",
    "Un enseignant propose un problème de partage avec 12 bonbons pour 4 enfants, puis modifie en 13 bonbons pour 4 enfants. Ce changement de valeur numérique est une variable didactique car :",
    [
      "Il rend le problème plus difficile en augmentant les nombres",
      "Il oblige l'élève à changer de procédure : le partage ne tombe plus juste, ce qui fait émerger le reste",
      "Il permet de vérifier si l'élève maîtrise l'addition",
      "Il introduit la notion de fraction sans la nommer",
    ],
    1,
    "Passer de 12 à 13 bonbons est une variable didactique car ce choix modifie les stratégies possibles : avec 12, le partage tombe juste (12 ÷ 4 = 3) ; avec 13, il y a un reste (13 = 3 × 4 + 1), ce qui oblige l'élève à gérer une situation nouvelle. La variable didactique est un paramètre que l'enseignant modifie pour provoquer un changement de procédure chez l'élève.",
    "Une variable didactique est un élément de la situation que l'enseignant peut modifier et dont le changement provoque une adaptation des stratégies de l'élève. Ce n'est pas simplement « rendre plus difficile » mais bien provoquer un saut qualitatif dans le raisonnement.",
  ]),
  buildQuestion("didactique_maths", [
    "diag-math-did-4",
    "Identifier les champs conceptuels de Vergnaud dans les problèmes additifs",
    "Le problème « Lucie avait des billes. Elle en a perdu 5. Il lui en reste 8. Combien en avait-elle au départ ? » relève de la catégorie :",
    [
      "Composition : on cherche le tout connaissant les parties",
      "Transformation : on cherche l'état initial connaissant la transformation et l'état final",
      "Comparaison : on compare deux quantités",
      "Produit cartésien : on cherche le nombre de combinaisons possibles",
    ],
    1,
    "C'est un problème de transformation (état initial → transformation → état final). L'élève connaît la transformation (−5) et l'état final (8), et doit retrouver l'état initial. C'est l'une des catégories les plus difficiles car l'élève doit « remonter » la transformation : état initial = 8 + 5 = 13. La classification de Vergnaud distingue : transformation, composition, comparaison.",
    "Classification de Vergnaud pour les problèmes additifs : Transformation (un état change), Composition (réunion de deux parties), Comparaison (écart entre deux quantités). La difficulté varie selon l'inconnue : état initial > transformation > état final.",
  ]),
];

// ── Export : les 20 questions du diagnostic maths ───────────────────

export const MATH_DIAGNOSTIC_QUESTIONS: MathDiagnosticQuestion[] = [
  ...nombresQuestions,
  ...geometrieQuestions,
  ...grandeursQuestions,
  ...organisationQuestions,
  ...didactiqueMathsQuestions,
];

function shuffle<T>(items: T[], randomFn: () => number) {
  const copy = items.slice();

  for (let index = copy.length - 1; index > 0; index -= 1) {
    const swapIndex = Math.floor(randomFn() * (index + 1));
    [copy[index], copy[swapIndex]] = [copy[swapIndex], copy[index]];
  }

  return copy;
}

export function buildMathDiagnosticSession(
  randomFn: () => number = Math.random,
): MathDiagnosticQuestion[] {
  return shuffle(MATH_DIAGNOSTIC_QUESTIONS, randomFn);
}
