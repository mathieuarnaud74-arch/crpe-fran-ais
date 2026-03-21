"use client";

export default function GlobalError({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <html lang="fr">
      <body
        style={{
          minHeight: "100vh",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          fontFamily: '"Manrope", "Segoe UI", sans-serif',
          background: "#F5F1E8",
          color: "#2C2420",
          margin: 0,
          padding: "2rem",
        }}
      >
        <div style={{ textAlign: "center", maxWidth: 420 }}>
          <p style={{ fontSize: "3rem", marginBottom: "0.5rem" }}>⚠️</p>
          <h1
            style={{
              fontFamily: '"Cormorant Garamond", serif',
              fontSize: "1.75rem",
              fontWeight: 600,
              marginBottom: "0.75rem",
            }}
          >
            Une erreur critique est survenue
          </h1>
          <p
            style={{
              color: "#6B534A",
              fontSize: "0.95rem",
              lineHeight: 1.6,
              marginBottom: "1.5rem",
            }}
          >
            L&apos;application a rencontré un problème inattendu. Recharge la
            page pour continuer.
          </p>
          <button
            onClick={() => reset()}
            style={{
              background: "#4A6E8F",
              color: "#F5F1E8",
              border: "none",
              borderRadius: "9999px",
              padding: "0.75rem 1.5rem",
              fontSize: "0.9rem",
              fontWeight: 600,
              cursor: "pointer",
            }}
          >
            Recharger la page
          </button>
        </div>
      </body>
    </html>
  );
}
