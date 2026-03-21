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

const GROUP_COLORS: Record<
  string,
  { bg: string; bgActive: string; border: string; borderActive: string; text: string; ring: string; dot: string }
> = {
  blue: {
    bg: "bg-blue-50",
    bgActive: "bg-blue-100",
    border: "border-blue-200",
    borderActive: "border-blue-400",
    text: "text-blue-800",
    ring: "ring-blue-300",
    dot: "bg-blue-400",
  },
  amber: {
    bg: "bg-amber-50",
    bgActive: "bg-amber-100",
    border: "border-amber-200",
    borderActive: "border-amber-400",
    text: "text-amber-800",
    ring: "ring-amber-300",
    dot: "bg-amber-400",
  },
  emerald: {
    bg: "bg-emerald-50",
    bgActive: "bg-emerald-100",
    border: "border-emerald-200",
    borderActive: "border-emerald-400",
    text: "text-emerald-800",
    ring: "ring-emerald-300",
    dot: "bg-emerald-400",
  },
  purple: {
    bg: "bg-purple-50",
    bgActive: "bg-purple-100",
    border: "border-purple-200",
    borderActive: "border-purple-400",
    text: "text-purple-800",
    ring: "ring-purple-300",
    dot: "bg-purple-400",
  },
};

function getColors(color: string) {
  return GROUP_COLORS[color] ?? GROUP_COLORS.blue;
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
  const [activeGroupId, setActiveGroupId] = useState<string | null>(groups[0]?.id ?? null);

  function handleSegmentClick(segmentId: string) {
    if (disabled || !activeGroupId) return;

    const next = { ...assignment };
    if (next[segmentId] === activeGroupId) {
      delete next[segmentId];
    } else {
      next[segmentId] = activeGroupId;
    }

    setAssignment(next);
    const allAssigned = segments.every((s) => s.id in next);
    onChange(allAssigned ? JSON.stringify(next) : "");
  }

  function getSegmentCorrectness(segmentId: string): boolean | null {
    if (!result) return null;
    return assignment[segmentId] === expectedMapping[segmentId];
  }

  const assignedCount = segments.filter((s) => s.id in assignment).length;
  const allAssigned = assignedCount === segments.length;

  const wrongSegments =
    result && !result.isCorrect
      ? segments.filter((s) => assignment[s.id] !== expectedMapping[s.id])
      : [];

  return (
    <div className="space-y-5">
      {!result && (
        <div>
          <p className="mb-3 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            1. Choisissez une proposition, puis cliquez les mots correspondants
          </p>
          <div className="flex flex-wrap items-center gap-2">
            {groups.map((group) => {
              const colors = getColors(group.color);
              const isActive = activeGroupId === group.id;
              const count = Object.values(assignment).filter((v) => v === group.id).length;
              return (
                <button
                  key={group.id}
                  type="button"
                  onClick={() => setActiveGroupId(group.id)}
                  disabled={disabled}
                  className={cn(
                    "inline-flex items-center gap-2 rounded-full border-2 px-4 py-2 text-sm font-semibold transition-all",
                    isActive
                      ? cn(colors.bgActive, colors.borderActive, colors.text, "shadow-subtle ring-2", colors.ring)
                      : cn(colors.bg, colors.border, colors.text, "opacity-70 hover:opacity-100"),
                    disabled && "cursor-default opacity-50",
                  )}
                >
                  <span className={cn("inline-block h-3 w-3 rounded-full", colors.dot)} />
                  {group.label}
                  {count > 0 && (
                    <span className={cn("ml-0.5 inline-flex h-5 min-w-5 items-center justify-center rounded-full text-[11px] font-bold", colors.bgActive, colors.text)}>
                      {count}
                    </span>
                  )}
                </button>
              );
            })}
          </div>
        </div>
      )}

      {result && (
        <div className="flex flex-wrap items-center gap-2">
          {groups.map((group) => {
            const colors = getColors(group.color);
            return (
              <span
                key={group.id}
                className={cn(
                  "inline-flex items-center gap-1.5 rounded-full border px-3 py-1 text-xs font-semibold",
                  colors.bg, colors.border, colors.text,
                )}
              >
                <span className={cn("inline-block h-2.5 w-2.5 rounded-full", colors.dot)} />
                {group.label}
              </span>
            );
          })}
        </div>
      )}

      <div className="rounded-[1.5rem] border border-border bg-paper px-5 py-5">
        <p className="flex flex-wrap items-baseline gap-x-1 gap-y-2 text-lg leading-9">
          {segments.map((segment) => {
            const groupId = assignment[segment.id];
            const group = groups.find((g) => g.id === groupId);
            const colors = group ? getColors(group.color) : null;
            const correctness = getSegmentCorrectness(segment.id);
            const expectedGroupId = expectedMapping[segment.id];
            const expectedGroup = groups.find((g) => g.id === expectedGroupId);
            const expectedColors = expectedGroup ? getColors(expectedGroup.color) : null;

            const showExpected = result && expectedColors;

            return (
              <button
                key={segment.id}
                type="button"
                onClick={() => handleSegmentClick(segment.id)}
                disabled={disabled}
                className={cn(
                  "relative rounded-lg border-2 px-1.5 py-0.5 font-medium transition-all duration-150",
                  !disabled && "cursor-pointer hover:scale-[1.02] active:scale-[0.98]",
                  disabled && "cursor-default",
                  !groupId && !result && "border-dashed border-border/60 text-ink hover:border-muted hover:bg-secondary/50",
                  groupId && !result && colors && cn(colors.bgActive, colors.borderActive, colors.text),
                  showExpected && correctness === true && expectedColors && cn(expectedColors.bgActive, "border-green-400"),
                  showExpected && correctness === false && expectedColors && cn(expectedColors.bgActive, "border-red-400 border-dashed"),
                )}
              >
                {segment.label}
                {correctness === true && (
                  <span className="absolute -right-1.5 -top-1.5 flex h-4 w-4 items-center justify-center rounded-full bg-green-100 text-green-700 text-[10px] font-bold">
                    ✓
                  </span>
                )}
                {correctness === false && (
                  <span className="absolute -right-1.5 -top-1.5 flex h-4 w-4 items-center justify-center rounded-full bg-red-100 text-red-600 text-[10px] font-bold">
                    ✗
                  </span>
                )}
              </button>
            );
          })}
        </p>
      </div>

      {!result && (
        <p className="text-xs text-muted">
          {allAssigned
            ? "Tous les mots sont attribués — vous pouvez valider."
            : `${assignedCount} / ${segments.length} mots attribués`}
        </p>
      )}

      {wrongSegments.length > 0 && (
        <div className="rounded-[1.25rem] border border-red-200 bg-red-50 px-4 py-3 text-sm">
          <p className="mb-2 font-semibold text-ink">
            {wrongSegments.length === 1
              ? "1 mot mal attribué :"
              : `${wrongSegments.length} mots mal attribués :`}
          </p>
          <ul className="space-y-1 text-muted">
            {wrongSegments.map((segment) => {
              const correctGroup = groups.find((g) => g.id === expectedMapping[segment.id]);
              const placedGroup = groups.find((g) => g.id === assignment[segment.id]);
              return (
                <li key={segment.id}>
                  <span className="font-medium text-ink">&laquo;&nbsp;{segment.label}&nbsp;&raquo;</span>
                  {" → "}
                  <span className="font-medium text-green-700">{correctGroup?.label}</span>
                  {placedGroup && (
                    <span className="text-red-600"> (placé dans : {placedGroup.label})</span>
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
