"use client";

import { CircularProgressbar, buildStyles } from "react-circular-progressbar";
import "react-circular-progressbar/dist/styles.css";

import { cn } from "@/lib/utils";

type DomainGaugeProps = {
  label: string;
  percentage: number;
  status: "prioritaire" | "fragile" | "en_cours" | "acquis";
  className?: string;
};

const STATUS_COLORS: Record<DomainGaugeProps["status"], { path: string; trail: string; text: string }> = {
  prioritaire: { path: "#DC2626", trail: "#FEF2F2", text: "#DC2626" },
  fragile: { path: "#F5A623", trail: "#FFF8EB", text: "#F5A623" },
  en_cours: { path: "#4A6E8F", trail: "#EAE4D8", text: "#4A6E8F" },
  acquis: { path: "#476257", trail: "#F0FAF5", text: "#476257" },
};

export function DomainGauge({ label, percentage, status, className }: DomainGaugeProps) {
  const colors = STATUS_COLORS[status];
  const displayPercent = Math.round(percentage);

  return (
    <div className={cn("flex flex-col items-center gap-2", className)}>
      <div className="h-20 w-20">
        <CircularProgressbar
          value={displayPercent}
          text={`${displayPercent}%`}
          styles={buildStyles({
            textSize: "24px",
            pathColor: colors.path,
            textColor: colors.text,
            trailColor: colors.trail,
            pathTransitionDuration: 1.5,
          })}
        />
      </div>
      <p className="text-center text-xs font-medium text-ink">{label}</p>
    </div>
  );
}
