import { Skeleton } from "@/components/ui/skeleton";

export default function GlossaireLoading() {
  return (
    <div className="space-y-6">
      <div>
        <Skeleton className="h-6 w-24" />
        <Skeleton className="mt-3 h-10 w-48" />
        <Skeleton className="mt-2 h-5 w-72" />
      </div>
      <Skeleton className="h-10 w-full rounded-inner" />
      <div className="space-y-3">
        {Array.from({ length: 8 }).map((_, i) => (
          <Skeleton key={i} className="h-16 w-full rounded-card" />
        ))}
      </div>
    </div>
  );
}
