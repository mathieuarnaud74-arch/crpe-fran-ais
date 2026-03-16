import {
  SkeletonCard,
  SkeletonMetricGrid,
  SkeletonPanel,
} from "@/components/ui/skeleton";

export default function FrancaisLoading() {
  return (
    <div className="space-y-8">
      <SkeletonPanel />
      <SkeletonMetricGrid />
      <div className="grid gap-4 xl:grid-cols-3">
        <SkeletonCard />
        <SkeletonCard />
        <SkeletonCard />
      </div>
    </div>
  );
}
