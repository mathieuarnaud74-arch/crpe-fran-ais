"use client";

import dynamic from "next/dynamic";

import { cn } from "@/lib/utils";

const CountdownCircleTimer = dynamic(
  () =>
    import("react-countdown-circle-timer").then(
      (mod) => mod.CountdownCircleTimer,
    ),
  {
    ssr: false,
    loading: () => (
      <div className="h-20 w-20 animate-pulse rounded-full bg-secondary" />
    ),
  },
);

type ExerciseTimerProps = {
  duration: number; // seconds
  isPlaying: boolean;
  onComplete: () => void;
  onWarning?: () => void;
  size?: number;
  className?: string;
};

export function ExerciseTimer({
  duration,
  isPlaying,
  onComplete,
  onWarning,
  size = 80,
  className,
}: ExerciseTimerProps) {
  return (
    <div className={cn("flex items-center justify-center", className)}>
      <CountdownCircleTimer
        isPlaying={isPlaying}
        duration={duration}
        colors={["#476257", "#4A6E8F", "#F5A623", "#DC2626"]}
        colorsTime={[duration, duration * 0.6, duration * 0.3, 0]}
        size={size}
        strokeWidth={size > 60 ? 6 : 4}
        trailColor="#EAE4D8"
        onComplete={() => {
          onComplete();
          return { shouldRepeat: false };
        }}
        onUpdate={(remainingTime) => {
          if (remainingTime === 10 && onWarning) {
            onWarning();
          }
        }}
      >
        {({ remainingTime, color }) => (
          <div className="flex flex-col items-center">
            <span
              className={cn(
                "font-serif text-lg font-bold tabular-nums",
                remainingTime <= 10 && "animate-pulse",
              )}
              style={{ color }}
              role="timer"
              aria-live="polite"
              aria-label={`${remainingTime} secondes restantes`}
            >
              {remainingTime}
            </span>
            <span className="text-[9px] text-muted">sec</span>
          </div>
        )}
      </CountdownCircleTimer>
    </div>
  );
}
