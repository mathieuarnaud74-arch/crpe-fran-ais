import type { FicheBlock } from "@/features/fiches/types";
import { BlockDecisionTree } from "./blocks/block-decision-tree";
import { BlockDidactic } from "./blocks/block-didactic";
import { BlockExample } from "./blocks/block-example";
import { BlockRelated } from "./blocks/block-related";
import { BlockRule } from "./blocks/block-rule";
import { BlockTable } from "./blocks/block-table";
import { BlockTip } from "./blocks/block-tip";
import { BlockWatchout } from "./blocks/block-watchout";

export function FicheBlockRenderer({ block }: { block: FicheBlock }) {
  switch (block.kind) {
    case "rule":
      return <BlockRule block={block} />;
    case "example":
      return <BlockExample block={block} />;
    case "table":
      return <BlockTable block={block} />;
    case "watchout":
      return <BlockWatchout block={block} />;
    case "tip":
      return <BlockTip block={block} />;
    case "decision-tree":
      return <BlockDecisionTree block={block} />;
    case "didactic":
      return <BlockDidactic block={block} />;
    case "related":
      return <BlockRelated block={block} />;
  }
}
