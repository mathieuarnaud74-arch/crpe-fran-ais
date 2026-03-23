"use client";

import dynamic from "next/dynamic";
import { useCallback } from "react";

const OnboardingTour = dynamic(
  () =>
    import("@/features/onboarding/components/onboarding-tour").then(
      (mod) => mod.OnboardingTour,
    ),
  { ssr: false },
);

type OnboardingTourWrapperProps = {
  completed: boolean;
};

export function OnboardingTourWrapper({ completed }: OnboardingTourWrapperProps) {
  const handleComplete = useCallback(async () => {
    try {
      await fetch("/api/gamification/onboarding", {
        method: "POST",
      });
    } catch {
      // Silently fail — not critical
    }
  }, []);

  return <OnboardingTour completed={completed} onComplete={handleComplete} />;
}
