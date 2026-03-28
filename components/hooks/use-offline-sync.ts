"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { toast } from "sonner";

import { offlineDb } from "@/lib/offline-db";
import { submitAttemptAction } from "@/features/exercises/server/actions";

export function useOfflineSync() {
  const [isOnline, setIsOnline] = useState(true);
  const [pendingCount, setPendingCount] = useState(0);
  const syncingRef = useRef(false);

  // Track online/offline status
  useEffect(() => {
    setIsOnline(navigator.onLine);

    function handleOnline() {
      setIsOnline(true);
    }
    function handleOffline() {
      setIsOnline(false);
    }

    window.addEventListener("online", handleOnline);
    window.addEventListener("offline", handleOffline);
    return () => {
      window.removeEventListener("online", handleOnline);
      window.removeEventListener("offline", handleOffline);
    };
  }, []);

  // Sync pending attempts when back online
  const syncPending = useCallback(async () => {
    if (syncingRef.current || !navigator.onLine) return;
    syncingRef.current = true;

    try {
      const pending = await offlineDb.getAllPendingAttempts();
      if (pending.length === 0) {
        setPendingCount(0);
        return;
      }

      let synced = 0;
      for (const attempt of pending) {
        try {
          const formData = new FormData();
          formData.append("exerciseId", attempt.exerciseId);
          formData.append("answer", attempt.answer);
          formData.append("sessionId", attempt.sessionId);
          formData.append("timeSpentMs", String(attempt.timeSpentMs));
          formData.append("exerciseMode", attempt.exerciseMode);
          formData.append("streak", String(attempt.streak));

          const result = await submitAttemptAction(
            { status: "idle" },
            formData,
          );

          if (result.status !== "error" && attempt.id != null) {
            await offlineDb.removePendingAttempt(attempt.id);
            synced++;
          }
        } catch {
          // Individual attempt failed — leave it for next sync
        }
      }

      const remaining = await offlineDb.getPendingCount();
      setPendingCount(remaining);

      if (synced > 0) {
        toast.success(
          `${synced} réponse${synced > 1 ? "s" : ""} synchronisée${synced > 1 ? "s" : ""}`,
          { duration: 3000 },
        );
      }
    } finally {
      syncingRef.current = false;
    }
  }, []);

  // Auto-sync when coming back online
  useEffect(() => {
    if (isOnline) {
      syncPending();
    }
  }, [isOnline, syncPending]);

  // Check pending count on mount
  useEffect(() => {
    offlineDb.getPendingCount().then(setPendingCount).catch(() => {});
  }, []);

  return { isOnline, pendingCount, syncPending };
}
