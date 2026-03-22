import { Skeleton } from "@/components/ui/skeleton";

export function Loading() {
  return (
    <div className="space-y-6">
      {/* Badge + title + description */}
      <div>
        <Skeleton className="h-6 w-36 rounded-full" />
        <Skeleton className="mt-2 h-9 w-64" />
        <Skeleton className="mt-2 h-4 w-full max-w-md" />
      </div>

      {/* History list items */}
      <div className="space-y-3">
        {Array.from({ length: 6 }).map((_, i) => (
          <div
            key={i}
            role="status"
            aria-label="Chargement..."
            className="rounded-[1.5rem] border border-border bg-card p-4 shadow-panel"
          >
            <div className="flex items-start justify-between gap-4">
              <div className="min-w-0 flex-1">
                <Skeleton className="h-4 w-full max-w-sm" />
                <Skeleton className="mt-1 h-3 w-28" />
              </div>
              <div className="flex shrink-0 flex-col items-end gap-1">
                <Skeleton className="h-5 w-16 rounded-full" />
                <Skeleton className="h-3 w-20" />
              </div>
            </div>
            <Skeleton className="mt-2 h-3 w-48" />
          </div>
        ))}
      </div>
    </div>
  );
}

export default Loading;
