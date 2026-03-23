"use client";

import { cn } from "@/lib/utils";
import { DashboardDomainProgress } from "@/types/domain";

const STATUS_COLOR = {
  non_commencee: "#9CA3AF",
  acquis: "#059669",
  en_cours: "#4A6E8F",
  fragile: "#F59E0B",
  prioritaire: "#EF4444",
} as const;

const STATUS_LABEL = {
  non_commencee: "Non commencé",
  acquis: "Solide",
  en_cours: "En cours",
  fragile: "Fragile",
  prioritaire: "Prioritaire",
} as const;

function splitLabel(label: string): string[] {
  if (label.length <= 14) return [label];
  const words = label.split(" ");
  const mid = Math.ceil(words.length / 2);
  return [words.slice(0, mid).join(" "), words.slice(mid).join(" ")];
}

type ProgressionRadarChartProps = {
  domains: DashboardDomainProgress[];
  compact?: boolean;
  className?: string;
};

export function ProgressionRadarChart({ domains, compact = false, className }: ProgressionRadarChartProps) {
  const cx = compact ? 210 : 260;
  const cy = compact ? 160 : 205;
  const r = compact ? 95 : 125;
  const labelOffset = compact ? 28 : 34;
  const n = domains.length;

  if (n < 3) return null;

  const angles = domains.map((_, i) => (2 * Math.PI * i) / n - Math.PI / 2);
  const levels = [0.25, 0.5, 0.75, 1];

  function polygonPoints(scale: number) {
    return angles
      .map((a) => `${cx + r * scale * Math.cos(a)},${cy + r * scale * Math.sin(a)}`)
      .join(" ");
  }

  const dataPoints = domains.map((d, i) => {
    const value = d.correctRate !== null ? d.correctRate / 100 : 0;
    return {
      x: cx + r * value * Math.cos(angles[i]),
      y: cy + r * value * Math.sin(angles[i]),
      value,
      status: d.status,
      label: d.label,
      correctRate: d.correctRate,
    };
  });

  return (
    <div className={cn("relative", className)}>
      <svg
        viewBox={compact ? "0 0 420 320" : "0 0 520 410"}
        className="mx-auto w-full max-w-md motion-safe:animate-radar-fill"
        role="img"
        aria-label="Radar de progression par domaine"
      >
        <title>Radar de progression par domaine</title>
        <desc>
          Graphique radar montrant le taux de réussite par domaine :
          {domains.map((d) => ` ${d.label} ${d.correctRate ?? 0}%`).join(",")}
        </desc>

        {/* Background grid */}
        {levels.map((level) => (
          <polygon
            key={level}
            points={polygonPoints(level)}
            fill={level === 1 ? "rgba(232,228,216,0.25)" : "none"}
            stroke="#D8D2C6"
            strokeWidth={level === 1 ? 1.5 : 0.8}
            strokeDasharray={level < 1 ? "3 3" : undefined}
          />
        ))}

        {/* Radial lines */}
        {angles.map((a, i) => (
          <line
            key={i}
            x1={cx}
            y1={cy}
            x2={cx + r * Math.cos(a)}
            y2={cy + r * Math.sin(a)}
            stroke="#D8D2C6"
            strokeWidth={0.8}
          />
        ))}

        {/* Data polygon */}
        <polygon
          points={dataPoints.map((p) => `${p.x},${p.y}`).join(" ")}
          fill="rgba(71,98,87,0.15)"
          stroke="#476257"
          strokeWidth={2}
          strokeLinejoin="round"
          className="motion-safe:animate-radar-fill"
        />

        {/* Data points */}
        {dataPoints.map((p, i) => (
          <circle
            key={i}
            cx={p.x}
            cy={p.y}
            r={5.5}
            fill={STATUS_COLOR[p.status]}
            stroke="white"
            strokeWidth={2}
          />
        ))}

        {/* Labels */}
        {domains.map((d, i) => {
          const a = angles[i];
          const lx = cx + (r + labelOffset) * Math.cos(a);
          const ly = cy + (r + labelOffset) * Math.sin(a);
          const anchor =
            Math.cos(a) > 0.25 ? "start" : Math.cos(a) < -0.25 ? "end" : "middle";
          const lines = splitLabel(d.label);
          const lineH = 13;
          const baseY = ly - ((lines.length - 1) * lineH) / 2;

          return (
            <g key={i}>
              {lines.map((line, li) => (
                <text
                  key={li}
                  x={lx}
                  y={baseY + li * lineH}
                  textAnchor={anchor}
                  dominantBaseline="middle"
                  fontSize={11}
                  fontFamily="var(--font-sans),'Avenir Next','Segoe UI',sans-serif"
                  fontWeight={600}
                  fill="#2C2420"
                >
                  {line}
                </text>
              ))}
              <text
                x={lx}
                y={baseY + lines.length * lineH}
                textAnchor={anchor}
                dominantBaseline="middle"
                fontSize={10}
                fontFamily="var(--font-sans),'Avenir Next','Segoe UI',sans-serif"
                fill={STATUS_COLOR[d.status]}
                fontWeight={500}
              >
                {d.correctRate === null ? "—" : `${d.correctRate}%`}
              </text>
            </g>
          );
        })}

        {/* Scale labels */}
        {levels.slice(0, -1).map((level) => (
          <text
            key={level}
            x={cx + 4}
            y={cy - r * level - 3}
            fontSize={8}
            fill="#6B534A"
            fontFamily="var(--font-sans),'Avenir Next','Segoe UI',sans-serif"
            opacity={0.7}
          >
            {Math.round(level * 100)}%
          </text>
        ))}
      </svg>

      {/* Legend */}
      <div className="mt-3 flex flex-wrap justify-center gap-x-4 gap-y-1">
        {(["acquis", "en_cours", "fragile", "prioritaire"] as const).map((status) => (
          <div key={status} className="flex items-center gap-1.5">
            <span
              className="inline-block h-2.5 w-2.5 rounded-full"
              style={{ backgroundColor: STATUS_COLOR[status] }}
            />
            <span className="text-[0.65rem] text-muted">{STATUS_LABEL[status]}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
