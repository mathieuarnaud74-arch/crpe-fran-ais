"use client";

import { useState } from "react";

import { Button } from "@/components/ui/button";

type CheckoutButtonProps = {
  endpoint: "/api/stripe/checkout" | "/api/stripe/portal";
  label: string;
  priceId?: string;
  disabled?: boolean;
};

export function CheckoutButton({
  endpoint,
  label,
  priceId,
  disabled = false,
}: CheckoutButtonProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState("");

  async function handleClick() {
    setIsLoading(true);
    setError("");

    const response = await fetch(endpoint, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(priceId ? { priceId } : {}),
    });

    const data = (await response.json()) as { url?: string; error?: string };

    if (!response.ok || !data.url) {
      setError(data.error ?? "Une erreur est survenue.");
      setIsLoading(false);
      return;
    }

    window.location.href = data.url;
  }

  return (
    <div className="space-y-2">
      <Button type="button" onClick={handleClick} disabled={disabled || isLoading}>
        {isLoading ? "Redirection..." : label}
      </Button>
      {error ? <p className="text-sm text-error">{error}</p> : null}
    </div>
  );
}
