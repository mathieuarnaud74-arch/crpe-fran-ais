import {
  Skeleton,
  SkeletonMetricGrid,
} from "@/components/ui/skeleton";

export function Loading() {
  return (
    <div className="space-y-8">
      {/* Header panel */}
      <div
        role="status"
        aria-label="Chargement..."
        className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
      >
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Skeleton className="h-6 w-36 rounded-full" />
            <div>
              <Skeleton className="h-9 w-32" />
              <Skeleton className="mt-3 h-4 w-full max-w-xl" />
            </div>
          </div>
          <Skeleton className="h-10 w-44 rounded-inner" />
        </div>
      </div>

      {/* Two-column panels */}
      <div className="grid gap-6 xl:grid-cols-[1.1fr,0.9fr]">
        <div
          role="status"
          aria-label="Chargement..."
          className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
        >
          <Skeleton className="h-7 w-28" />
          <div className="mt-5 space-y-3">
            <Skeleton className="h-4 w-64" />
            <Skeleton className="h-4 w-48" />
          </div>
        </div>
        <div
          role="status"
          aria-label="Chargement..."
          className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
        >
          <Skeleton className="h-7 w-36" />
          <div className="mt-5 space-y-3">
            <Skeleton className="h-4 w-40" />
            <Skeleton className="h-4 w-52" />
            <Skeleton className="h-4 w-48" />
          </div>
        </div>
      </div>

      {/* 4-column metric grid */}
      <SkeletonMetricGrid />
    </div>
  );
}

export default Loading;
