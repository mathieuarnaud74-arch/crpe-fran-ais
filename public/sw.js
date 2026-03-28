/// Service Worker — CRPE Français PWA
/// Strategies: network-first for navigation/API/RSC, cache-first for static assets

const CACHE_VERSION = 1;
const STATIC_CACHE = `crpe-static-v${CACHE_VERSION}`;
const RUNTIME_CACHE = `crpe-runtime-v${CACHE_VERSION}`;
const OFFLINE_URL = "/offline.html";

const PRECACHE_URLS = [
  OFFLINE_URL,
  "/sounds/correct.mp3",
  "/sounds/incorrect.mp3",
  "/sounds/streak.mp3",
  "/sounds/level-up.mp3",
  "/sounds/timer-warning.mp3",
  "/sounds/badge-unlock.mp3",
];

// Max entries per cache to prevent storage overflow
const MAX_RUNTIME_ENTRIES = 80;

// ----- Install: pre-cache essentials -----
self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(STATIC_CACHE).then((cache) => cache.addAll(PRECACHE_URLS))
  );
  self.skipWaiting();
});

// ----- Activate: clean old versioned caches -----
self.addEventListener("activate", (event) => {
  const currentCaches = [STATIC_CACHE, RUNTIME_CACHE];
  event.waitUntil(
    caches.keys().then((keys) =>
      Promise.all(
        keys
          .filter((key) => !currentCaches.includes(key))
          .map((key) => caches.delete(key))
      )
    )
  );
  self.clients.claim();
});

// ----- Helpers -----
async function cachePut(cacheName, request, response) {
  try {
    const cache = await caches.open(cacheName);
    await cache.put(request, response);
  } catch {
    // Storage full or quota exceeded — silently fail
  }
}

async function trimCache(cacheName, maxEntries) {
  const cache = await caches.open(cacheName);
  const keys = await cache.keys();
  if (keys.length > maxEntries) {
    await cache.delete(keys[0]);
    return trimCache(cacheName, maxEntries);
  }
}

function isStaticAsset(url) {
  return (
    url.pathname.startsWith("/_next/static/") ||
    url.pathname.startsWith("/icons/") ||
    url.pathname.startsWith("/sounds/") ||
    url.pathname.startsWith("/play-store/") ||
    /\.(png|jpg|jpeg|svg|webp|ico|woff2?|ttf|otf|mp3)$/.test(url.pathname)
  );
}

function isNavigationOrRSC(request, url) {
  // Next.js RSC payloads use /_next/data/ or have RSC header
  return (
    request.mode === "navigate" ||
    url.pathname.startsWith("/_next/data/") ||
    request.headers.get("RSC") === "1"
  );
}

// ----- Fetch strategies -----
self.addEventListener("fetch", (event) => {
  const { request } = event;
  const url = new URL(request.url);

  // Skip non-GET, cross-origin, API routes, and chrome-extension
  if (request.method !== "GET") return;
  if (url.origin !== self.location.origin) return;
  if (url.pathname.startsWith("/api/")) return;
  if (url.protocol === "chrome-extension:") return;

  // Static assets: cache-first
  if (isStaticAsset(url)) {
    event.respondWith(
      caches.match(request).then(
        (cached) =>
          cached ||
          fetch(request).then((response) => {
            if (response.ok) {
              cachePut(STATIC_CACHE, request, response.clone());
            }
            return response;
          })
      )
    );
    return;
  }

  // Navigation + RSC: network-first with offline fallback
  if (isNavigationOrRSC(request, url)) {
    event.respondWith(
      fetch(request)
        .then((response) => {
          if (response.ok && request.mode === "navigate") {
            cachePut(RUNTIME_CACHE, request, response.clone());
            trimCache(RUNTIME_CACHE, MAX_RUNTIME_ENTRIES);
          }
          return response;
        })
        .catch(() =>
          caches
            .match(request)
            .then((cached) =>
              cached ||
              (request.mode === "navigate" ? caches.match(OFFLINE_URL) : undefined)
            )
        )
    );
    return;
  }

  // Everything else (JS chunks, CSS): stale-while-revalidate
  event.respondWith(
    caches.match(request).then((cached) => {
      const networkFetch = fetch(request)
        .then((response) => {
          if (response.ok) {
            cachePut(RUNTIME_CACHE, request, response.clone());
          }
          return response;
        })
        .catch(() => cached);

      return cached || networkFetch;
    })
  );
});

// ----- Push notifications -----
self.addEventListener("push", (event) => {
  if (!event.data) return;

  let data;
  try {
    data = event.data.json();
  } catch {
    data = { title: "CRPE Français", body: event.data.text() };
  }

  const options = {
    body: data.body || "",
    icon: "/icons/icon-192x192.png",
    badge: "/icons/icon-96x96.png",
    tag: data.tag || "crpe-default",
    data: { url: data.url || "/tableau-de-bord" },
    vibrate: [100, 50, 100],
  };

  event.waitUntil(self.registration.showNotification(data.title || "CRPE Français", options));
});

self.addEventListener("notificationclick", (event) => {
  event.notification.close();
  const targetUrl = event.notification.data?.url || "/tableau-de-bord";

  event.waitUntil(
    self.clients.matchAll({ type: "window", includeUncontrolled: true }).then((clients) => {
      for (const client of clients) {
        if (client.url.includes(self.location.origin) && "focus" in client) {
          client.navigate(targetUrl);
          return client.focus();
        }
      }
      return self.clients.openWindow(targetUrl);
    })
  );
});
