import {
  Skeleton,
  SkeletonCard,
  SkeletonMetricGrid,
  SkeletonPanel,
} from "@/components/ui/skeleton";

export default function DomainLoading() {
  return (
    <div className="space-y-8">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <div className="flex flex-wrap gap-3">
        <Skeleton className="h-10 w-36 rounded-[1rem]" />
        <Skeleton className="h-10 w-32 rounded-[1rem]" />
        <Skeleton className="h-10 w-28 rounded-[1rem]" />
      </div>
      <div className="space-y-4">
        <SkeletonCard />
        <SkeletonCard />
        <SkeletonCard />
      </div>
    </div>
  );
}
