"use client";

import { useState } from "react";
import { Download } from "lucide-react";

import { cn } from "@/lib/utils";
import type { Fiche } from "@/features/fiches/types";

type DownloadFicheButtonProps = {
  fiche: Fiche;
  className?: string;
};

export function DownloadFicheButton({ fiche, className }: DownloadFicheButtonProps) {
  const [generating, setGenerating] = useState(false);

  async function handleDownload() {
    if (generating) return;
    setGenerating(true);

    try {
      // Dynamically import PDF renderer only when needed
      const [{ pdf }, { FichePdfDocument }] = await Promise.all([
        import("@react-pdf/renderer"),
        import("@/features/fiches/components/fiche-pdf"),
      ]);

      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      const doc = (FichePdfDocument as any)({ fiche });
      const blob = await pdf(doc).toBlob();

      const url = URL.createObjectURL(blob);
      const link = document.createElement("a");
      link.href = url;
      link.download = `${fiche.slug}.pdf`;
      link.click();
      URL.revokeObjectURL(url);
    } catch (err) {
      console.error("PDF generation failed:", err);
    } finally {
      setGenerating(false);
    }
  }

  return (
    <button
      type="button"
      onClick={handleDownload}
      disabled={generating}
      className={cn(
        "inline-flex items-center gap-2 rounded-pill border border-border bg-paper px-4 py-2 text-sm font-medium text-ink transition-colors hover:bg-secondary disabled:opacity-50",
        className,
      )}
    >
      <Download className={cn("h-4 w-4", generating && "animate-pulse")} aria-hidden="true" />
      {generating ? "Génération…" : "Télécharger en PDF"}
    </button>
  );
}
