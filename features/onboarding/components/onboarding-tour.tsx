"use client";

import { useEffect, useRef } from "react";

type OnboardingTourProps = {
  completed: boolean;
  onComplete: () => void;
};

export function OnboardingTour({ completed, onComplete }: OnboardingTourProps) {
  const hasRun = useRef(false);

  useEffect(() => {
    if (completed || hasRun.current) return;
    hasRun.current = true;

    // Small delay to let the page render
    const timeout = setTimeout(async () => {
      // @ts-expect-error — CSS module import for side effects
      await import("driver.js/dist/driver.css");
      const { driver } = await import("driver.js");

      const driverObj = driver({
        showProgress: true,
        allowClose: true,
        doneBtnText: "C'est parti !",
        nextBtnText: "Suivant",
        prevBtnText: "Précédent",
        progressText: "{{current}} / {{total}}",
        popoverClass: "onboarding-popover",
        steps: [
          {
            popover: {
              title: "Bienvenue sur CRPE Prep ! 🎓",
              description:
                "Découvrez votre plateforme de révision pour le CRPE. On vous fait visiter en quelques étapes !",
            },
          },
          {
            element: "[data-tour='xp-card']",
            popover: {
              title: "Votre niveau & XP ⭐",
              description:
                "Chaque question vous rapporte de l'XP. Montez de niveau en révisant régulièrement !",
            },
          },
          {
            element: "[data-tour='stats-strip']",
            popover: {
              title: "Vos statistiques 📊",
              description:
                "Suivez vos séries maîtrisées, votre score global et votre progression ici.",
            },
          },
          {
            element: "[data-tour='radar']",
            popover: {
              title: "Radar de compétences 🎯",
              description:
                "Visualisez vos forces et faiblesses par domaine. Le radar se met à jour après chaque exercice.",
            },
          },
          {
            element: "[data-tour='heatmap']",
            popover: {
              title: "Activité & régularité 📅",
              description:
                "Gardez votre streak en révisant chaque jour ! La régularité est la clé de la réussite au CRPE.",
            },
          },
          {
            element: "[data-tour='badges']",
            popover: {
              title: "Badges & récompenses 🏅",
              description:
                "Débloquez des badges en atteignant des objectifs. Plus de 130 badges vous attendent !",
            },
          },
          {
            popover: {
              title: "Prêt(e) à réviser ! 🚀",
              description:
                "Commencez par le diagnostic pour identifier vos priorités, puis lancez-vous dans les exercices. Bonne chance pour le CRPE !",
            },
          },
        ],
        onDestroyStarted: () => {
          onComplete();
          driverObj.destroy();
        },
      });

      driverObj.drive();
    }, 1000);

    return () => clearTimeout(timeout);
  }, [completed, onComplete]);

  return null;
}
