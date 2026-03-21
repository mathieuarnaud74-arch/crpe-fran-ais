"use client";

import { AnimatePresence, motion } from "framer-motion";
import { useEffect, useState } from "react";

type XpPopupProps = {
  xp: number;
  trigger: number; // increment to trigger animation
};

export function XpPopup({ xp, trigger }: XpPopupProps) {
  const [visible, setVisible] = useState(false);
  const [displayXp, setDisplayXp] = useState(0);

  useEffect(() => {
    if (trigger > 0 && xp > 0) {
      setDisplayXp(xp);
      setVisible(true);
      const timer = setTimeout(() => setVisible(false), 1500);
      return () => clearTimeout(timer);
    }
  }, [trigger, xp]);

  const prefersReducedMotion =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  return (
    <div role="status" aria-live="polite" className="pointer-events-none absolute right-4 top-0 z-50">
      <AnimatePresence>
        {visible && (
          <motion.div
            initial={prefersReducedMotion ? { opacity: 0 } : { opacity: 0, y: 0, scale: 0.8 }}
            animate={prefersReducedMotion ? { opacity: 1 } : { opacity: 1, y: -40, scale: 1 }}
            exit={prefersReducedMotion ? { opacity: 0 } : { opacity: 0, y: -70, scale: 0.6 }}
            transition={{ duration: prefersReducedMotion ? 0 : 0.8, ease: "easeOut" }}
            className="font-serif text-xl font-bold text-accent"
          >
            +{displayXp} XP
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
