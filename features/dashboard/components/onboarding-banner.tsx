import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import type { DiagnosticResult } from "@/features/diagnostic/types";

export function OnboardingBanner({
  firstSeriesId,
  hasAttempts,
  diagnostic,
}: {
  firstSeriesId: string | null;
  hasAttempts: boolean;
  diagnostic: DiagnosticResult | null;
}) {
  const hasDiagnostic = diagnostic !== null;

  // If the user has both completed the diagnostic AND started exercises, hide the banner
  if (hasDiagnostic && hasAttempts) return null;

  const diagnosticRate = diagnostic
    ? Math.round((diagnostic.score / diagnostic.total) * 100)
    : null;

  return (
    <Panel className="border-accentSecondary/30 bg-[linear-gradient(135deg,rgba(241,224,213,0.6),rgba(252,250,246,1)_50%,rgba(234,228,216,0.5))]">
      <div className="flex flex-col gap-6 xl:flex-row xl:items-start xl:justify-between">
        <div className="max-w-2xl space-y-4">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
              {hasDiagnostic ? "Prochaine étape" : "Première visite"}
            </p>
            <h2 className="mt-2 font-serif text-3xl font-semibold text-ink">
              {hasDiagnostic ? "Passez à l'action" : "Par où commencer ?"}
            </h2>
            <p className="mt-3 text-sm leading-7 text-muted">
              {hasDiagnostic ? (
                <>
                  Votre diagnostic est terminé ({diagnostic.score}/{diagnostic.total} —{" "}
                  {diagnosticRate} %). Profil :{" "}
                  <strong className="text-ink">{diagnostic.profileLabel}</strong>. Lancez maintenant
                  vos premières séries en commençant par vos priorités.
                </>
              ) : (
                <>
                  Commencez par le diagnostic : il repère vos zones solides et vos fragilités en{" "}
                  <strong className="text-ink">environ 20 minutes</strong>, puis vous oriente vers les
                  séries les plus utiles pour vous. C&apos;est la porte d&apos;entrée recommandée.
                </>
              )}
            </p>
          </div>

          <div className="grid gap-3 sm:grid-cols-3">
            <div
              className={`rounded-[1.25rem] border px-4 py-4 ${
                hasDiagnostic ? "border-successBorder bg-successBg" : "border-accentSecondary/25 bg-card"
              }`}
            >
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 1
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">
                {hasDiagnostic ? "Diagnostic terminé" : "Faire le diagnostic"}
              </p>
              <p className="mt-1 text-xs leading-5 text-muted">
                {hasDiagnostic
                  ? `${diagnosticRate} % de réussite — profil identifié.`
                  : "40 questions, profil par sous-domaine, priorités identifiées. ~20 min."}
              </p>
            </div>
            <div
              className={`rounded-[1.25rem] border px-4 py-4 ${
                hasDiagnostic ? "border-accentSecondary/25 bg-card" : "border-border bg-card"
              }`}
            >
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 2
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">Travailler vos priorités</p>
              <p className="mt-1 text-xs leading-5 text-muted">
                Commencez par les sous-domaines signalés prioritaires. Séries de 10 min.
              </p>
            </div>
            <div className="rounded-[1.25rem] border border-border bg-card px-4 py-4">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 3
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">Revenir consolider</p>
              <p className="mt-1 text-xs leading-5 text-muted">
                Ce tableau de bord trace vos acquis et fragilités au fil des séries.
              </p>
            </div>
          </div>
        </div>

        <div className="flex shrink-0 flex-col gap-3">
          {hasDiagnostic ? (
            <ButtonLink href="/tableau-de-bord">Tableau de bord</ButtonLink>
          ) : (
            <>
              <ButtonLink href="/diagnostic">Lancer le diagnostic</ButtonLink>
              {firstSeriesId ? (
                <ButtonLink href={`/exercices/${firstSeriesId}`} variant="secondary">
                  Commencer directement
                </ButtonLink>
              ) : (
                <ButtonLink href="/francais" variant="secondary">
                  Explorer les domaines
                </ButtonLink>
              )}
            </>
          )}
        </div>
      </div>
    </Panel>
  );
}
