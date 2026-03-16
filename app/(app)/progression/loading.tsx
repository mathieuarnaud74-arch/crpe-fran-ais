import {
  Skeleton,
  SkeletonCard,
  SkeletonMetricGrid,
  SkeletonPanel,
} from "@/components/ui/skeleton";

export default function ProgressionLoading() {
  return (
    <div className="space-y-8">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <Skeleton className="h-4 w-full rounded-full" />
      <div className="space-y-4">
        <SkeletonCard />
        <SkeletonCard />
      </div>
    </div>
  );
}
