import { Skeleton, SkeletonCard, SkeletonPanel } from "@/components/ui/skeleton";

export default function ClassementLoading() {
  return (
    <div className="mx-auto max-w-3xl px-4 py-8 sm:px-6">
      <div className="mb-8 text-center">
        <Skeleton className="mx-auto h-10 w-72" />
        <Skeleton className="mx-auto mt-2 h-5 w-48" />
      </div>
      <SkeletonPanel />
      <div className="mt-8 space-y-3">
        {Array.from({ length: 8 }).map((_, i) => (
          <Skeleton key={i} className="h-14 w-full rounded-xl" />
        ))}
      </div>
    </div>
  );
}
