const MASTERY_COLOR = {
  solide: "#059669",
  a_consolider: "#F59E0B",
  prioritaire: "#EF4444",
} as const;

type RadarDataPoint = {
  label: string;
  value: number;
  mastery: "solide" | "a_consolider" | "prioritaire";
};

function splitLabel(label: string): string[] {
  if (label.length <= 13) return [label];
  const words = label.split(" ");
  const mid = Math.ceil(words.length / 2);
  return [words.slice(0, mid).join(" "), words.slice(mid).join(" ")];
}

export function DiagnosticRadarChart({ data }: { data: RadarDataPoint[] }) {
  const cx = 210;
  const cy = 200;
  const r = 130;
  const labelOffset = 32;
  const n = data.length;

  const angles = data.map((_, i) => (2 * Math.PI * i) / n - Math.PI / 2);

  const levels = [0.25, 0.5, 0.75, 1];

  function polygonPoints(scale: number) {
    return angles
      .map((a) => `${cx + r * scale * Math.cos(a)},${cy + r * scale * Math.sin(a)}`)
      .join(" ");
  }

  const dataPoints = data.map((d, i) => ({
    x: cx + r * d.value * Math.cos(angles[i]),
    y: cy + r * d.value * Math.sin(angles[i]),
    mastery: d.mastery,
  }));

  return (
    <svg viewBox="0 0 420 405" className="mx-auto w-full max-w-md">
      {levels.map((level) => (
        <polygon
          key={level}
          points={polygonPoints(level)}
          fill={level === 1 ? "rgba(232,228,216,0.35)" : "none"}
          stroke="#D8D2C6"
          strokeWidth={level === 1 ? 1.5 : 1}
          strokeDasharray={level < 1 ? "4 4" : undefined}
        />
      ))}

      {angles.map((a, i) => (
        <line
          key={i}
          x1={cx}
          y1={cy}
          x2={cx + r * Math.cos(a)}
          y2={cy + r * Math.sin(a)}
          stroke="#D8D2C6"
          strokeWidth={1}
        />
      ))}

      <polygon
        points={dataPoints.map((p) => `${p.x},${p.y}`).join(" ")}
        fill="rgba(74,110,143,0.18)"
        stroke="#4A6E8F"
        strokeWidth={2}
        strokeLinejoin="round"
      />

      {dataPoints.map((p, i) => (
        <circle
          key={i}
          cx={p.x}
          cy={p.y}
          r={5}
          fill={MASTERY_COLOR[p.mastery]}
          stroke="white"
          strokeWidth={1.5}
        />
      ))}

      {data.map((d, i) => {
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
                fontFamily="'Avenir Next','Segoe UI',sans-serif"
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
              fontFamily="'Avenir Next','Segoe UI',sans-serif"
              fill="#6B534A"
            >
              {d.value === 0 ? "0%" : `${Math.round(d.value * 100)}%`}
            </text>
          </g>
        );
      })}

      {levels.slice(0, -1).map((level) => (
        <text
          key={level}
          x={cx + 4}
          y={cy - r * level - 3}
          fontSize={8.5}
          fill="#6B534A"
          fontFamily="'Avenir Next','Segoe UI',sans-serif"
        >
          {Math.round(level * 100)}%
        </text>
      ))}
    </svg>
  );
}
