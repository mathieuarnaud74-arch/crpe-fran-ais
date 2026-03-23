type StatusGlyphProps = {
  tone: "success" | "warning" | "error";
  size?: "md" | "lg";
};

export function StatusGlyph({ tone, size = "md" }: StatusGlyphProps) {
  const sizeClass = size === "lg" ? "h-5 w-5" : "h-4 w-4";

  if (tone === "success") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
        <path d="M4.75 10.25 8.25 13.75 15.25 6.75" strokeLinecap="round" strokeLinejoin="round" />
      </svg>
    );
  }

  if (tone === "warning") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
        <path d="M10 6.25v4.5" strokeLinecap="round" />
        <circle cx="10" cy="13.75" r="0.8" fill="currentColor" stroke="none" />
      </svg>
    );
  }

  return (
    <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
      <path d="m6.5 6.5 7 7" strokeLinecap="round" />
      <path d="m13.5 6.5-7 7" strokeLinecap="round" />
    </svg>
  );
}
