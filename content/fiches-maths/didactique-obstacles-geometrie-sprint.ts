import type { Fiche } from "@/features/fiches/types";

export const didactiqueObstaclesGeometrieSprint: Fiche = {
  id: "didactique-obstacles-geometrie-sprint",
  slug: "obstacles-geometrie-erreurs-eleves-typiques",
  title: "Obstacles en géométrie : erreurs d'élèves typiques",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "didactique",
    "géométrie",
    "erreurs d'élèves",
    "obstacles",
    "prototype",
    "perception visuelle",
    "propriétés géométriques",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-geometrie-manipulation-sprint",
    "geometrie-quadrilateres-sprint",
    "geometrie-triangles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les obstacles didactiques en géométrie. Pour un panorama complet des erreurs d'élèves (tous domaines), consulte la fiche Référence « Erreurs d'élèves ».",
    oneLiner:
      "Les erreurs en géométrie proviennent souvent de la prédominance du perceptif sur le déductif : l'élève « voit » au lieu de raisonner. L'obstacle du prototype (le carré « posé sur un côté ») et la confusion entre propriétés et apparences sont les deux sources majeures d'erreurs au cycle 3.",
    exampleCorrect: {
      sentence:
        "Un enseignant présente un carré « posé sur un sommet » (en position de losange) et demande aux élèves de le nommer. Plusieurs disent « losange ». L'enseignant diagnostique un obstacle prototypique : les élèves associent le carré à une seule position.",
      explanation:
        "Diagnostic pertinent. L'obstacle du prototype (Houdement & Kuzniak) conduit l'élève à ne reconnaître une figure que dans sa position « standard ». Le remède : varier systématiquement les positions, tailles et orientations des figures présentées. ✓",
    },
    exampleWrong: {
      sentence:
        "Un élève affirme qu'un rectangle n'est pas un parallélogramme car « un parallélogramme est penché ». L'enseignant corrige en disant « apprends la définition par cœur ».",
      explanation:
        "La remédiation est inadaptée. L'erreur vient d'une image mentale figée (parallélogramme = quadrilatère « penché »), pas d'un manque de mémorisation. Il faut travailler sur la hiérarchie des quadrilatères par inclusion, en montrant qu'un rectangle vérifie bien toutes les propriétés du parallélogramme.",
    },
    mainTrap:
      "Croire que les erreurs de géométrie sont des erreurs de « connaissance » alors qu'elles sont presque toujours des erreurs de « raisonnement visuel ». L'élève qui ne reconnaît pas un triangle rectangle quand l'angle droit n'est pas en bas à gauche ne manque pas de savoir : il manque d'expérience avec des configurations variées. Le levier pédagogique est la manipulation et la diversification des représentations, pas la répétition de définitions.",
    quiz: [
      {
        sentence:
          "L'obstacle du prototype en géométrie signifie que l'élève ne reconnaît une figure que dans sa position ou forme habituelle (ex : triangle équilatéral « pointe en haut »).",
        isCorrect: true,
        explanation:
          "VRAI. Le prototype est la représentation mentale « standard » d'une figure. L'élève qui n'a vu que des triangles pointe en haut ne reconnaîtra pas un triangle pointe en bas. Remède : varier les représentations dès le cycle 2.",
      },
      {
        sentence:
          "Si un élève confond aire et périmètre, c'est uniquement parce qu'il ne connaît pas les formules.",
        isCorrect: false,
        explanation:
          "FAUX. La confusion aire/périmètre est un obstacle conceptuel profond, pas un simple oubli de formule. L'élève peut connaître les formules mais ne pas distinguer la notion de « tour » (périmètre = mesure linéaire) de celle de « surface couverte » (aire = mesure en unités carrées). La manipulation (recouvrir une surface vs border un contour) est essentielle.",
      },
      {
        sentence:
          "Présenter des figures toujours dans la même orientation renforce l'apprentissage des propriétés géométriques.",
        isCorrect: false,
        explanation:
          "FAUX. Cela renforce au contraire l'obstacle prototypique. L'élève associe la figure à une position plutôt qu'à ses propriétés. Il faut varier les orientations, tailles et positions pour que l'élève apprenne à identifier les propriétés indépendamment de l'apparence.",
      },
      {
        sentence:
          "Le passage de la géométrie perceptive (cycle 2) à la géométrie déductive (cycle 3-collège) est un saut conceptuel majeur identifié par la didactique.",
        isCorrect: true,
        explanation:
          "VRAI. Houdement et Kuzniak distinguent trois paradigmes : géométrie perceptive (G1, on « voit »), géométrie instrumentée (G2, on trace et mesure) et géométrie déductive (G3, on démontre). Le passage de G1 à G2 puis G3 constitue les transitions les plus difficiles de l'apprentissage géométrique.",
      },
      {
        sentence:
          "Un élève qui trace un « rectangle » avec des côtés légèrement inégaux a simplement fait une erreur de précision manuelle.",
        isCorrect: false,
        explanation:
          "FAUX. Cela peut aussi révéler que l'élève n'a pas intériorisé la propriété « côtés opposés de même longueur » et se fie à l'apparence globale. Il faut vérifier s'il contrôle ses tracés (mesure après construction, vérification à l'équerre). La distinction entre imprécision instrumentale et défaut conceptuel est un diagnostic essentiel pour l'enseignant.",
      },
    ],
  },
};
