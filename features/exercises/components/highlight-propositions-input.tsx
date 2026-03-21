"use client";

import { useState } from "react";

import { cn } from "@/lib/utils";
import { ExerciseChoice, HighlightGroup } from "@/types/domain";

type SessionResult = { isCorrect: boolean };

type Props = {
  segments: ExerciseChoice[];
  groups: HighlightGroup[];
  onChange: (value: string) => void;
  result: SessionResult | undefined;
  expectedMapping: Record<string, string>;
  disabled: boolean;
};

const GROUP_STYLES: Record<string, { bg: string; border: string; text: string }> = {
  p1: {
    bg: "bg-blue-100",
    border: "border-blue-300",
    text: "text-blue-800",
  },
  p2: {
    bg: "bg-amber-100",
    border: "border-amber-300",
    text: "text-amber-800",
  },
  p3: {
    bg: "bg-emerald-100",
    border: "border-emerald-300",
    text: "text-emerald-800",
  },
  p4: {
    bg: "bg-purple-100",
    border: "border-purple-300",
    text: "text-purple-800",
  },
};

function getGroupStyle(groupId: string) {
  return GROUP_STYLES[groupId] ?? GROUP_STYLES.p1;
}

export function HighlightPropositionsInput({
  segments,
  groups,
  onChange,
  result,
  expectedMapping,
  disabled,
}: Props) {
  const [assignment, setAssignment] = useState<Record<string, string>>({});

  function cycleSegment(segmentId: string) {
    if (disabled) return;

    const currentGroupId = assignment[segmentId];
    const groupIds = groups.map((g) => g.id);
    const currentIndex = currentGroupId ? groupIds.indexOf(currentGroupId) : -1;
    const nextIndex = currentIndex + 1;

    const next = { ...assignment };
    if (nextIndex >= groupIds.length) {
      delete next[segmentId];
    } else {
      next[segmentId] = groupIds[nextIndex];
    }

    setAssignment(next);

    const allAssigned = segments.every((s) => s.id in next);
    onChange(allAssigned ? JSON.stringify(next) : "");
  }

  function getSegmentCorrectness(segmentId: string): boolean | null {
    if (!result) return null;
    return assignment[segmentId] === expectedMapping[segmentId];
  }

  const wrongSegments =
    result && !result.isCorrect
      ? segments.filter((s) => assignment[s.id] !== expectedMapping[s.id])
      : [];

  return (
    <div className="space-y-5">
      <div>
        <p className="mb-2 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
          Cliquez sur chaque segment pour l&apos;attribuer à une proposition
        </p>
        <div className="flex items-center gap-3 mb-4">
          {groups.map((group) => {
            const style = getGroupStyle(group.id);
            return (
              <span
                key={group.id}
                className={cn(
                  "inline-flex items-center gap-1.5 rounded-full border px-3 py-1 text-xs font-semibold",
                  style.bg,
                  style.border,
                  style.text,
                )}
              >
                <span
                  className={cn(
                    "inline-block h-2.5 w-2.5 rounded-full",
                    group.color === "blue" && "bg-blue-400",
                    group.color === "amber" && "bg-amber-400",
                    group.color === "emerald" && "bg-emerald-400",
                    group.color === "purple" && "bg-purple-400",
                  )}
                />
                {group.label}
              </span>
            );
          })}
        </div>
      </div>

      <div className="flex flex-wrap items-baseline gap-x-1.5 gap-y-2 rounded-[1.5rem] border border-border bg-paper px-5 py-5 text-base leading-8">
        {segments.map((segment) => {
          const groupId = assignment[segment.id];
          const style = groupId ? getGroupStyle(groupId) : null;
          const correctness = getSegmentCorrectness(segment.id);
          const expectedGroupId = expectedMapping[segment.id];
          const expectedStyle = expectedGroupId ? getGroupStyle(expectedGroupId) : null;

          return (
            <button
              key={segment.id}
              type="button"
              onClick={() => cycleSegment(segment.id)}
              disabled={disabled}
              className={cn(
                "relative rounded-lg border-2 px-2 py-0.5 text-base font-medium transition-all duration-150",
                !disabled && "cursor-pointer hover:scale-[1.03] active:scale-[0.98]",
                disabled && "cursor-default",
                !groupId && !result && "border-transparent bg-transparent text-ink hover:border-border hover:bg-secondary",
                groupId && !result && style && cn(style.bg, style.border, style.text),
                correctness === true && expectedStyle && cn(expectedStyle.bg, "border-successBorder shadow-subtle"),
                correctness === false && expectedStyle && cn(expectedStyle.bg, "border-errorBorder opacity-60"),
              )}
            >
              {segment.label}
              {correctness === true && (
                <span className="absolute -right-1 -top-1 flex h-4 w-4 items-center justify-center rounded-full bg-successBg text-pine text-[10px]">
                  ✓
                </span>
              )}
              {correctness === false && (
                <span className="absolute -right-1 -top-1 flex h-4 w-4 items-center justify-center rounded-full bg-errorBg text-error text-[10px]">
                  ✗
                </span>
              )}
            </button>
          );
        })}
      </div>

      {!result && (
        <p className="text-xs text-muted">
          {segments.every((s) => s.id in assignment)
            ? "Tous les segments sont attribués — vous pouvez valider."
            : `${segments.filter((s) => s.id in assignment).length} / ${segments.length} segments attribués`}
        </p>
      )}

      {wrongSegments.length > 0 && (
        <div className="rounded-[1.25rem] border border-errorBorder bg-errorBg px-4 py-3 text-sm">
          <p className="mb-2 font-semibold text-ink">
            {wrongSegments.length === 1
              ? "1 segment mal attribué :"
              : `${wrongSegments.length} segments mal attribués :`}
          </p>
          <ul className="space-y-1 text-muted">
            {wrongSegments.map((segment) => {
              const correctGroup = groups.find((g) => g.id === expectedMapping[segment.id]);
              const placedGroup = groups.find((g) => g.id === assignment[segment.id]);
              return (
                <li key={segment.id}>
                  <span className="font-medium text-ink">&laquo;&nbsp;{segment.label}&nbsp;&raquo;</span>
                  {" → "}
                  <span className="font-medium text-pine">{correctGroup?.label}</span>
                  {placedGroup && (
                    <span className="text-error"> (attribué à : {placedGroup.label})</span>
                  )}
                </li>
              );
            })}
          </ul>
        </div>
      )}
    </div>
  );
}
