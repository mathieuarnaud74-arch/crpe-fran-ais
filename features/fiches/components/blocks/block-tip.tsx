import { Lightbulb } from "lucide-react";
import type { BlockTip } from "@/features/fiches/types";

export function BlockTip({ block }: { block: BlockTip }) {
  return (
    <div className="rounded-[1.1rem] border border-accentSecondary/25 bg-accentSecondarySoft px-4 py-4">
      <div className="flex items-start gap-3">
        <Lightbulb
          className="mt-0.5 h-4 w-4 shrink-0 text-accentSecondary"
          aria-hidden="true"
        />
        <p className="text-sm leading-6 text-accentSecondaryDark">{block.text}</p>
      </div>
    </div>
  );
}
