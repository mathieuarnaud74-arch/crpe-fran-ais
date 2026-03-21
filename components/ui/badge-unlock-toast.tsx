"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { AnimatePresence, motion } from "framer-motion";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
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
  const { playSound } = useGameSounds();

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
    }, 400);
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

    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(currentIds));
    } catch {
      /* ignore */
    }

    if (newBadges.length === 0) return;

    const toShow = newBadges.slice(0, MAX_VISIBLE + 3);

    toShow.forEach((badge, i) => {
      const showTimer = setTimeout(() => {
        if (!mountedRef.current) return;

        playSound("badgeUnlock");

        setToasts((prev) => {
          const next = [...prev, { ...badge, leaving: false }];
          const visible = next.filter((t) => !t.leaving);
          if (visible.length > MAX_VISIBLE && visible[0]) {
            dismiss(visible[0].id);
          }
          return next;
        });

        const dismissTimer = setTimeout(
          () => dismiss(badge.id),
          TOAST_DURATION,
        );
        timersRef.current.push(dismissTimer);
      }, i * STAGGER_MS);
      timersRef.current.push(showTimer);
    });
  }, [earnedBadges, dismiss, playSound]);

  if (toasts.length === 0) return null;

  return (
    <div
      aria-live="polite"
      className="pointer-events-none fixed bottom-4 left-3 right-3 z-50 flex flex-col gap-2.5 sm:left-auto sm:right-6 sm:bottom-6 sm:w-[22rem]"
    >
      <AnimatePresence mode="popLayout">
        {toasts.map((toast, index) => (
          <motion.button
            key={toast.id}
            layout
            initial={{ opacity: 0, y: 40, scale: 0.85 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: 20, scale: 0.9, transition: { duration: 0.3 } }}
            transition={{
              type: "spring",
              stiffness: 400,
              damping: 25,
              delay: index * 0.05,
            }}
            whileHover={{ scale: 1.02, y: -2 }}
            type="button"
            onClick={() => dismiss(toast.id)}
            aria-label={`Badge débloqué : ${toast.label} — ${toast.description}. Cliquer pour fermer.`}
            className="pointer-events-auto flex w-full items-center gap-3 rounded-[1.25rem] border border-successBorder/50 bg-card px-4 py-3 text-left shadow-elevated focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2"
          >
            <motion.span
              initial={{ rotate: -20, scale: 0.5 }}
              animate={{ rotate: 0, scale: 1 }}
              transition={{ type: "spring", stiffness: 500, damping: 15, delay: 0.15 }}
              className="flex h-12 w-12 shrink-0 items-center justify-center rounded-full bg-successBg text-2xl shadow-subtle"
              aria-hidden="true"
            >
              {toast.icon}
            </motion.span>
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
              aria-hidden="true"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M6 18L18 6M6 6l12 12"
              />
            </svg>
          </motion.button>
        ))}
      </AnimatePresence>
    </div>
  );
}
