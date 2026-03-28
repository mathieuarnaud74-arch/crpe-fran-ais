"use client";

import { CloudOff, RefreshCw } from "lucide-react";

import { useOfflineSync } from "@/components/hooks/use-offline-sync";

export function ConnectivityIndicator() {
  const { isOnline, pendingCount, syncPending } = useOfflineSync();

  // Nothing to show when online with no pending items
  if (isOnline && pendingCount === 0) return null;

  return (
    <div className="fixed bottom-4 left-4 z-40 animate-in fade-in slide-in-from-bottom-2 duration-300">
      {!isOnline && (
        <div className="flex items-center gap-2 rounded-pill border border-border bg-card px-4 py-2 shadow-elevated">
          <CloudOff className="h-4 w-4 text-muted" />
          <span className="text-sm font-medium text-ink">Hors connexion</span>
          {pendingCount > 0 && (
            <span className="rounded-full bg-accentSecondarySoft px-2 py-0.5 text-xs font-semibold text-accentSecondary">
              {pendingCount} en attente
            </span>
          )}
        </div>
      )}
      {isOnline && pendingCount > 0 && (
        <button
          onClick={syncPending}
          className="flex items-center gap-2 rounded-pill border border-border bg-card px-4 py-2 shadow-elevated transition-colors hover:bg-secondary"
        >
          <RefreshCw className="h-4 w-4 text-accent" />
          <span className="text-sm font-medium text-ink">
            Synchroniser {pendingCount} réponse{pendingCount > 1 ? "s" : ""}
          </span>
        </button>
      )}
    </div>
  );
}
