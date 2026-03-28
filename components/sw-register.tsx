"use client";

import { useEffect } from "react";
import { toast } from "sonner";

export function ServiceWorkerRegister() {
  useEffect(() => {
    if (!("serviceWorker" in navigator)) return;

    navigator.serviceWorker
      .register("/sw.js")
      .then((registration) => {
        // Detect SW updates and notify user
        registration.addEventListener("updatefound", () => {
          const newWorker = registration.installing;
          if (!newWorker) return;

          newWorker.addEventListener("statechange", () => {
            if (
              newWorker.state === "activated" &&
              navigator.serviceWorker.controller
            ) {
              toast("Mise à jour disponible", {
                description: "Recharge la page pour profiter des nouveautés.",
                action: {
                  label: "Recharger",
                  onClick: () => window.location.reload(),
                },
                duration: 10000,
              });
            }
          });
        });

        // Trigger fiche pre-caching after a delay (don't compete with initial page load)
        if (registration.active) {
          setTimeout(() => {
            registration.active?.postMessage({ type: "PRECACHE_FICHES" });
          }, 15000);
        }
      })
      .catch(() => {
        // Silent fail — SW registration is non-critical
      });
  }, []);

  return null;
}
