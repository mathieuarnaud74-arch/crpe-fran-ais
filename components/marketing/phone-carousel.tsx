"use client";

import { ChevronLeft, ChevronRight } from "lucide-react";
import Image from "next/image";
import { useCallback, useEffect, useRef, useState } from "react";

import { cn } from "@/lib/utils";

const PHONES = [
  { src: "/phone-1.png", alt: "Tableau de bord — suivi de progression", width: 1530, height: 3036 },
  { src: "/phone-2.png", alt: "Exercice interactif — grammaire", width: 1530, height: 3036 },
  { src: "/phone-3.png", alt: "Liste des séries — Nombres et Calcul", width: 1530, height: 3036 },
];

const AUTO_PLAY_MS = 4000;

export function PhoneCarousel() {
  const [active, setActive] = useState(0);
  const timerRef = useRef<ReturnType<typeof setInterval>>(undefined);
  const trackRef = useRef<HTMLDivElement>(null);

  const scrollTo = useCallback((index: number) => {
    trackRef.current?.children[index]?.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "center",
    });
  }, []);

  const goTo = useCallback((index: number) => {
    const clamped = (index + PHONES.length) % PHONES.length;
    setActive(clamped);
    scrollTo(clamped);
  }, [scrollTo]);

  const startTimer = useCallback(() => {
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

  useEffect(() => {
    startTimer();
    return () => clearInterval(timerRef.current);
  }, [startTimer]);

  const handleNav = useCallback((dir: -1 | 1) => {
    goTo(active + dir);
    startTimer();
  }, [active, goTo, startTimer]);

  return (
    <div className="flex flex-col items-center gap-4">
      {/* Track + arrows */}
      <div className="relative w-full">
        <div
          ref={trackRef}
          className="flex w-full snap-x snap-mandatory gap-4 overflow-x-auto scroll-smooth pb-2 scrollbar-none"
          onScroll={(e) => {
            const el = e.currentTarget;
            const itemWidth = el.scrollWidth / PHONES.length;
            const newIndex = Math.round(el.scrollLeft / itemWidth);
            if (newIndex !== active && newIndex >= 0 && newIndex < PHONES.length) {
              setActive(newIndex);
              startTimer();
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
                  i === active ? "scale-100 opacity-100" : "scale-90 opacity-40",
                )}
              >
                <Image
                  src={phone.src}
                  alt={phone.alt}
                  width={phone.width}
                  height={phone.height}
                  sizes="(max-width: 768px) 260px, 320px"
                  className="h-[550px] w-auto object-contain drop-shadow-2xl sm:h-[620px] lg:h-[700px]"
                  unoptimized
                  priority={i === 0}
                />
              </div>
            </div>
          ))}
        </div>

        {/* Desktop arrows */}
        <button
          type="button"
          aria-label="Image précédente"
          onClick={() => handleNav(-1)}
          className="absolute left-0 top-1/2 z-10 hidden -translate-y-1/2 rounded-full border border-border/60 bg-card/90 p-2 shadow-subtle backdrop-blur transition-all hover:bg-card hover:shadow-panel lg:block"
        >
          <ChevronLeft className="h-5 w-5 text-muted" />
        </button>
        <button
          type="button"
          aria-label="Image suivante"
          onClick={() => handleNav(1)}
          className="absolute right-0 top-1/2 z-10 hidden -translate-y-1/2 rounded-full border border-border/60 bg-card/90 p-2 shadow-subtle backdrop-blur transition-all hover:bg-card hover:shadow-panel lg:block"
        >
          <ChevronRight className="h-5 w-5 text-muted" />
        </button>
      </div>

      {/* Dots */}
      <div className="flex gap-2">
        {PHONES.map((_, i) => (
          <button
            key={i}
            type="button"
            aria-label={`Voir capture ${i + 1}`}
            onClick={() => { goTo(i); startTimer(); }}
            className={cn(
              "h-2 rounded-full transition-all duration-300",
              i === active ? "w-6 bg-accent" : "w-2 bg-border hover:bg-muted",
            )}
          />
        ))}
      </div>
    </div>
  );
}
