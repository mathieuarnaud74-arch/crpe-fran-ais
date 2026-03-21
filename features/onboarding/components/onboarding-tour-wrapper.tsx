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
  userId: string;
};

export function OnboardingTourWrapper({ completed, userId }: OnboardingTourWrapperProps) {
  const handleComplete = useCallback(async () => {
    try {
      await fetch("/api/gamification/onboarding", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ userId }),
      });
    } catch {
      // Silently fail — not critical
    }
  }, [userId]);

  return <OnboardingTour completed={completed} onComplete={handleComplete} />;
}
