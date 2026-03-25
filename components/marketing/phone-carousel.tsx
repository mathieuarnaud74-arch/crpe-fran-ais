"use client";

import Image from "next/image";
import { useCallback, useEffect, useRef, useState } from "react";

import { cn } from "@/lib/utils";

const PHONES = [
  { src: "/phone-1.png", alt: "Tableau de bord — suivi de progression", width: 381, height: 720 },
  { src: "/phone-2.png", alt: "Exercice interactif — grammaire", width: 461, height: 1024 },
  { src: "/phone-3.png", alt: "Liste des séries — Nombres et Calcul", width: 461, height: 1024 },
];

const AUTO_PLAY_MS = 4000;

export function PhoneCarousel() {
  const [active, setActive] = useState(0);
  const timerRef = useRef<ReturnType<typeof setInterval>>(undefined);
  const trackRef = useRef<HTMLDivElement>(null);

  const goTo = useCallback((index: number) => {
    setActive(index);
    trackRef.current?.children[index]?.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "center",
    });
  }, []);

  // Auto-play
  useEffect(() => {
    timerRef.current = setInterval(() => {
      setActive((prev) => {
        const next = (prev + 1) % PHONES.length;
        trackRef.current?.children[next]?.scrollIntoView({
          behavior: "smooth",
          block: "nearest",
          inline: "center",
        });
        return next;
      });
    }, AUTO_PLAY_MS);
    return () => clearInterval(timerRef.current);
  }, []);

  // Pause auto-play on interaction
  const resetTimer = useCallback(() => {
    clearInterval(timerRef.current);
    timerRef.current = setInterval(() => {
      setActive((prev) => {
        const next = (prev + 1) % PHONES.length;
        trackRef.current?.children[next]?.scrollIntoView({
          behavior: "smooth",
          block: "nearest",
          inline: "center",
        });
        return next;
      });
    }, AUTO_PLAY_MS);
  }, []);

  return (
    <div className="flex flex-col items-center gap-4">
      {/* Scrollable track */}
      <div
        ref={trackRef}
        className="flex w-full snap-x snap-mandatory gap-4 overflow-x-auto scroll-smooth pb-2 scrollbar-none"
        onScroll={(e) => {
          const el = e.currentTarget;
          const scrollLeft = el.scrollLeft;
          const itemWidth = el.scrollWidth / PHONES.length;
          const newIndex = Math.round(scrollLeft / itemWidth);
          if (newIndex !== active && newIndex >= 0 && newIndex < PHONES.length) {
            setActive(newIndex);
            resetTimer();
          }
        }}
      >
        {PHONES.map((phone, i) => (
          <div
            key={phone.src}
            className="flex w-full shrink-0 snap-center items-end justify-center"
          >
            <div
              className={cn(
                "transition-all duration-500 ease-out",
                i === active
                  ? "scale-100 opacity-100"
                  : "scale-90 opacity-40",
              )}
            >
              <Image
                src={phone.src}
                alt={phone.alt}
                width={phone.width}
                height={phone.height}
                sizes="(max-width: 768px) 240px, 300px"
                className="h-[420px] w-auto object-contain drop-shadow-2xl sm:h-[480px] lg:h-[520px]"
                unoptimized
                priority={i === 0}
              />
            </div>
          </div>
        ))}
      </div>

      {/* Dots */}
      <div className="flex gap-2">
        {PHONES.map((_, i) => (
          <button
            key={i}
            type="button"
            aria-label={`Voir capture ${i + 1}`}
            onClick={() => { goTo(i); resetTimer(); }}
            className={cn(
              "h-2 rounded-full transition-all duration-300",
              i === active
                ? "w-6 bg-accent"
                : "w-2 bg-border hover:bg-muted",
            )}
          />
        ))}
      </div>
    </div>
  );
}
