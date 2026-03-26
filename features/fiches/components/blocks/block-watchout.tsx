import { AlertTriangle } from "lucide-react";
import type { BlockWatchout } from "@/features/fiches/types";

export function BlockWatchout({ block }: { block: BlockWatchout }) {
  return (
    <div className="space-y-3">
      {block.items.map((item, i) => (
        <div
          key={i}
          className="rounded-[1.1rem] border border-warningBorder bg-warningBg px-4 py-4"
        >
          <div className="flex items-start gap-3">
            <AlertTriangle className="mt-0.5 h-4 w-4 shrink-0 text-warning" aria-hidden="true" />
            <div className="space-y-1">
              <p className="text-sm font-semibold text-warning">{item.label}</p>
              <p className="text-sm leading-5 text-ink/80">{item.explanation}</p>
              {item.correction && (
                <p className="mt-2 rounded-[0.75rem] border border-border bg-paper px-3 py-1.5 font-mono text-xs text-ink">
                  {item.correction}
                </p>
              )}
            </div>
          </div>
        </div>
      ))}
    </div>
  );
}
