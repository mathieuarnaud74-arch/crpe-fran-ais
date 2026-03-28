"use client";

import { useCallback, useEffect, useState } from "react";
import { Bell, BellOff, Loader2 } from "lucide-react";
import { toast } from "sonner";

import { Button } from "@/components/ui/button";

type PermissionState = "default" | "granted" | "denied" | "unsupported";

const VAPID_PUBLIC_KEY = process.env.NEXT_PUBLIC_VAPID_PUBLIC_KEY ?? "";

function urlBase64ToUint8Array(base64String: string): ArrayBuffer {
  const padding = "=".repeat((4 - (base64String.length % 4)) % 4);
  const base64 = (base64String + padding).replace(/-/g, "+").replace(/_/g, "/");
  const rawData = atob(base64);
  const arr = new Uint8Array(rawData.length);
  for (let i = 0; i < rawData.length; i++) {
    arr[i] = rawData.charCodeAt(i);
  }
  return arr.buffer as ArrayBuffer;
}

export function PushNotificationToggle() {
  const [permission, setPermission] = useState<PermissionState>("default");
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!("Notification" in window) || !("serviceWorker" in navigator) || !VAPID_PUBLIC_KEY) {
      setPermission("unsupported");
      return;
    }
    setPermission(Notification.permission as PermissionState);
  }, []);

  const handleEnable = useCallback(async () => {
    if (!("Notification" in window) || !("serviceWorker" in navigator)) return;

    setLoading(true);
    try {
      const result = await Notification.requestPermission();
      setPermission(result as PermissionState);

      if (result !== "granted") {
        if (result === "denied") {
          toast.error("Notifications bloquées. Tu peux les réactiver dans les paramètres de ton navigateur.");
        }
        return;
      }

      // Subscribe to push via service worker
      const registration = await navigator.serviceWorker.ready;
      const subscription = await registration.pushManager.subscribe({
        userVisibleOnly: true,
        applicationServerKey: urlBase64ToUint8Array(VAPID_PUBLIC_KEY),
      });

      // Send subscription to server
      const response = await fetch("/api/push/subscribe", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          subscription: subscription.toJSON(),
        }),
      });

      if (response.ok) {
        toast.success("Notifications activées !");
      } else {
        toast.error("Erreur lors de l'activation des notifications.");
      }
    } catch {
      toast.error("Impossible d'activer les notifications.");
    } finally {
      setLoading(false);
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
        <Button variant="secondary" size="sm" onClick={handleEnable} disabled={loading}>
          {loading ? <Loader2 className="h-4 w-4 animate-spin" /> : "Activer"}
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
