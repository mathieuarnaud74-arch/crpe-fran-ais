"use client";

import { useCallback, useEffect, useRef, useState } from "react";

import { cn } from "@/lib/utils";
import { EarnedBadge } from "@/types/domain";

const STORAGE_KEY = "crpe-seen-badge-ids";
const TOAST_DURATION = 4500;
const STAGGER_MS = 800;
const MAX_VISIBLE = 3;

type ToastEntry = EarnedBadge & { leaving: boolean };

export function BadgeUnlockToast({
  earnedBadges,
}: {
  earnedBadges: EarnedBadge[];
}) {
  const [toasts, setToasts] = useState<ToastEntry[]>([]);
  const mountedRef = useRef(true);
  const initializedRef = useRef(false);
  const timersRef = useRef<ReturnType<typeof setTimeout>[]>([]);

  const clearAllTimers = useCallback(() => {
    for (const t of timersRef.current) clearTimeout(t);
    timersRef.current = [];
  }, []);

  const dismiss = useCallback((id: string) => {
    if (!mountedRef.current) return;
    setToasts((prev) =>
      prev.map((t) => (t.id === id ? { ...t, leaving: true } : t)),
    );
    const t = setTimeout(() => {
      if (!mountedRef.current) return;
      setToasts((prev) => prev.filter((t) => t.id !== id));
    }, 300);
    timersRef.current.push(t);
  }, []);

  useEffect(() => {
    mountedRef.current = true;
    return () => {
      mountedRef.current = false;
      clearAllTimers();
    };
  }, [clearAllTimers]);

  useEffect(() => {
    if (initializedRef.current || earnedBadges.length === 0) return;
    initializedRef.current = true;

    let seenIds: string[] = [];
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (raw) seenIds = JSON.parse(raw);
    } catch {
      /* ignore */
    }

    const currentIds = earnedBadges.map((b) => b.id);

    // First visit: store silently — no pop-ups for pre-existing badges
    if (seenIds.length === 0) {
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(currentIds));
      } catch {
        /* ignore */
      }
      return;
    }

    const seenSet = new Set(seenIds);
    const newBadges = earnedBadges.filter((b) => !seenSet.has(b.id));

    // Persist updated list immediately
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(currentIds));
    } catch {
      /* ignore */
    }

    if (newBadges.length === 0) return;

    // Show badges with stagger, capped to avoid flooding
    const toShow = newBadges.slice(0, MAX_VISIBLE + 3);

    toShow.forEach((badge, i) => {
      const showTimer = setTimeout(() => {
        if (!mountedRef.current) return;

        setToasts((prev) => {
          const next = [...prev, { ...badge, leaving: false }];
          // If exceeding max visible, dismiss the oldest non-leaving one
          const visible = next.filter((t) => !t.leaving);
          if (visible.length > MAX_VISIBLE && visible[0]) {
            dismiss(visible[0].id);
          }
          return next;
        });

        // Auto-dismiss after duration
        const dismissTimer = setTimeout(
          () => dismiss(badge.id),
          TOAST_DURATION,
        );
        timersRef.current.push(dismissTimer);
      }, i * STAGGER_MS);
      timersRef.current.push(showTimer);
    });
  }, [earnedBadges, dismiss]);

  if (toasts.length === 0) return null;

  return (
    <div
      aria-live="polite"
      className="pointer-events-none fixed bottom-4 left-3 right-3 z-50 flex flex-col gap-2.5 sm:left-auto sm:right-6 sm:bottom-6 sm:w-[22rem]"
    >
      {toasts.map((toast) => (
        <button
          key={toast.id}
          type="button"
          onClick={() => dismiss(toast.id)}
          className={cn(
            "pointer-events-auto flex w-full items-center gap-3 rounded-[1.25rem] border bg-card px-4 py-3 text-left shadow-elevated transition-all duration-300",
            toast.leaving
              ? "translate-y-2 scale-95 border-border opacity-0"
              : "animate-badge-pop border-successBorder/50",
          )}
        >
          <span
            className="flex h-12 w-12 shrink-0 items-center justify-center rounded-full bg-successBg text-2xl shadow-subtle"
            aria-hidden="true"
          >
            {toast.icon}
          </span>
          <div className="min-w-0 flex-1">
            <p className="text-[0.6rem] font-bold uppercase tracking-[0.14em] text-pine">
              Badge d&eacute;bloqu&eacute;
            </p>
            <p className="truncate text-sm font-semibold text-ink">
              {toast.label}
            </p>
            <p className="truncate text-xs text-muted">{toast.description}</p>
          </div>
          <svg
            className="h-4 w-4 shrink-0 text-muted/40"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            strokeWidth={2}
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M6 18L18 6M6 6l12 12"
            />
          </svg>
        </button>
      ))}
    </div>
  );
}
