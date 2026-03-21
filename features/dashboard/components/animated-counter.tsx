"use client";

import CountUp from "react-countup";

import { cn } from "@/lib/utils";

type AnimatedCounterProps = {
  end: number;
  suffix?: string;
  prefix?: string;
  decimals?: number;
  duration?: number;
  className?: string;
};

export function AnimatedCounter({
  end,
  suffix = "",
  prefix = "",
  decimals = 0,
  duration = 1.5,
  className,
}: AnimatedCounterProps) {
  return (
    <CountUp
      end={end}
      suffix={suffix}
      prefix={prefix}
      decimals={decimals}
      duration={duration}
      separator=" "
      className={cn("tabular-nums", className)}
    />
  );
}
