import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatDate(date: string | Date) {
  return new Intl.DateTimeFormat("fr-FR", {
    dateStyle: "medium",
    timeStyle: "short",
  }).format(new Date(date));
}

export function formatPercent(value: number) {
  return `${Math.round(value)} %`;
}

export function normalizeTextAnswer(value: string) {
  return value.trim().replace(/\s+/g, " ").toLowerCase();
}

export function normalizeTypographicText(value: string) {
  return value
    .normalize("NFKC")
    .replace(/[\u2019`´]/g, "'")
    .replace(/[\u2010\u2011\u2012\u2013\u2014]/g, "-")
    .replace(/\s+/g, " ")
    .replace(/\s+([,.;:!?])/g, "$1")
    .trim();
}

export function stripDiacritics(value: string) {
  return value.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

export function formatCount(count: number, singular: string, plural = `${singular}s`) {
  return `${count} ${count > 1 ? plural : singular}`;
}
