"use client";

import { useEffect, useRef, useState } from "react";

const COLORS = ["#4A6E8F", "#A46849", "#476257", "#6B8F80", "#6EE7B7", "#F5A623", "#3A5A7A"];

type Particle = {
  id: number;
  x: number;
  delay: number;
  color: string;
  size: number;
  rotation: number;
  drift: number;
  shape: "circle" | "rect" | "strip";
};

function createParticles(count: number): Particle[] {
  return Array.from({ length: count }, (_, i) => {
    const shapes: Particle["shape"][] = ["circle", "rect", "strip"];
    return {
      id: i,
      x: Math.random() * 100,
      delay: Math.random() * 600,
      color: COLORS[Math.floor(Math.random() * COLORS.length)],
      size: Math.random() * 6 + 4,
      rotation: Math.random() * 360,
      drift: (Math.random() - 0.5) * 120,
      shape: shapes[Math.floor(Math.random() * shapes.length)],
    };
  });
}

export function Confetti({ trigger }: { trigger: boolean }) {
  const [particles, setParticles] = useState<Particle[]>([]);
  const prevTrigger = useRef(false);

  useEffect(() => {
    if (trigger && !prevTrigger.current) {
      setParticles(createParticles(60));
      const timer = setTimeout(() => setParticles([]), 3500);
      return () => clearTimeout(timer);
    }
    prevTrigger.current = trigger;
  }, [trigger]);

  if (particles.length === 0) return null;

  const prefersReducedMotion =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  if (prefersReducedMotion) return null;

  return (
    <div className="pointer-events-none fixed inset-0 z-50 overflow-hidden" aria-hidden="true">
      {particles.map((p) => (
        <span
          key={p.id}
          className="animate-confetti-fall absolute top-0"
          style={{
            left: `${p.x}%`,
            animationDelay: `${p.delay}ms`,
            ["--confetti-drift" as string]: `${p.drift}px`,
            ["--confetti-rotation" as string]: `${p.rotation}deg`,
          }}
        >
          <span
            style={{
              display: "block",
              backgroundColor: p.color,
              width: p.shape === "strip" ? `${p.size * 0.4}px` : `${p.size}px`,
              height: p.shape === "strip" ? `${p.size * 1.8}px` : `${p.size}px`,
              borderRadius: p.shape === "circle" ? "50%" : "1px",
              transform: `rotate(${p.rotation}deg)`,
            }}
          />
        </span>
      ))}
    </div>
  );
}
