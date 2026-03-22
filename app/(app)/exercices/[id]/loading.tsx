import { Skeleton } from "@/components/ui/skeleton";

export function Loading() {
  return (
    <div className="space-y-5">
      {/* Badges row */}
      <div className="flex flex-wrap items-center gap-3">
        <Skeleton className="h-6 w-20 rounded-full" />
        <Skeleton className="h-6 w-24 rounded-full" />
        <Skeleton className="h-6 w-28 rounded-full" />
      </div>

      {/* CRPE context panel */}
      <div
        role="status"
        aria-label="Chargement..."
        className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
      >
        <Skeleton className="h-3 w-32" />
        <Skeleton className="mt-2 h-4 w-full" />
        <Skeleton className="mt-1 h-4 w-3/4" />
      </div>

      {/* Exercise content area */}
      <div
        role="status"
        aria-label="Chargement..."
        className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
      >
        <Skeleton className="h-6 w-48" />
        <Skeleton className="mt-4 h-4 w-full" />
        <Skeleton className="mt-2 h-4 w-full" />
        <Skeleton className="mt-2 h-4 w-2/3" />

        {/* Answer choices */}
        <div className="mt-6 space-y-3">
          {Array.from({ length: 4 }).map((_, i) => (
            <Skeleton key={i} className="h-12 w-full rounded-inner" />
          ))}
        </div>

        {/* Submit button */}
        <Skeleton className="mt-6 h-11 w-36 rounded-inner" />
      </div>
    </div>
  );
}

export default Loading;
