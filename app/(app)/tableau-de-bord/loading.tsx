import {
  Skeleton,
  SkeletonCard,
  SkeletonMetricGrid,
  SkeletonPanel,
} from "@/components/ui/skeleton";

export default function DashboardLoading() {
  return (
    <div className="space-y-8">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <div className="space-y-4">
        <Skeleton className="h-8 w-40" />
        <div className="grid gap-4 xl:grid-cols-3">
          <SkeletonCard />
          <SkeletonCard />
          <SkeletonCard />
        </div>
      </div>
    </div>
  );
}
