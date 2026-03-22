import type { Fiche } from "@/features/fiches/types";

export const didactiqueErreursElevesReference: Fiche = {
  id: "didactique-erreurs-eleves-reference",
  slug: "erreurs-eleves-maths-guide",
  title: "Analyse d'erreurs d'élèves en maths : guide",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_maths",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "erreurs d'élèves",
    "analyse d'erreurs",
    "remédiation",
    "obstacles",
    "conceptions",
    "numération",
    "calcul",
    "géométrie",
  ],
  notionsLiees: [
    "didactique-analyser-erreur-operatoire",
    "didactique-variables-didactiques-reference",
    "didactique-numeration-cycles-sprint",
    "didactique-calcul-pose-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'analyse d'erreurs d'élèves est une compétence fondamentale pour l'enseignant et un thème récurrent au CRPE. Une erreur en mathématiques n'est jamais aléatoire : elle révèle une procédure logique mais inadaptée, une conception erronée ou un obstacle épistémologique. Cette fiche propose une grille d'analyse systématique des erreurs courantes en numération, calcul et géométrie, avec les remédiations associées.",
    sections: [
      {
        id: "cadre-theorique",
        title: "Cadre théorique : erreur, obstacle, conception",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "En didactique des mathématiques, on distingue la faute (erreur accidentelle, inattention) de l'erreur (manifestation d'une conception erronée, systématique et logique). Brousseau (1983) identifie trois origines d'obstacles : ontogénétique (lié au développement de l'enfant), didactique (provoqué par un choix d'enseignement) et épistémologique (inhérent au savoir lui-même, passage obligé historiquement).",
          },
          {
            kind: "table",
            caption: "Typologie des obstacles selon Brousseau",
            headers: ["Type d'obstacle", "Origine", "Exemple en maths"],
            rows: [
              [
                "Ontogénétique",
                "Niveau de développement cognitif de l'élève",
                "Un élève de CP ne peut pas comprendre les nombres négatifs (abstraction trop élevée pour son stade de développement).",
              ],
              [
                "Didactique",
                "Choix d'enseignement qui crée une fausse généralisation",
                "Ne proposer que des triangles « pointe en haut » → l'élève ne reconnaît pas un triangle renversé.",
              ],
              [
                "Épistémologique",
                "Difficulté intrinsèque au concept mathématique",
                "L'obstacle du « nombre naturel » : transférer les propriétés des entiers aux fractions (1/4 > 1/3 car 4 > 3).",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, l'analyse d'erreur suit toujours le même schéma : (1) identifier l'erreur, (2) formuler une hypothèse sur la procédure erronée de l'élève, (3) proposer une remédiation ciblée sur l'obstacle identifié.",
          },
        ],
      },
      {
        id: "erreurs-numeration",
        title: "Erreurs courantes en numération",
        badge: "Numération",
        blocks: [
          {
            kind: "table",
            caption: "Erreurs typiques et remédiations en numération",
            headers: ["Erreur observée", "Conception erronée", "Remédiation"],
            rows: [
              [
                "Écrire « 10013 » pour « mille treize » (1013)",
                "L'élève juxtapose les mots : mille → 1000, treize → 13 → 100013. Il ne maîtrise pas la numération positionnelle.",
                "Travailler le tableau de numération, décomposer 1013 = 1×1000 + 0×100 + 1×10 + 3. Dictée de nombres avec tableau de position.",
              ],
              [
                "Penser que 2,15 > 2,9 (« 15 > 9 »)",
                "L'élève compare les parties décimales comme des entiers (obstacle du nombre naturel).",
                "Droite graduée, tableau de numération décimale, comparaison de longueurs (2,15 m vs 2,9 m avec un mètre).",
              ],
              [
                "Écrire 1/4 > 1/3 (« 4 > 3 »)",
                "L'élève applique la comparaison des entiers aux dénominateurs.",
                "Manipulation : plier deux bandes identiques en 3 et en 4 parts, comparer. Visualisation sur la droite graduée.",
              ],
              [
                "Confondre chiffre et nombre : « le 3 de 345 vaut 3 »",
                "L'élève ne distingue pas la valeur positionnelle (3 centaines = 300) du chiffre isolé (3).",
                "Matériel de numération (centaines, dizaines, unités), décompositions systématiques, jeux de « combien vaut le 3 dans… ? ».",
              ],
            ],
          },
        ],
      },
      {
        id: "erreurs-calcul",
        title: "Erreurs courantes en calcul",
        badge: "Calcul",
        blocks: [
          {
            kind: "table",
            caption: "Erreurs typiques et remédiations en calcul",
            headers: ["Erreur observée", "Conception erronée", "Remédiation"],
            rows: [
              [
                "47 − 18 = 31 (soustrait le petit du grand dans chaque colonne)",
                "L'élève ne maîtrise pas la retenue (emprunt) dans la soustraction.",
                "Revenir au matériel : échanger 1 dizaine contre 10 unités. Manipuler avec des bûchettes avant de poser.",
              ],
              [
                "1/3 + 1/4 = 2/7 (additionne numérateurs et dénominateurs)",
                "L'élève applique l'addition terme à terme, sans comprendre la mise au même dénominateur.",
                "Manipulation de fractions concrètes (parts de pizza, bandes), visualiser que 1/3 + 1/4 ≠ 2/7 sur un schéma.",
              ],
              [
                "23 × 14 = 92 + 23 = 115 (oubli du décalage dans la multiplication posée)",
                "L'élève calcule 23 × 4 = 92 et 23 × 1 = 23 sans décaler (il devrait écrire 230).",
                "Expliciter la distributivité : 23 × 14 = 23 × 4 + 23 × 10. Le « 1 » de 14 représente 1 dizaine, d'où le décalage.",
              ],
              [
                "« Multiplier rend toujours plus grand »",
                "Conception construite sur les entiers, fausse pour les décimaux < 1.",
                "Proposer des exemples concrets : 0,5 × 6 = 3 (la moitié de 6). Confronter explicitement avec des contre-exemples.",
              ],
            ],
          },
        ],
      },
      {
        id: "erreurs-geometrie",
        title: "Erreurs courantes en géométrie",
        badge: "Géométrie",
        blocks: [
          {
            kind: "table",
            caption: "Erreurs typiques et remédiations en géométrie",
            headers: ["Erreur observée", "Conception erronée", "Remédiation"],
            rows: [
              [
                "Ne pas reconnaître un carré posé sur la pointe comme un carré",
                "L'élève identifie les figures par leur orientation habituelle (prototype perceptif), pas par leurs propriétés.",
                "Varier les orientations des figures, faire vérifier avec les instruments (4 côtés égaux + 4 angles droits = carré, quelle que soit l'orientation).",
              ],
              [
                "Confondre périmètre et aire",
                "L'élève confond « le tour » et « la surface », souvent par association nombre de côtés/nombre de carreaux.",
                "Proposer des figures de même périmètre mais d'aires différentes (et inversement). Manipuler fil (périmètre) et papier quadrillé (aire).",
              ],
              [
                "Penser que « plus de côtés = plus grand »",
                "L'élève confond le nombre de côtés et la taille de la figure.",
                "Comparer un grand triangle et un petit hexagone. Mesurer les aires pour montrer que le nombre de côtés ne détermine pas la taille.",
              ],
            ],
          },
        ],
      },
      {
        id: "grille-analyse",
        title: "Grille d'analyse pour le CRPE",
        badge: "Méthode",
        blocks: [
          {
            kind: "rule",
            content:
              "Face à une production d'élève au CRPE, appliquer cette grille en 4 étapes : (1) Décrire l'erreur factuelle (que fait l'élève ?) ; (2) Formuler une hypothèse sur la procédure de l'élève (quel raisonnement produit cette erreur ?) ; (3) Identifier le type d'obstacle (ontogénétique, didactique, épistémologique) ; (4) Proposer une remédiation qui cible l'obstacle, pas seulement la correction de surface.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Ne pas confondre correction et remédiation",
                explanation:
                  "Corriger = donner la bonne réponse. Remédier = agir sur la cause de l'erreur (la conception erronée). Au CRPE, on attend une remédiation, pas une simple correction.",
              },
              {
                label: "Cibler un seul obstacle à la fois",
                explanation:
                  "Si un élève fait plusieurs types d'erreurs, prioriser l'obstacle le plus bloquant et proposer une remédiation ciblée. Vouloir tout corriger en même temps est inefficace.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Une erreur en mathématiques est une manifestation d'une conception erronée, pas un accident. Elle est systématique et logique du point de vue de l'élève.",
      "Trois types d'obstacles (Brousseau) : ontogénétique, didactique, épistémologique. L'obstacle épistémologique (ex : nombre naturel → fractions) est le plus résistant.",
      "L'analyse d'erreur au CRPE suit 4 étapes : décrire → hypothèse sur la procédure → identifier l'obstacle → proposer une remédiation ciblée.",
      "Corriger ≠ remédier. La remédiation agit sur la conception erronée, pas sur la surface de l'erreur.",
      "La manipulation concrète est souvent la première étape de la remédiation : revenir au matériel pour reconstruire le sens.",
    ],
    quiz: [
      {
        sentence:
          "Un obstacle épistémologique est une erreur due à un mauvais enseignement.",
        isCorrect: false,
        explanation:
          "FAUX. L'obstacle épistémologique est inhérent au savoir lui-même (il a résisté historiquement, même chez les mathématiciens). L'obstacle dû à un choix d'enseignement est l'obstacle didactique. Ne pas confondre les deux au CRPE.",
      },
      {
        sentence:
          "Un élève qui écrit systématiquement 47 − 18 = 31 applique une procédure cohérente (soustraire le plus petit du plus grand dans chaque colonne).",
        isCorrect: true,
        explanation:
          "VRAI. L'erreur n'est pas aléatoire : l'élève applique une règle logique (« dans chaque colonne, je soustrais le plus petit du plus grand »). Cette procédure « marche » tant qu'il n'y a pas de retenue. L'erreur révèle une incompréhension de l'emprunt.",
      },
      {
        sentence:
          "Pour remédier à l'erreur 1/4 > 1/3, il suffit d'énoncer la règle : « plus le dénominateur est grand, plus la fraction est petite ».",
        isCorrect: false,
        explanation:
          "FAUX. Énoncer la règle sans manipulation ne permet pas de surmonter l'obstacle du nombre naturel. La remédiation efficace passe par la manipulation concrète (plier des bandes, comparer des parts) pour que l'élève constate et comprenne la relation inverse.",
      },
      {
        sentence:
          "Un obstacle didactique peut être évité par des choix d'enseignement adaptés (varier les exemples, les représentations, les orientations des figures).",
        isCorrect: true,
        explanation:
          "VRAI. Contrairement à l'obstacle épistémologique (passage obligé), l'obstacle didactique est créé par l'enseignement. Varier les exemples (triangles dans toutes les orientations, pas seulement « pointe en haut ») prévient la formation de prototypes erronés.",
      },
      {
        sentence:
          "Face à une production d'élève au CRPE, il faut d'abord proposer une remédiation avant d'analyser la cause de l'erreur.",
        isCorrect: false,
        explanation:
          "FAUX. L'analyse précède la remédiation. Sans hypothèse sur la procédure erronée de l'élève, la remédiation risque de manquer sa cible. Au CRPE, on attend d'abord l'identification de l'erreur et sa cause, puis la proposition de remédiation.",
      },
    ],
  },
};
