import { signOutAction } from "@/features/auth/server/actions";

export function LogoutButton() {
  return (
    <form action={signOutAction}>
      <button
        type="submit"
        className="rounded-full border border-ink/15 bg-card px-4 py-2 text-sm font-medium text-ink transition hover:border-accentSecondary/30 hover:bg-accentSecondarySoft"
      >
        Se déconnecter
      </button>
    </form>
  );
}
