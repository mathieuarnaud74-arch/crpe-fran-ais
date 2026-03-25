import { Skeleton, SkeletonMetricGrid, SkeletonPanel } from "@/components/ui/skeleton";

export default function MathsLoading() {
  return (
    <div className="space-y-6">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <div className="space-y-3">
        <Skeleton className="h-8 w-40" />
        {Array.from({ length: 5 }).map((_, i) => (
          <Skeleton key={i} className="h-16 w-full rounded-2xl" />
        ))}
      </div>
    </div>
  );
}
