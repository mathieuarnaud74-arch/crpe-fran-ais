"use client";

import { useMemo, useState } from "react";

import { cn } from "@/lib/utils";
import { DailyActivityEntry } from "@/types/domain";

type ActivityHeatmapProps = {
  dailyActivity: DailyActivityEntry[];
  weeks?: number;
};

const DAY_LABELS = ["L", "", "M", "", "V", "", "D"];
const MONTH_LABELS = [
  "Jan",
  "Fév",
  "Mar",
  "Avr",
  "Mai",
  "Juin",
  "Juil",
  "Août",
  "Sep",
  "Oct",
  "Nov",
  "Déc",
];

function getIntensity(count: number): 0 | 1 | 2 | 3 | 4 {
  if (count === 0) return 0;
  if (count <= 3) return 1;
  if (count <= 8) return 2;
  if (count <= 15) return 3;
  return 4;
}

const INTENSITY_COLORS: Record<0 | 1 | 2 | 3 | 4, string> = {
  0: "#EAE4D8",
  1: "#A3BDB5",
  2: "#6B8F80",
  3: "#476257",
  4: "#394E45",
};

const INTENSITY_BG_CLASSES: Record<0 | 1 | 2 | 3 | 4, string> = {
  0: "bg-secondary",
  1: "bg-[#A3BDB5]",
  2: "bg-[#6B8F80]",
  3: "bg-[#476257]",
  4: "bg-[#394E45]",
};

export function ActivityHeatmap({ dailyActivity, weeks = 13 }: ActivityHeatmapProps) {
  const [tooltip, setTooltip] = useState<{
    date: string;
    count: number;
    x: number;
    y: number;
  } | null>(null);

  const { grid, monthHeaders, totalCount } = useMemo(() => {
    const activityMap = new Map<string, DailyActivityEntry>();
    for (const entry of dailyActivity) {
      activityMap.set(entry.date, entry);
    }

    const today = new Date();
    const totalDays = weeks * 7;
    const cells: Array<{
      date: string;
      count: number;
      dayOfWeek: number;
      weekIndex: number;
    }> = [];

    const startDate = new Date(today);
    startDate.setDate(startDate.getDate() - totalDays + 1);
    const startDow = (startDate.getDay() + 6) % 7;
    startDate.setDate(startDate.getDate() - startDow);

    const actualTotalDays = totalDays + startDow;
    let total = 0;

    for (let i = 0; i < actualTotalDays; i++) {
      const d = new Date(startDate);
      d.setDate(d.getDate() + i);
      const dateStr = d.toISOString().slice(0, 10);
      const dayOfWeek = (d.getDay() + 6) % 7;
      const weekIndex = Math.floor(i / 7);
      const entry = activityMap.get(dateStr);
      const count = entry?.count ?? 0;
      total += count;
      cells.push({ date: dateStr, count, dayOfWeek, weekIndex });
    }

    const totalWeeks = Math.ceil(actualTotalDays / 7);
    const gridData: Array<Array<(typeof cells)[0] | null>> = [];

    const cellMap = new Map<string, (typeof cells)[0]>();
    for (const c of cells) cellMap.set(`${c.weekIndex}-${c.dayOfWeek}`, c);

    for (let w = 0; w < totalWeeks; w++) {
      const week: Array<(typeof cells)[0] | null> = [];
      for (let d = 0; d < 7; d++) {
        week.push(cellMap.get(`${w}-${d}`) ?? null);
      }
      gridData.push(week);
    }

    const headers: Array<{ label: string; weekIndex: number }> = [];
    let lastMonth = -1;
    for (let w = 0; w < totalWeeks; w++) {
      const firstCell = gridData[w]?.find((c) => c !== null);
      if (firstCell) {
        const month = new Date(firstCell.date).getMonth();
        if (month !== lastMonth) {
          headers.push({ label: MONTH_LABELS[month], weekIndex: w });
          lastMonth = month;
        }
      }
    }

    return { grid: gridData, monthHeaders: headers, totalCount: total };
  }, [dailyActivity, weeks]);

  const cellSize = 10;
  const cellGap = 2;
  const labelWidth = 16;
  const headerHeight = 14;
  const totalWidth = labelWidth + grid.length * (cellSize + cellGap);
  const totalHeight = headerHeight + 7 * (cellSize + cellGap);

  return (
    <div className="space-y-2">
      <div className="flex items-end justify-between gap-3">
        <p className="text-xs text-muted">
          <span className="font-semibold text-ink">{totalCount}</span>{" "}
          réponse{totalCount !== 1 ? "s" : ""} sur {weeks} sem.
        </p>
        <div className="flex items-center gap-1 text-[0.55rem] text-muted">
          <span>Moins</span>
          {([0, 1, 2, 3, 4] as const).map((level) => (
            <span
              key={level}
              className={cn(
                "inline-block rounded-[2px]",
                INTENSITY_BG_CLASSES[level],
              )}
              style={{ width: cellSize - 1, height: cellSize - 1 }}
            />
          ))}
          <span>Plus</span>
        </div>
      </div>

      <div className="overflow-x-auto">
        <svg
          width={totalWidth}
          height={totalHeight}
          viewBox={`0 0 ${totalWidth} ${totalHeight}`}
          className="block motion-safe:animate-heatmap-fade"
          role="img"
          aria-label={`Calendrier d'activité : ${totalCount} réponses sur les ${weeks} dernières semaines`}
        >
          <title>Calendrier d&apos;activité</title>
          {monthHeaders.map((header) => (
            <text
              key={`${header.label}-${header.weekIndex}`}
              x={labelWidth + header.weekIndex * (cellSize + cellGap)}
              y={12}
              className="fill-muted text-[0.55rem]"
            >
              {header.label}
            </text>
          ))}

          {DAY_LABELS.map((label, dayIndex) =>
            label ? (
              <text
                key={dayIndex}
                x={0}
                y={headerHeight + dayIndex * (cellSize + cellGap) + cellSize - 2}
                className="fill-muted text-[0.55rem]"
              >
                {label}
              </text>
            ) : null,
          )}

          {grid.map((week, weekIndex) =>
            week.map((cell, dayIndex) => {
              if (!cell) return null;
              const intensity = getIntensity(cell.count);
              const x = labelWidth + weekIndex * (cellSize + cellGap);
              const y = headerHeight + dayIndex * (cellSize + cellGap);

              return (
                <rect
                  key={cell.date}
                  x={x}
                  y={y}
                  width={cellSize}
                  height={cellSize}
                  rx={3}
                  fill={INTENSITY_COLORS[intensity]}
                  className="transition-opacity duration-150 hover:opacity-80 cursor-default"
                  onMouseEnter={(e) => {
                    const rect = (e.target as SVGRectElement).getBoundingClientRect();
                    setTooltip({
                      date: cell.date,
                      count: cell.count,
                      x: rect.left + rect.width / 2,
                      y: rect.top,
                    });
                  }}
                  onMouseLeave={() => setTooltip(null)}
                />
              );
            }),
          )}
        </svg>
      </div>

      {tooltip && (
        <div
          className="pointer-events-none fixed z-50 -translate-x-1/2 -translate-y-full rounded-lg border border-border bg-ink px-3 py-1.5 text-xs text-paper shadow-elevated"
          style={{ left: tooltip.x, top: tooltip.y - 8 }}
        >
          <p className="font-semibold">
            {tooltip.count} réponse{tooltip.count !== 1 ? "s" : ""}
          </p>
          <p className="text-paper/60">
            {new Date(tooltip.date + "T00:00:00").toLocaleDateString("fr-FR", {
              weekday: "short",
              day: "numeric",
              month: "short",
            })}
          </p>
        </div>
      )}
    </div>
  );
}
