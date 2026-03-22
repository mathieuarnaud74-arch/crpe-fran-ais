"use client";

import { useMemo } from "react";
import dynamic from "next/dynamic";

import type { DashboardDomainProgress } from "@/types/domain";

const ResponsiveRadar = dynamic(
  () => import("@nivo/radar").then((mod) => mod.ResponsiveRadar),
  {
    ssr: false,
    loading: () => (
      <div className="h-[300px] w-full animate-pulse rounded-card bg-secondary" />
    ),
  },
);

const RADAR_KEYS = ["score", "completion"] as const;
const RADAR_MARGIN = { top: 40, right: 60, bottom: 40, left: 60 };
const RADAR_BORDER_COLOR = { from: "color" } as const;
const RADAR_DOT_COLOR = { theme: "background" } as const;
const RADAR_COLORS = ["#4A6E8F", "#A46849"];
const RADAR_LEGENDS = [
  {
    anchor: "top-left" as const,
    direction: "column" as const,
    translateX: -50,
    translateY: -30,
    itemWidth: 80,
    itemHeight: 20,
    itemTextColor: "#6B534A",
    symbolSize: 10,
    symbolShape: "circle" as const,
  },
];
const RADAR_THEME = {
  text: { fontFamily: "Manrope, sans-serif", fontSize: 11 },
  grid: { line: { stroke: "#D8D2C6", strokeWidth: 1 } },
  tooltip: {
    container: {
      background: "#FDF9F3",
      border: "1px solid #D8D2C6",
      borderRadius: "8px",
      fontSize: 12,
      fontFamily: "Manrope, sans-serif",
    },
  },
};

type NivoRadarProps = {
  domains: DashboardDomainProgress[];
};

export function NivoRadarChart({ domains }: NivoRadarProps) {
  const data = useMemo(
    () =>
      domains.map((d) => ({
        domain: d.label,
        score: d.correctRate ?? 0,
        completion:
          d.totalSeries > 0
            ? Math.round((d.completedSeries / d.totalSeries) * 100)
            : 0,
      })),
    [domains],
  );

  if (data.length === 0) return null;

  return (
    <div className="h-[300px] w-full">
      <ResponsiveRadar
        data={data}
        keys={RADAR_KEYS}
        indexBy="domain"
        maxValue={100}
        margin={RADAR_MARGIN}
        curve="linearClosed"
        borderWidth={2}
        borderColor={RADAR_BORDER_COLOR}
        gridLevels={4}
        gridShape="circular"
        gridLabelOffset={16}
        enableDots
        dotSize={8}
        dotColor={RADAR_DOT_COLOR}
        dotBorderWidth={2}
        dotBorderColor={RADAR_BORDER_COLOR}
        colors={RADAR_COLORS}
        fillOpacity={0.2}
        blendMode="multiply"
        motionConfig="gentle"
        legends={RADAR_LEGENDS}
        theme={RADAR_THEME}
      />
    </div>
  );
}
