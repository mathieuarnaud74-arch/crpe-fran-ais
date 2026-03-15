import { cva, type VariantProps } from "class-variance-authority";
import * as React from "react";

import { cn } from "@/lib/utils";

const badgeVariants = cva(
  "inline-flex items-center rounded-full border font-semibold",
  {
    variants: {
      tone: {
        neutral: "border-border bg-secondary/70 text-muted",
        accent: "border-accent/20 bg-secondary text-accentDark",
        accentSecondary: "border-accentSecondary/30 bg-accentSecondarySoft text-accentSecondaryDark",
        success: "border-successBorder bg-successBg text-pine",
        warning: "border-warningBorder bg-warningBg text-warning",
        error: "border-errorBorder bg-errorBg text-error",
      },
      size: {
        md: "px-3 py-1 text-xs tracking-[0.10em]",
        sm: "px-2 py-0.5 text-[0.65rem] uppercase tracking-[0.12em]",
      },
    },
    defaultVariants: {
      tone: "neutral",
      size: "md",
    },
  },
);

export interface BadgeProps
  extends React.HTMLAttributes<HTMLSpanElement>,
    VariantProps<typeof badgeVariants> {}

function Badge({ className, tone, size, ...props }: BadgeProps) {
  return (
    <span className={cn(badgeVariants({ tone, size }), className)} {...props} />
  );
}

export { Badge, badgeVariants };
