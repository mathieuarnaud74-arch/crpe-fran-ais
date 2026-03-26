import type { BlockRule } from "@/features/fiches/types";

export function BlockRule({ block }: { block: BlockRule }) {
  return (
    <div className="rounded-[1.25rem] border border-accent/20 bg-card p-5 shadow-subtle">
      <div className="border-l-4 border-accent pl-4">
        <p className="text-base font-semibold leading-7 text-ink">{block.content}</p>
      </div>
      {block.linguisticLogic && (
        <p className="mt-3 pl-4 text-sm leading-6 text-muted">
          <span className="font-semibold text-accent">Pourquoi ? </span>
          {block.linguisticLogic}
        </p>
      )}
      {block.watchout && (
        <div className="mt-3 rounded-[0.9rem] bg-warningBg px-4 py-2.5">
          <p className="text-sm leading-5 text-warning">
            <span className="font-semibold">Attention : </span>
            {block.watchout}
          </p>
        </div>
      )}
    </div>
  );
}
