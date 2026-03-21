"use client";

import { useCallback } from "react";

import { OnboardingTour } from "@/features/onboarding/components/onboarding-tour";

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
