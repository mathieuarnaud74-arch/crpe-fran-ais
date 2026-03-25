import { Skeleton, SkeletonCard } from "@/components/ui/skeleton";

export default function RevisionLoading() {
  return (
    <div className="space-y-6">
      <div>
        <Skeleton className="h-6 w-24" />
        <Skeleton className="mt-3 h-10 w-48" />
        <Skeleton className="mt-2 h-5 w-72" />
      </div>
      <div className="space-y-4">
        {Array.from({ length: 4 }).map((_, i) => (
          <SkeletonCard key={i} />
        ))}
      </div>
    </div>
  );
}
