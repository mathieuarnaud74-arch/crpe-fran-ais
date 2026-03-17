import { cn } from "@/lib/utils";
import type { BlockExample } from "@/features/fiches/types";

export function BlockExample({ block }: { block: BlockExample }) {
  const hasValidity = block.isCorrect !== undefined;

  return (
    <div
      className={cn(
        "rounded-[1.1rem] border px-4 py-3",
        hasValidity && block.isCorrect && "border-successBorder bg-successBg",
        hasValidity && !block.isCorrect && "border-errorBorder bg-errorBg",
        !hasValidity && "border-border bg-paper",
      )}
    >
      {hasValidity && (
        <span
          className={cn(
            "mb-1.5 inline-block text-xs font-semibold uppercase tracking-[0.12em]",
            block.isCorrect ? "text-pine" : "text-error",
          )}
        >
          {block.isCorrect ? "✓ Correct" : "✗ Incorrect"}
        </span>
      )}
      <p className="font-serif text-sm font-medium text-ink">{block.sentence}</p>
      {block.annotation && (
        <p className="mt-1.5 text-xs leading-5 text-muted">{block.annotation}</p>
      )}
    </div>
  );
}
