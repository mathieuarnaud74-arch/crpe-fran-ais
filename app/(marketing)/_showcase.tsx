"use client";

import React, { useState } from "react";

// ─── Shared primitives ────────────────────────────────────────────────────────

function SmallCheck() {
  return (
    <svg viewBox="0 0 12 12" className="h-3 w-3" fill="none" aria-hidden="true">
      <path
        d="M2.5 6.5 5 9 9.5 3.5"
        stroke="currentColor"
        strokeWidth="1.6"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>
  );
}

function SmallX() {
  return (
    <svg viewBox="0 0 12 12" className="h-3 w-3" fill="none" aria-hidden="true">
      <path
        d="M3 3 9 9M9 3 3 9"
        stroke="currentColor"
        strokeWidth="1.6"
        strokeLinecap="round"
      />
    </svg>
  );
}

function ProgressDots({
  total,
  done,
  tone,
}: {
  total: number;
  done: number;
  tone: "green" | "copper";
}) {
  return (
    <div className="flex items-center gap-1.5">
      {Array.from({ length: total }).map((_, i) => (
        <span
          key={i}
          className={[
            "block h-2 w-2 rounded-full transition-colors",
            i < done
              ? tone === "green"
                ? "bg-accentSecondary"
                : "bg-accentSecondaryDark"
              : "bg-border",
          ].join(" ")}
        />
      ))}
    </div>
  );
}

function CorrectionBlock({ children }: { children: React.ReactNode }) {
  return (
    <div className="mt-4 rounded-[1.5rem] border border-accentSecondary/25 bg-accentSecondarySoft p-4">
      <p className="text-[11px] font-semibold uppercase tracking-[0.15em] text-accentSecondaryDark">
        Correction
      </p>
      {children}
    </div>
  );
}

function RulePill({ children }: { children: React.ReactNode }) {
  return (
    <div className="mt-3 inline-flex flex-wrap items-center gap-2 rounded-full border border-border bg-card px-3 py-1.5">
      <span className="text-xs font-semibold text-ink">Règle</span>
      <span className="text-xs text-muted">{children}</span>
    </div>
  );
}

function ResetButton({ onClick }: { onClick: () => void }) {
  return (
    <button
      onClick={onClick}
      className="mt-3 text-xs text-muted underline underline-offset-2 hover:text-ink"
    >
      Réessayer
    </button>
  );
}

// ─── ShowcaseQCM ─────────────────────────────────────────────────────────────

const qcmChoices = [
  { label: "envoyées", correct: true },
  { label: "envoyé", correct: false },
  { label: "envoyée", correct: false },
];

export function ShowcaseQCM() {
  const [selected, setSelected] = useState<string | null>(null);

  const isAnswered = selected !== null;
  const selectedChoice = qcmChoices.find((c) => c.label === selected);
  const isCorrect = selectedChoice?.correct ?? false;

  return (
    <div className="overflow-hidden rounded-[2rem] border border-border bg-card shadow-panel">
      {/* Progress bar */}
      <div className="h-[3px] bg-border">
        <div className="h-full w-3/5 bg-accentSecondary" />
      </div>

      <div className="p-6">
        {/* Header */}
        <div className="flex items-center justify-between gap-4">
          <span className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">
            Orthographe
          </span>
          <ProgressDots total={5} done={3} tone="green" />
        </div>

        {/* Question label */}
        <p className="mt-5 text-[11px] font-semibold uppercase tracking-[0.15em] text-muted/70">
          Question 3 · Complétez la phrase
        </p>

        {/* Sentence */}
        <p className="mt-3 font-serif text-xl leading-9 text-ink">
          Les lettres qu&rsquo;elle a{" "}
          {!isAnswered ? (
            <span className="inline-block min-w-[5rem] rounded-md border-b-2 border-dashed border-accentSecondary/50 text-center text-muted">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
          ) : (
            <span
              className={[
                "rounded-lg px-2.5 py-0.5 font-semibold",
                isCorrect
                  ? "bg-accentSecondarySoft text-accentSecondaryDark"
                  : "bg-errorBg text-error",
              ].join(" ")}
            >
              {selected}
            </span>
          )}{" "}
          sont restées sans réponse.
        </p>

        {/* Choices */}
        <div className="mt-5 space-y-2">
          {qcmChoices.map((choice) => {
            const isSelected = selected === choice.label;
            const showCorrect = isAnswered && choice.correct;
            const showWrong = isAnswered && isSelected && !choice.correct;
            const showDimmed = isAnswered && !isSelected && !choice.correct;

            return (
              <button
                key={choice.label}
                disabled={isAnswered}
                onClick={() => setSelected(choice.label)}
                className={[
                  "flex w-full items-center gap-3 rounded-[1.15rem] border px-4 py-3.5 text-left text-sm transition-colors",
                  !isAnswered &&
                    "cursor-pointer hover:border-accentSecondary/40 hover:bg-accentSecondarySoft/50",
                  isAnswered && "cursor-default",
                  showCorrect && "border-ink/15 bg-ink text-paper",
                  showWrong && "border-errorBorder bg-errorBg text-error",
                  showDimmed && "border-border bg-paper text-muted opacity-40",
                  !isAnswered && "border-border bg-paper text-ink",
                ]
                  .filter(Boolean)
                  .join(" ")}
              >
                <span
                  className={[
                    "flex h-5 w-5 shrink-0 items-center justify-center rounded-full border",
                    showCorrect && "border-paper/25 bg-paper/15 text-paper",
                    showWrong && "border-errorBorder bg-errorBg text-error",
                    !showCorrect && !showWrong && "border-border bg-card text-muted",
                  ]
                    .filter(Boolean)
                    .join(" ")}
                >
                  {showCorrect && <SmallCheck />}
                  {showWrong && <SmallX />}
                </span>
                <span className="font-medium">{choice.label}</span>
              </button>
            );
          })}
        </div>

        {/* Correction */}
        {isAnswered && (
          <CorrectionBlock>
            {!isCorrect && (
              <p className="mt-2 text-sm font-medium text-error">
                La réponse correcte est{" "}
                <span className="font-semibold">envoyées</span>.
              </p>
            )}
            <p className="mt-2.5 text-sm leading-7 text-ink">
              Le COD <span className="font-semibold">«&nbsp;que&nbsp;»</span> (mis pour{" "}
              <span className="font-semibold">lettres</span>, fém. plur.) est placé avant
              l&rsquo;auxiliaire <span className="font-semibold">avoir</span> : le participe
              s&rsquo;accorde →{" "}
              <span className="font-semibold">envoyées</span>.
            </p>
            <RulePill>COD avant avoir → accord en genre et en nombre</RulePill>
            <ResetButton onClick={() => setSelected(null)} />
          </CorrectionBlock>
        )}

        {!isAnswered && (
          <p className="mt-4 text-xs text-muted/60">
            Cliquez sur une réponse pour continuer.
          </p>
        )}
      </div>
    </div>
  );
}

// ─── ShowcaseAnalyse ──────────────────────────────────────────────────────────

const analyseChoices = [
  {
    label: "Prop. subordonnée complétive",
    sublabel: "Sujet réel de « est certain »",
    correct: true,
  },
  {
    label: "Prop. subordonnée relative",
    sublabel: "Complément de l'antécédent « certain »",
    correct: false,
  },
  {
    label: "Prop. subordonnée circonstancielle",
    sublabel: "Complément circonstanciel de conséquence",
    correct: false,
  },
];

export function ShowcaseAnalyse() {
  const [selected, setSelected] = useState<string | null>(null);

  const isAnswered = selected !== null;
  const selectedChoice = analyseChoices.find((c) => c.label === selected);
  const isCorrect = selectedChoice?.correct ?? false;

  return (
    <div className="overflow-hidden rounded-[2rem] border border-border bg-card shadow-panel">
      {/* Progress bar */}
      <div className="h-[3px] bg-border">
        <div className="h-full w-2/5 bg-accentSecondaryDark" />
      </div>

      <div className="p-6">
        {/* Header */}
        <div className="flex items-center justify-between gap-4">
          <span className="text-xs font-semibold uppercase tracking-[0.15em] text-muted">
            Analyse de la langue
          </span>
          <ProgressDots total={5} done={2} tone="copper" />
        </div>

        {/* Question label */}
        <p className="mt-5 text-[11px] font-semibold uppercase tracking-[0.15em] text-muted/70">
          Question 2 · Nature et fonction du groupe souligné
        </p>

        {/* Sentence */}
        <p className="mt-3 font-serif text-xl leading-9 text-ink">
          Il est certain{" "}
          <span className="rounded-lg border border-accentSecondaryDark/25 bg-secondary px-2 py-0.5 font-medium text-ink">
            que tu réussiras cet examen
          </span>
          .
        </p>

        {/* Choices */}
        <div className="mt-5 space-y-2">
          {analyseChoices.map((choice) => {
            const isSelected = selected === choice.label;
            const showCorrect = isAnswered && choice.correct;
            const showWrong = isAnswered && isSelected && !choice.correct;
            const showDimmed = isAnswered && !isSelected && !choice.correct;

            return (
              <button
                key={choice.label}
                disabled={isAnswered}
                onClick={() => setSelected(choice.label)}
                className={[
                  "flex w-full items-start gap-3 rounded-[1.15rem] border px-4 py-3.5 text-left text-sm transition-colors",
                  !isAnswered &&
                    "cursor-pointer hover:border-accentSecondary/40 hover:bg-accentSecondarySoft/50",
                  isAnswered && "cursor-default",
                  showCorrect && "border-ink/15 bg-ink text-paper",
                  showWrong && "border-errorBorder bg-errorBg text-error",
                  showDimmed && "border-border bg-paper opacity-40",
                  !isAnswered && "border-border bg-paper",
                ]
                  .filter(Boolean)
                  .join(" ")}
              >
                <span
                  className={[
                    "mt-0.5 flex h-5 w-5 shrink-0 items-center justify-center rounded-full border",
                    showCorrect && "border-paper/25 bg-paper/15 text-paper",
                    showWrong && "border-errorBorder bg-errorBg text-error",
                    !showCorrect && !showWrong && "border-border bg-card text-muted",
                  ]
                    .filter(Boolean)
                    .join(" ")}
                >
                  {showCorrect && <SmallCheck />}
                  {showWrong && <SmallX />}
                </span>
                <div>
                  <p
                    className={[
                      "font-medium",
                      showCorrect ? "text-paper" : showWrong ? "text-error" : "text-ink",
                    ].join(" ")}
                  >
                    {choice.label}
                  </p>
                  <p
                    className={[
                      "mt-0.5 text-xs",
                      showCorrect ? "text-paper/70" : showWrong ? "text-error/70" : "text-muted",
                    ].join(" ")}
                  >
                    {choice.sublabel}
                  </p>
                </div>
              </button>
            );
          })}
        </div>

        {/* Correction */}
        {isAnswered && (
          <CorrectionBlock>
            {!isCorrect && (
              <p className="mt-2 text-sm font-medium text-error">
                La réponse correcte est{" "}
                <span className="font-semibold">proposition subordonnée complétive</span>.
              </p>
            )}
            <p className="mt-2.5 text-sm leading-7 text-ink">
              La tournure{" "}
              <span className="font-semibold">«&nbsp;il est [adj] que…&nbsp;»</span> est
              impersonnelle : le vrai sujet grammatical de{" "}
              <span className="font-semibold">est certain</span> est la complétive, rejetée à
              droite du verbe.
            </p>
            <RulePill>Tournure impersonnelle → sujet réel déplacé à droite</RulePill>
            <ResetButton onClick={() => setSelected(null)} />
          </CorrectionBlock>
        )}

        {!isAnswered && (
          <p className="mt-4 text-xs text-muted/60">
            Cliquez sur une réponse pour continuer.
          </p>
        )}
      </div>
    </div>
  );
}
