import type { Fiche } from "@/features/fiches/types";

export const grandeursUnitesComposeesSprint: Fiche = {
  id: "grandeurs-unites-composees-sprint",
  slug: "unites-composees-vitesses-debits-densites",
  title: "Unités composées : vitesses, débits, densités",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "unités composées",
    "vitesse",
    "débit",
    "densité",
    "conversion",
    "km/h",
    "m/s",
    "grandeurs quotient",
  ],
  notionsLiees: [
    "grandeurs-conversions-reference",
    "grandeurs-conversion-operatoire",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les unités composées. Pour les conversions de grandeurs simples (longueur, masse, capacité), consulte les fiches sprint dédiées.",
    oneLiner:
      "Une unité composée combine deux grandeurs par division (km/h, L/min, g/cm³). Pour convertir, on convertit séparément le numérateur et le dénominateur. Retenir : 1 m/s = 3,6 km/h (on multiplie par 3,6 pour passer de m/s à km/h).",
    exampleCorrect: {
      sentence:
        "Convertir 90 km/h en m/s : 90 km/h = 90 000 m / 3 600 s = 25 m/s. Vérification : 25 × 3,6 = 90. ✓",
      explanation:
        "On convertit chaque unité séparément. 90 km = 90 000 m. 1 h = 3 600 s. On divise : 90 000 / 3 600 = 25. Astuce : diviser par 3,6 donne directement le résultat (90 / 3,6 = 25).",
    },
    exampleWrong: {
      sentence:
        "Pour convertir 90 km/h en m/s, on divise par 60 : 90 / 60 = 1,5 m/s.",
      explanation:
        "Erreur : diviser par 60 ne convertit que les minutes en heures (ou inversement). La conversion km/h → m/s nécessite de convertir à la fois les km en m (× 1 000) et les heures en secondes (× 3 600). Le coefficient est 1 000 / 3 600 = 1/3,6 ≈ 0,278.",
    },
    mainTrap:
      "Confondre « multiplier par 3,6 » et « diviser par 3,6 ». Moyen mnémotechnique : m/s est une unité plus petite que km/h (1 m/s ≈ 3,6 km/h), donc le nombre en km/h est toujours plus grand. Pour passer de m/s à km/h on multiplie par 3,6 ; pour passer de km/h à m/s on divise par 3,6.",
    quiz: [
      {
        sentence: "Un robinet débite 0,5 L/min. En 1 heure, il remplit 30 L.",
        isCorrect: true,
        explanation:
          "VRAI. 0,5 L/min × 60 min = 30 L. Le débit est une grandeur composée : volume / temps.",
      },
      {
        sentence:
          "La densité de l'eau est 1 g/cm³, ce qui signifie que 1 m³ d'eau pèse 1 kg.",
        isCorrect: false,
        explanation:
          "FAUX. 1 g/cm³ = 1 000 kg/m³ (car 1 m³ = 1 000 000 cm³ et 1 000 000 g = 1 000 kg). Donc 1 m³ d'eau pèse 1 000 kg = 1 tonne, pas 1 kg.",
      },
      {
        sentence: "36 km/h = 10 m/s.",
        isCorrect: true,
        explanation:
          "VRAI. 36 / 3,6 = 10. Ou : 36 000 m / 3 600 s = 10 m/s.",
      },
      {
        sentence:
          "Pour convertir des L/min en L/h, on divise par 60.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'inverse : on multiplie par 60. En 1 heure il y a 60 minutes, donc le débit horaire est 60 fois le débit par minute. 2 L/min = 120 L/h.",
      },
      {
        sentence:
          "Une vitesse de 5 m/s signifie qu'on parcourt 5 mètres chaque seconde.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition même d'une grandeur quotient : la vitesse v = d/t exprime la distance parcourue par unité de temps.",
      },
    ],
  },
};
