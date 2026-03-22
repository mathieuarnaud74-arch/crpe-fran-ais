import { Skeleton } from "@/components/ui/skeleton";

export function Loading() {
  return (
    <div className="space-y-6">
      {/* Badge + title + description */}
      <div>
        <Skeleton className="h-6 w-40 rounded-full" />
        <Skeleton className="mt-3 h-9 w-56" />
        <Skeleton className="mt-3 h-4 w-full max-w-xl" />
      </div>

      {/* Pricing cards grid */}
      <div className="grid gap-4 lg:grid-cols-3">
        {Array.from({ length: 3 }).map((_, i) => (
          <div
            key={i}
            role="status"
            aria-label="Chargement..."
            className="rounded-[1.5rem] border border-border bg-card p-5 shadow-panel"
          >
            <Skeleton className="h-3 w-20" />
            <Skeleton className="mt-2 h-9 w-28" />
            <Skeleton className="mt-1 h-3 w-36" />
            <Skeleton className="mt-6 h-10 w-full rounded-inner" />
          </div>
        ))}
      </div>

      {/* Footer note */}
      <Skeleton className="h-3 w-full max-w-lg" />
    </div>
  );
}

export default Loading;
