"use client";

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

type NivoRadarProps = {
  domains: DashboardDomainProgress[];
};

export function NivoRadarChart({ domains }: NivoRadarProps) {
  const data = domains.map((d) => ({
    domain: d.label,
    score: d.correctRate ?? 0,
    completion: d.totalSeries > 0
      ? Math.round((d.completedSeries / d.totalSeries) * 100)
      : 0,
  }));

  if (data.length === 0) return null;

  return (
    <div className="h-[300px] w-full">
      <ResponsiveRadar
        data={data}
        keys={["score", "completion"]}
        indexBy="domain"
        maxValue={100}
        margin={{ top: 40, right: 60, bottom: 40, left: 60 }}
        curve="linearClosed"
        borderWidth={2}
        borderColor={{ from: "color" }}
        gridLevels={4}
        gridShape="circular"
        gridLabelOffset={16}
        enableDots
        dotSize={8}
        dotColor={{ theme: "background" }}
        dotBorderWidth={2}
        dotBorderColor={{ from: "color" }}
        colors={["#4A6E8F", "#A46849"]}
        fillOpacity={0.2}
        blendMode="multiply"
        motionConfig="gentle"
        legends={[
          {
            anchor: "top-left",
            direction: "column",
            translateX: -50,
            translateY: -30,
            itemWidth: 80,
            itemHeight: 20,
            itemTextColor: "#6B534A",
            symbolSize: 10,
            symbolShape: "circle",
          },
        ]}
        theme={{
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
        }}
      />
    </div>
  );
}
