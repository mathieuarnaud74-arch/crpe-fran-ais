"use client";

import { TypeAnimation } from "react-type-animation";

import { Mocca, type MoccaVariant } from "@/components/mascot/mocca";
import { cn } from "@/lib/utils";

type MoccaWithMessageProps = {
  variant: MoccaVariant;
  message: string;
  typewriter?: boolean;
  size?: "sm" | "md" | "lg";
  className?: string;
};

export function MoccaWithMessage({
  variant,
  message,
  typewriter = false,
  size = "md",
  className,
}: MoccaWithMessageProps) {
  return (
    <div className={cn("flex items-start gap-3", className)}>
      <Mocca variant={variant} size={size} className="shrink-0" />
      <div className="relative rounded-inner border border-border/50 bg-card/80 px-4 py-3 shadow-subtle">
        {/* Speech bubble arrow */}
        <div className="absolute -left-2 top-4 h-0 w-0 border-y-[6px] border-r-[8px] border-y-transparent border-r-card/80" />
        {typewriter ? (
          <TypeAnimation
            sequence={[message]}
            wrapper="p"
            speed={60}
            cursor={false}
            className="text-sm leading-relaxed text-ink"
          />
        ) : (
          <p className="text-sm leading-relaxed text-ink">{message}</p>
        )}
      </div>
    </div>
  );
}
