import { Panel } from "@/components/ui/panel";

export default function FicheLoading() {
  return (
    <div className="space-y-8">
      <Panel>
        <div className="space-y-3">
          <div className="flex gap-2">
            <div className="h-6 w-24 animate-pulse rounded-full bg-secondary" />
            <div className="h-6 w-20 animate-pulse rounded-full bg-secondary" />
          </div>
          <div className="h-9 w-2/3 animate-pulse rounded-[1rem] bg-secondary" />
          <div className="h-4 w-32 animate-pulse rounded-[1rem] bg-secondary" />
        </div>
      </Panel>

      <div className="space-y-4">
        <div className="h-7 w-48 animate-pulse rounded-[1rem] bg-secondary" />
        <div className="h-24 animate-pulse rounded-[1.75rem] bg-secondary" />
      </div>

      <div className="space-y-4">
        <div className="h-7 w-40 animate-pulse rounded-[1rem] bg-secondary" />
        <div className="h-36 animate-pulse rounded-[1.75rem] bg-secondary" />
        <div className="h-48 animate-pulse rounded-[1.25rem] bg-secondary" />
      </div>
    </div>
  );
}
