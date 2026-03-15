import { Badge } from "@/components/ui/badge";

export function DemoBanner() {
  return (
    <div className="rounded-[1.5rem] border border-border bg-secondary px-4 py-4">
      <div className="flex flex-wrap items-center gap-3">
        <Badge tone="accentSecondary">Mode démo</Badge>
        <p className="text-sm leading-6 text-muted">
          Navigation locale active sans services externes. Les données affichées sont des exemples
          de révision intégrés au projet.
        </p>
      </div>
    </div>
  );
}
