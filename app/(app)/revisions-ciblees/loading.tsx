import {
  SkeletonCard,
  SkeletonMetricGrid,
  SkeletonPanel,
} from "@/components/ui/skeleton";

export default function RevisionsCibleesLoading() {
  return (
    <div className="space-y-8">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <div className="grid gap-6 xl:grid-cols-2">
        <SkeletonCard />
        <SkeletonCard />
      </div>
    </div>
  );
}
