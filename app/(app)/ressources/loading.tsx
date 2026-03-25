import { Skeleton } from "@/components/ui/skeleton";

export default function RessourcesLoading() {
  return (
    <div className="space-y-6">
      <div>
        <Skeleton className="h-6 w-24" />
        <Skeleton className="mt-3 h-10 w-56" />
        <Skeleton className="mt-2 h-5 w-80" />
      </div>
      <div className="space-y-4">
        {Array.from({ length: 3 }).map((_, i) => (
          <Skeleton key={i} className="h-32 w-full rounded-card" />
        ))}
      </div>
    </div>
  );
}
