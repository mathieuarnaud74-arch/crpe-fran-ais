import type { Fiche } from "@/features/fiches/types";

export const didactiqueDivisionSprint: Fiche = {
  id: "didactique-division-sprint",
  slug: "didactique-division-sprint",
  title: "Didactique de la division",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "division",
    "partage",
    "groupement",
    "quotition",
    "partition",
    "division euclidienne",
    "reste",
    "cycle 3",
    "CM1",
    "CM2",
    "structures multiplicatives",
    "Vergnaud",
  ],
  notionsLiees: [
    "didactique-multiplication-sprint",
    "didactique-calcul-pose-sprint",
    "didactique-vergnaud-structures-sprint",
    "didactique-erreurs-eleves-reference",
    "nombres-divisibilite-sprint",
  ],
  exercicesAssocies: ["math_didactique_division"],
  content: {
    model: "sprint",
    disclaimer:
      "La division est l'opération la plus complexe à enseigner à l'école primaire. Elle recouvre deux sens fondamentaux (partage et groupement) qui génèrent des difficultés spécifiques. Au CRPE, les questions portent sur la distinction partage/groupement, l'interprétation du reste, les erreurs d'algorithme et la construction du sens avant la technique.",
    oneLiner:
      "La division recouvre deux structures de problèmes fondamentalement différentes : la PARTITION (partage équitable : 12 bonbons à partager entre 4 enfants = combien chacun ?) et la QUOTITION (groupement/mesure : 12 bonbons à mettre dans des paquets de 4 = combien de paquets ?). Ces deux situations donnent le même résultat numérique (12 ÷ 4 = 3) mais ne mobilisent pas les mêmes représentations mentales et ne sont pas équidifficultes pour les élèves.",
    exampleCorrect: {
      sentence:
        "Un enseignant de CM1 différencie deux situations : « 20 élèves en 4 groupes égaux » (partition) et « 20 élèves, groupes de 4, combien de groupes ? » (quotition). Il manipule avec des jetons pour les deux avant d'écrire 20 ÷ 4.",
      explanation:
        "La démarche est correcte. En exposant les élèves aux deux sens de la division avec manipulation, l'enseignant construit la polysémie de l'opération avant de symboliser. La distinction partition/quotition (ou partage/groupement) est fondamentale : un élève qui ne maîtrise qu'un sens aura des difficultés dans certains contextes. Éduscol recommande de travailler les deux types de problèmes dès le CE2, avec supports concrets, avant l'algorithme posé (objectif CM1-CM2).",
    },
    exampleWrong: {
      sentence:
        "Pour résoudre 27 ÷ 4, il suffit d'enseigner à l'élève que 'on ne peut pas diviser 27 par 4 car 27 n'est pas dans la table de 4'.",
      explanation:
        "FAUX et nuisible. Cette réponse confond la division exacte (quotient entier sans reste) et la division euclidienne (quotient + reste). 27 ÷ 4 SE DIVISE : 27 = 4 × 6 + 3 (quotient 6, reste 3). Répondre 'impossible' bloque la compréhension de la division euclidienne, pourtant centrale au cycle 3. L'erreur didactique consiste à réduire la division à la 'table de multiplication inversée'. Le reste doit être enseigné comme un résultat légitime, signifiant dans des situations concrètes (« Il reste 3 bonbons qui ne peuvent pas être partagés »).",
    },
    mainTrap:
      "Présenter la division uniquement comme l'opération inverse de la multiplication ('division = multiplication à l'envers'). Cette définition est incomplète : elle ne couvre pas les divisions avec reste (27 ÷ 4 = 6 reste 3) et ne distingue pas les deux sens (partition vs quotition). De plus, elle crée une dépendance aux tables : un élève qui ne connaît pas la table de 7 sera bloqué pour toute division par 7, même avec l'algorithme. L'enseignement doit développer une compréhension autonome de la division, incluant l'estimation du quotient et le traitement du reste.",
    quiz: [
      {
        sentence:
          "Le problème « 24 élèves sont répartis en équipes de 6. Combien d'équipes y a-t-il ? » est un problème de partition (partage équitable).",
        isCorrect: false,
        explanation:
          "FAUX. C'est un problème de QUOTITION (groupement ou mesure) : on connait la taille de chaque groupe (6 élèves) et on cherche le nombre de groupes. La PARTITION (partage équitable) serait : « 24 élèves répartis en 6 équipes égales — combien d'élèves par équipe ? ». Les deux donnent 24 ÷ 6 = 4, mais le sens est différent. La quotition est généralement plus difficile pour les élèves car elle nécessite de représenter un nombre inconnu de groupes.",
      },
      {
        sentence:
          "Dans la division euclidienne 35 = 8 × 4 + 3, le reste 3 doit être strictement inférieur au diviseur 8.",
        isCorrect: true,
        explanation:
          "Exact. C'est une propriété fondamentale de la division euclidienne : si a = b × q + r, alors 0 ≤ r < b. Ici 3 < 8 : la condition est satisfaite. Si le reste était ≥ au diviseur (ex : 35 = 8 × 3 + 11), cela signifierait qu'on n'a pas effectué tous les groupements possibles. Cette propriété est au cœur de l'enseignement de la division euclidienne au CM1-CM2 et doit être vérifiée systématiquement dans les algorithmes.",
      },
      {
        sentence:
          "Un élève de CM1 qui calcule 84 ÷ 6 et pose 6×1=6, 6×2=12, 6×3=18… jusqu'à trouver 6×14=84 utilise une procédure non pertinente.",
        isCorrect: false,
        explanation:
          "FAUX. Cette procédure (recherche par essais successifs dans la table de 6) est une stratégie valide, même si peu efficiente. Elle révèle que l'élève comprend le sens de la division (chercher combien de fois 6 'entre dans' 84) et connaît sa table de 6. Elle est peu efficace pour les grands nombres, mais elle est pédagogiquement acceptable comme étape intermédiaire avant la maîtrise de l'algorithme. La priorité est de ne pas décourager une stratégie qui fonctionne, tout en accompagnant vers des méthodes plus rapides.",
      },
      {
        sentence:
          "L'algorithme de division posée (long/court) est un objectif du cycle 3, pas du cycle 2.",
        isCorrect: true,
        explanation:
          "Exact selon les programmes Éduscol. Au cycle 2 (CE1-CE2), les objectifs liés à la division sont : comprendre les sens de la division (partage et groupement), résoudre des problèmes de division avec petits nombres, et découvrir la notion de reste. L'algorithme posé de la division (division longue ou courte) est un objectif du cycle 3 (CM1-CM2). Cette progression est cohérente avec la complexité de l'algorithme, qui mobilise simultanément estimation, multiplication, soustraction et gestion du reste.",
      },
      {
        sentence:
          "Le reste d'une division peut être négligé si l'énoncé du problème ne mentionne pas explicitement de reste.",
        isCorrect: false,
        explanation:
          "FAUX. Le traitement du reste dépend du SENS de la situation, pas de sa mention explicite. Pour « 25 élèves à transporter en minibus de 8 places — combien de minibus ? », le reste 1 (25 = 8×3+1) signifie qu'il faut UN QUATRIÈME minibus pour le dernier élève → réponse 4 minibus. Pour « 25 €uros à partager entre 8 personnes — combien chacune reçoit ? », le reste 1 représente 1 € non distribué → réponse 3 €. Ignorer le reste conduit à des réponses fausses dans les deux cas. L'interprétation contextuelle du reste est un objectif explicite des programmes au cycle 3.",
      },
    ],
  },
};
