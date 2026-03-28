/**
 * IndexedDB wrapper for offline exercise support.
 *
 * Stores:
 * - pending-attempts: exercise attempts made offline, synced when back online
 *
 * Usage:
 *   import { offlineDb } from "@/lib/offline-db";
 *   await offlineDb.addPendingAttempt({ ... });
 *   const pending = await offlineDb.getAllPendingAttempts();
 *   await offlineDb.removePendingAttempt(id);
 */

const DB_NAME = "crpe-offline";
const DB_VERSION = 1;
const PENDING_STORE = "pending-attempts";

export type PendingAttempt = {
  id?: number; // auto-increment
  exerciseId: string;
  answer: string;
  sessionId: string;
  timeSpentMs: number;
  exerciseMode: string;
  streak: number;
  createdAt: string; // ISO date
};

function openDb(): Promise<IDBDatabase> {
  return new Promise((resolve, reject) => {
    const request = indexedDB.open(DB_NAME, DB_VERSION);

    request.onupgradeneeded = () => {
      const db = request.result;
      if (!db.objectStoreNames.contains(PENDING_STORE)) {
        db.createObjectStore(PENDING_STORE, {
          keyPath: "id",
          autoIncrement: true,
        });
      }
    };

    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
}

async function addPendingAttempt(
  attempt: Omit<PendingAttempt, "id">,
): Promise<number> {
  const db = await openDb();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(PENDING_STORE, "readwrite");
    const store = tx.objectStore(PENDING_STORE);
    const request = store.add(attempt);
    request.onsuccess = () => resolve(request.result as number);
    request.onerror = () => reject(request.error);
  });
}

async function getAllPendingAttempts(): Promise<PendingAttempt[]> {
  const db = await openDb();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(PENDING_STORE, "readonly");
    const store = tx.objectStore(PENDING_STORE);
    const request = store.getAll();
    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
}

async function removePendingAttempt(id: number): Promise<void> {
  const db = await openDb();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(PENDING_STORE, "readwrite");
    const store = tx.objectStore(PENDING_STORE);
    const request = store.delete(id);
    request.onsuccess = () => resolve();
    request.onerror = () => reject(request.error);
  });
}

async function getPendingCount(): Promise<number> {
  const db = await openDb();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(PENDING_STORE, "readonly");
    const store = tx.objectStore(PENDING_STORE);
    const request = store.count();
    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
}

export const offlineDb = {
  addPendingAttempt,
  getAllPendingAttempts,
  removePendingAttempt,
  getPendingCount,
};
