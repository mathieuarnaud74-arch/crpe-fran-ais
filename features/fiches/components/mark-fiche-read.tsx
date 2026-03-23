"use client";

import { useEffect, useRef } from "react";
import { markFicheReadAction } from "@/features/fiches/server/actions";

export function MarkFicheRead({ slug }: { slug: string }) {
  const called = useRef(false);

  useEffect(() => {
    if (called.current) return;
    called.current = true;

    markFicheReadAction(slug).catch(() => {
      // Reset so a re-render can retry
      called.current = false;
    });
  }, [slug]);

  return null;
}
