import { cn } from "@/lib/utils";

export function Skeleton({ className }: { className?: string }) {
  return (
    <div
      aria-hidden="true"
      className={cn(
        "animate-pulse rounded-[1.25rem] bg-secondary",
        className,
      )}
    />
  );
}

export function SkeletonPanel({ className }: { className?: string }) {
  return (
    <div
      role="status"
      aria-label="Chargement..."
      className={cn(
        "rounded-[1.75rem] border border-border bg-card p-6 shadow-panel",
        className,
      )}
    >
      <Skeleton className="h-4 w-32" />
      <Skeleton className="mt-4 h-8 w-64" />
      <Skeleton className="mt-3 h-4 w-full max-w-xl" />
    </div>
  );
}

export function SkeletonMetricGrid() {
  return (
    <div role="status" aria-label="Chargement des statistiques..." className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
      {Array.from({ length: 4 }).map((_, i) => (
        <div
          key={i}
          className="rounded-[1.5rem] border border-border bg-card p-5 shadow-panel"
        >
          <Skeleton className="h-3 w-24" />
          <Skeleton className="mt-4 h-10 w-16" />
          <Skeleton className="mt-3 h-3 w-full" />
        </div>
      ))}
    </div>
  );
}

export function SkeletonCard() {
  return (
    <div role="status" aria-label="Chargement..." className="rounded-[1.5rem] border border-border bg-card p-5 shadow-panel">
      <Skeleton className="h-3 w-20" />
      <Skeleton className="mt-3 h-6 w-48" />
      <Skeleton className="mt-3 h-4 w-full" />
      <Skeleton className="mt-2 h-4 w-3/4" />
      <Skeleton className="mt-4 h-2 w-full rounded-full" />
    </div>
  );
}
