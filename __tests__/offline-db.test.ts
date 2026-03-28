import { describe, it, expect, beforeEach } from "vitest";
import "fake-indexeddb/auto";

import { offlineDb, type PendingAttempt } from "@/lib/offline-db";

const sampleAttempt: Omit<PendingAttempt, "id"> = {
  exerciseId: "test-exercise-001",
  answer: "Paris",
  sessionId: "session-001",
  timeSpentMs: 5000,
  exerciseMode: "standard",
  streak: 3,
  createdAt: new Date().toISOString(),
};

// Reset IndexedDB between tests
beforeEach(() => {
  indexedDB = new IDBFactory();
});

describe("offlineDb", () => {
  it("adds a pending attempt and returns an id", async () => {
    const id = await offlineDb.addPendingAttempt(sampleAttempt);
    expect(id).toBeGreaterThan(0);
  });

  it("retrieves all pending attempts", async () => {
    await offlineDb.addPendingAttempt(sampleAttempt);
    await offlineDb.addPendingAttempt({
      ...sampleAttempt,
      exerciseId: "test-exercise-002",
    });

    const all = await offlineDb.getAllPendingAttempts();
    expect(all).toHaveLength(2);
    expect(all[0].exerciseId).toBe("test-exercise-001");
    expect(all[1].exerciseId).toBe("test-exercise-002");
  });

  it("removes a specific attempt by id", async () => {
    const id1 = await offlineDb.addPendingAttempt(sampleAttempt);
    await offlineDb.addPendingAttempt({
      ...sampleAttempt,
      exerciseId: "test-exercise-002",
    });

    await offlineDb.removePendingAttempt(id1);
    const remaining = await offlineDb.getAllPendingAttempts();
    expect(remaining).toHaveLength(1);
    expect(remaining[0].exerciseId).toBe("test-exercise-002");
  });

  it("counts pending attempts", async () => {
    expect(await offlineDb.getPendingCount()).toBe(0);

    await offlineDb.addPendingAttempt(sampleAttempt);
    expect(await offlineDb.getPendingCount()).toBe(1);

    await offlineDb.addPendingAttempt({
      ...sampleAttempt,
      exerciseId: "test-exercise-002",
    });
    expect(await offlineDb.getPendingCount()).toBe(2);
  });

  it("preserves all fields correctly", async () => {
    const id = await offlineDb.addPendingAttempt(sampleAttempt);
    const all = await offlineDb.getAllPendingAttempts();
    const stored = all.find((a) => a.id === id);

    expect(stored).toBeDefined();
    expect(stored!.exerciseId).toBe(sampleAttempt.exerciseId);
    expect(stored!.answer).toBe(sampleAttempt.answer);
    expect(stored!.sessionId).toBe(sampleAttempt.sessionId);
    expect(stored!.timeSpentMs).toBe(sampleAttempt.timeSpentMs);
    expect(stored!.exerciseMode).toBe(sampleAttempt.exerciseMode);
    expect(stored!.streak).toBe(sampleAttempt.streak);
    expect(stored!.createdAt).toBe(sampleAttempt.createdAt);
  });
});
