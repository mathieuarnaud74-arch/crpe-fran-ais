"use client";

import { useState, useTransition } from "react";

import { deleteAccountAction } from "@/features/auth/server/actions";

export function DeleteAccountButton() {
  const [confirming, setConfirming] = useState(false);
  const [isPending, startTransition] = useTransition();

  function handleConfirm() {
    startTransition(async () => {
      await deleteAccountAction();
    });
  }

  if (!confirming) {
    return (
      <button
        type="button"
        onClick={() => setConfirming(true)}
        className="text-sm text-red-600/70 underline underline-offset-4 transition hover:text-red-600"
      >
        Supprimer mon compte
      </button>
    );
  }

  return (
    <div className="rounded-inner border border-red-200 bg-red-50 p-4 text-sm">
      <p className="font-semibold text-red-800">Suppression définitive du compte</p>
      <p className="mt-1 leading-6 text-red-700">
        Cette action est irréversible. Toutes vos données (progression, résultats, abonnement)
        seront supprimées immédiatement.
      </p>
      <div className="mt-4 flex items-center gap-3">
        <button
          type="button"
          onClick={handleConfirm}
          disabled={isPending}
          className="rounded-full bg-red-600 px-4 py-2 text-sm font-medium text-white transition hover:bg-red-700 disabled:opacity-50"
        >
          {isPending ? "Suppression…" : "Confirmer la suppression"}
        </button>
        <button
          type="button"
          onClick={() => setConfirming(false)}
          disabled={isPending}
          className="text-sm text-muted transition hover:text-ink"
        >
          Annuler
        </button>
      </div>
    </div>
  );
}
