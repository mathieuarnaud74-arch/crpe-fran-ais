"use client";

import { useActionState } from "react";

import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import { updateDisplayNameAction } from "@/features/leaderboard/server/actions";

type DisplayNameFormProps = {
  currentName: string | null;
};

export function DisplayNameForm({ currentName }: DisplayNameFormProps) {
  const [state, formAction, isPending] = useActionState(updateDisplayNameAction, {
    success: false,
  });

  return (
    <form action={formAction} className="mt-4">
      <label
        htmlFor="display_name"
        className="text-xs font-semibold uppercase tracking-[0.16em] text-muted"
      >
        Pseudo (visible dans le classement)
      </label>
      <div className="mt-2 flex gap-2">
        <input
          id="display_name"
          name="display_name"
          type="text"
          defaultValue={currentName ?? ""}
          placeholder="Ex. Camille"
          minLength={2}
          maxLength={30}
          required
          className={cn(
            "flex-1 rounded-inner border border-border bg-paper px-3 py-2 text-sm text-ink",
            "placeholder:text-muted/50",
            "focus:outline-none focus:ring-2 focus:ring-accent focus:ring-offset-1",
          )}
        />
        <Button type="submit" variant="primary" size="sm" disabled={isPending}>
          {isPending ? "…" : "Enregistrer"}
        </Button>
      </div>

      {state.error && (
        <p className="mt-2 text-xs text-red-600">{state.error}</p>
      )}
      {state.success && (
        <p className="mt-2 text-xs text-green-700">Pseudo mis à jour !</p>
      )}
    </form>
  );
}
