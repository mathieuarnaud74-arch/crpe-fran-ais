import { cn } from "@/lib/utils";
import type { BlockDecisionTree, DecisionNode } from "@/features/fiches/types";

function TreeNode({ node, depth = 0 }: { node: DecisionNode; depth?: number }) {
  if (node.type === "leaf") {
    return (
      <div
        className={cn(
          "rounded-[1rem] border border-accent/20 bg-card px-4 py-3 shadow-subtle",
          depth > 0 && "ml-3 sm:ml-6",
        )}
      >
        <p className="text-xs font-semibold uppercase tracking-[0.10em] text-accent">
          {node.label}
        </p>
        <p className="mt-1 text-sm leading-5 text-ink">{node.rule}</p>
        {node.example && (
          <p className="mt-1.5 font-serif text-xs italic text-muted">{node.example}</p>
        )}
      </div>
    );
  }

  return (
    <div className={cn("space-y-3", depth > 0 && "ml-6")}>
      <div className="rounded-[1rem] border border-border bg-secondary px-4 py-3">
        <p className="text-sm font-semibold text-ink">{node.text}</p>
      </div>

      <div className="space-y-3 border-l-2 border-dashed border-border pl-4">
        <div className="space-y-2">
          <p className="text-xs font-semibold uppercase tracking-[0.12em] text-pine">
            OUI →
          </p>
          <TreeNode node={node.yes} depth={depth + 1} />
        </div>

        <div className="space-y-2">
          <p className="text-xs font-semibold uppercase tracking-[0.12em] text-muted">
            NON →
          </p>
          <TreeNode node={node.no} depth={depth + 1} />
        </div>
      </div>
    </div>
  );
}

export function BlockDecisionTree({ block }: { block: BlockDecisionTree }) {
  return (
    <div className="rounded-[1.25rem] border border-border bg-paper p-5">
      <p className="mb-4 text-xs font-semibold uppercase tracking-[0.16em] text-muted">
        Arbre de décision
      </p>
      <TreeNode node={block.root} />
    </div>
  );
}
