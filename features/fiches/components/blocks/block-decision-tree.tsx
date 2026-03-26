"use client";

import { useState } from "react";
import { AnimatePresence, motion } from "framer-motion";

import { cn } from "@/lib/utils";
import type { BlockDecisionTree, DecisionNode } from "@/features/fiches/types";

function TreeNodeInteractive({ node, depth = 0 }: { node: DecisionNode; depth?: number }) {
  const [choice, setChoice] = useState<"yes" | "no" | null>(null);

  if (node.type === "leaf") {
    return (
      <motion.div
        initial={{ opacity: 0, y: 10 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.4, delay: depth * 0.1 }}
        className={cn(
          "rounded-[1rem] border border-accent/20 bg-card px-4 py-3 shadow-subtle",
          depth > 0 && "ml-3 sm:ml-6",
        )}
      >
        <p className="text-xs font-semibold uppercase tracking-[0.10em] text-accent">
          {node.label}
        </p>
        <p className="mt-1 text-base leading-5 text-ink">{node.rule}</p>
        {node.example && (
          <p className="mt-1.5 font-serif text-sm italic text-muted">{node.example}</p>
        )}
      </motion.div>
    );
  }

  return (
    <motion.div
      initial={{ opacity: 0, y: 10 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.4, delay: depth * 0.1 }}
      className={cn("space-y-3", depth > 0 && "ml-6")}
    >
      <div className="rounded-[1rem] border border-border bg-secondary px-4 py-3">
        <p className="text-base font-semibold text-ink">{node.text}</p>
      </div>

      {/* Interactive buttons */}
      {choice === null ? (
        <div className="flex gap-2 pl-4">
          <button
            type="button"
            onClick={() => setChoice("yes")}
            className="rounded-pill border border-successBorder bg-successBg px-4 py-2 text-xs font-bold text-pine transition-all hover:scale-105 hover:shadow-subtle"
          >
            OUI →
          </button>
          <button
            type="button"
            onClick={() => setChoice("no")}
            className="rounded-pill border border-errorBorder bg-errorBg px-4 py-2 text-xs font-bold text-error transition-all hover:scale-105 hover:shadow-subtle"
          >
            NON →
          </button>
        </div>
      ) : (
        <div className="space-y-3 border-l-2 border-dashed border-border pl-4">
          <AnimatePresence mode="wait">
            {choice === "yes" && (
              <motion.div
                key="yes"
                initial={{ opacity: 0, x: -20 }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: 20 }}
                transition={{ duration: 0.3 }}
                className="space-y-2"
              >
                <div className="flex items-center gap-2">
                  <p className="text-xs font-semibold uppercase tracking-[0.12em] text-pine">
                    OUI →
                  </p>
                  <button
                    type="button"
                    onClick={() => setChoice(null)}
                    className="text-[10px] text-muted underline hover:text-ink"
                  >
                    revenir
                  </button>
                </div>
                <TreeNodeInteractive node={node.yes} depth={depth + 1} />
              </motion.div>
            )}
            {choice === "no" && (
              <motion.div
                key="no"
                initial={{ opacity: 0, x: -20 }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: 20 }}
                transition={{ duration: 0.3 }}
                className="space-y-2"
              >
                <div className="flex items-center gap-2">
                  <p className="text-xs font-semibold uppercase tracking-[0.12em] text-muted">
                    NON →
                  </p>
                  <button
                    type="button"
                    onClick={() => setChoice(null)}
                    className="text-[10px] text-muted underline hover:text-ink"
                  >
                    revenir
                  </button>
                </div>
                <TreeNodeInteractive node={node.no} depth={depth + 1} />
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      )}
    </motion.div>
  );
}

export function BlockDecisionTree({ block }: { block: BlockDecisionTree }) {
  return (
    <div className="rounded-[1.25rem] border border-border bg-paper p-5">
      <p className="mb-4 text-xs font-semibold uppercase tracking-[0.16em] text-muted">
        Arbre de d&eacute;cision interactif
      </p>
      <TreeNodeInteractive node={block.root} />
    </div>
  );
}
