"use client";

import { useCallback, useEffect, useState } from "react";
import { Bell, BellOff } from "lucide-react";
import { toast } from "sonner";

import { Button } from "@/components/ui/button";

type PermissionState = "default" | "granted" | "denied" | "unsupported";

export function PushNotificationToggle() {
  const [permission, setPermission] = useState<PermissionState>("default");

  useEffect(() => {
    if (!("Notification" in window) || !("serviceWorker" in navigator)) {
      setPermission("unsupported");
      return;
    }
    setPermission(Notification.permission as PermissionState);
  }, []);

  const handleEnable = useCallback(async () => {
    if (!("Notification" in window)) return;

    const result = await Notification.requestPermission();
    setPermission(result as PermissionState);

    if (result === "granted") {
      toast.success("Notifications activées !");
    } else if (result === "denied") {
      toast.error("Notifications bloquées. Tu peux les réactiver dans les paramètres de ton navigateur.");
    }
  }, []);

  if (permission === "unsupported") return null;

  return (
    <div className="flex items-center justify-between gap-4">
      <div className="flex items-center gap-3">
        {permission === "granted" ? (
          <Bell className="h-4 w-4 text-accent" />
        ) : (
          <BellOff className="h-4 w-4 text-muted" />
        )}
        <div>
          <p className="text-sm font-medium text-ink">Notifications push</p>
          <p className="text-xs text-muted">
            {permission === "granted"
              ? "Activées — tu recevras des rappels de révision"
              : permission === "denied"
                ? "Bloquées dans les paramètres du navigateur"
                : "Reçois des rappels pour maintenir ton streak"}
          </p>
        </div>
      </div>
      {permission === "default" && (
        <Button variant="secondary" size="sm" onClick={handleEnable}>
          Activer
        </Button>
      )}
      {permission === "granted" && (
        <span className="rounded-full bg-accent/10 px-3 py-1 text-xs font-semibold text-accent">
          Actif
        </span>
      )}
    </div>
  );
}
