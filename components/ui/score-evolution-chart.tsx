"use client";

import { useMemo, useState } from "react";

import { cn } from "@/lib/utils";
import { ScoreEvolutionEntry } from "@/types/domain";

type ScoreEvolutionChartProps = {
  data: ScoreEvolutionEntry[];
  compact?: boolean;
  className?: string;
};

export function ScoreEvolutionChart({ data, compact = false, className }: ScoreEvolutionChartProps) {
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);

  const { points, pathD, areaD, yLabels, xLabels, minY, rangeY, chartWidth, chartHeight } =
    useMemo(() => {
      if (data.length === 0) {
        return {
          points: [],
          pathD: "",
          areaD: "",
          yLabels: [],
          xLabels: [],
          minY: 0,
          rangeY: 100,
          chartWidth: 0,
          chartHeight: 0,
        };
      }

      const last30 = data.slice(-30);
      const rates = last30.map((d) => d.correctRate);
      const rawMin = Math.min(...rates);
      const rawMax = Math.max(...rates);
      const padding = Math.max(5, Math.round((rawMax - rawMin) * 0.15));
      const computedMinY = Math.max(0, rawMin - padding);
      const computedMaxY = Math.min(100, rawMax + padding);
      const computedRangeY = computedMaxY - computedMinY || 1;

      const w = 560;
      const h = compact ? 160 : 200;
      const padLeft = 40;
      const padRight = 16;
      const padTop = 12;
      const padBottom = 28;
      const innerW = w - padLeft - padRight;
      const innerH = h - padTop - padBottom;

      const pts = last30.map((d, i) => {
        const x = padLeft + (last30.length === 1 ? innerW / 2 : (i / (last30.length - 1)) * innerW);
        const y = padTop + innerH - ((d.correctRate - computedMinY) / computedRangeY) * innerH;
        return { x, y, ...d };
      });

      let line = "";
      let area = "";
      if (pts.length === 1) {
        line = "";
        area = "";
      } else {
        line = pts.map((p, i) => `${i === 0 ? "M" : "L"}${p.x},${p.y}`).join(" ");
        area =
          line +
          ` L${pts[pts.length - 1].x},${padTop + innerH} L${pts[0].x},${padTop + innerH} Z`;
      }

      const ySteps = 4;
      const yLbls = Array.from({ length: ySteps + 1 }, (_, i) => {
        const val = computedMinY + (computedRangeY / ySteps) * i;
        const yPos = padTop + innerH - ((val - computedMinY) / computedRangeY) * innerH;
        return { label: `${Math.round(val)}%`, y: yPos };
      });

      const xInterval = Math.max(1, Math.floor(last30.length / 5));
      const xLbls = last30
        .filter((_, i) => i % xInterval === 0 || i === last30.length - 1)
        .map((d, _, arr) => {
          const idx = last30.indexOf(d);
          const x = padLeft + (last30.length === 1 ? innerW / 2 : (idx / (last30.length - 1)) * innerW);
          const dateObj = new Date(d.date + "T00:00:00");
          const label = dateObj.toLocaleDateString("fr-FR", { day: "numeric", month: "short" });
          return { label, x };
        });

      return {
        points: pts,
        pathD: line,
        areaD: area,
        yLabels: yLbls,
        xLabels: xLbls,
        minY: computedMinY,
        rangeY: computedRangeY,
        chartWidth: w,
        chartHeight: h,
      };
    }, [data, compact]);

  if (data.length < 2) {
    return (
      <div className={cn("flex items-center justify-center rounded-xl border border-border bg-paper px-4 py-8", className)}>
        <p className="text-sm text-muted">
          Au moins 2 jours d&apos;activité sont nécessaires pour afficher la courbe d&apos;évolution.
        </p>
      </div>
    );
  }

  const hoveredPoint = hoveredIndex !== null ? points[hoveredIndex] : null;

  return (
    <div className={cn("relative", className)}>
      <div className="overflow-x-auto">
        <svg
          viewBox={`0 0 ${chartWidth} ${chartHeight}`}
          className="block w-full min-w-[280px] motion-safe:animate-chart-fade-in"
          role="img"
          aria-label="Courbe d'évolution du score"
        >
          <title>Évolution du score sur les 30 derniers jours</title>

          {/* Grid lines */}
          {yLabels.map((yl, i) => (
            <g key={i}>
              <line
                x1={40}
                y1={yl.y}
                x2={chartWidth - 16}
                y2={yl.y}
                stroke="#D8D2C6"
                strokeWidth={0.6}
                strokeDasharray={i === 0 || i === yLabels.length - 1 ? undefined : "3 3"}
              />
              <text
                x={36}
                y={yl.y + 3}
                textAnchor="end"
                fontSize={9}
                fill="#6B534A"
                fontFamily="var(--font-sans),'Avenir Next','Segoe UI',sans-serif"
              >
                {yl.label}
              </text>
            </g>
          ))}

          {/* X labels */}
          {xLabels.map((xl, i) => (
            <text
              key={i}
              x={xl.x}
              y={chartHeight - 4}
              textAnchor="middle"
              fontSize={9}
              fill="#6B534A"
              fontFamily="var(--font-sans),'Avenir Next','Segoe UI',sans-serif"
            >
              {xl.label}
            </text>
          ))}

          {/* Area fill */}
          {areaD && (
            <path d={areaD} fill="url(#scoreGradient)" opacity={0.3} />
          )}

          {/* Line */}
          {pathD && (
            <path
              d={pathD}
              fill="none"
              stroke="#476257"
              strokeWidth={2.5}
              strokeLinecap="round"
              strokeLinejoin="round"
              className="motion-safe:animate-chart-line-draw"
            />
          )}

          {/* Data points */}
          {points.map((p, i) => (
            <circle
              key={i}
              cx={p.x}
              cy={p.y}
              r={hoveredIndex === i ? 5 : 3}
              fill={hoveredIndex === i ? "#476257" : "#6B8F80"}
              stroke="white"
              strokeWidth={hoveredIndex === i ? 2 : 1.5}
              className="cursor-default transition-all duration-150"
              onMouseEnter={() => setHoveredIndex(i)}
              onMouseLeave={() => setHoveredIndex(null)}
            />
          ))}

          {/* Hover vertical line */}
          {hoveredPoint && (
            <line
              x1={hoveredPoint.x}
              y1={12}
              x2={hoveredPoint.x}
              y2={chartHeight - 28}
              stroke="#476257"
              strokeWidth={0.8}
              strokeDasharray="3 3"
              opacity={0.5}
            />
          )}

          <defs>
            <linearGradient id="scoreGradient" x1="0" y1="0" x2="0" y2="1">
              <stop offset="0%" stopColor="#476257" stopOpacity={0.4} />
              <stop offset="100%" stopColor="#476257" stopOpacity={0.02} />
            </linearGradient>
          </defs>
        </svg>
      </div>

      {/* Tooltip */}
      {hoveredPoint && (
        <div
          className="pointer-events-none absolute z-10 -translate-x-1/2 rounded-lg border border-border bg-ink px-3 py-1.5 text-xs text-paper shadow-elevated"
          style={{
            left: `${(hoveredPoint.x / chartWidth) * 100}%`,
            top: `${(hoveredPoint.y / chartHeight) * 100 - 14}%`,
          }}
        >
          <p className="font-semibold">{hoveredPoint.correctRate}%</p>
          <p className="text-paper/60">
            {new Date(hoveredPoint.date + "T00:00:00").toLocaleDateString("fr-FR", {
              weekday: "short",
              day: "numeric",
              month: "short",
            })}
          </p>
          <p className="text-paper/40">{hoveredPoint.cumulativeAttempts} réponses cumulées</p>
        </div>
      )}
    </div>
  );
}
