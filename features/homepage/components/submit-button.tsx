"use client";

import { useFormStatus } from "react-dom";

import { Button, type ButtonProps } from "@/components/ui/button";

type SubmitButtonProps = ButtonProps & {
  idleLabel: string;
  pendingLabel?: string;
};

export function SubmitButton({
  idleLabel,
  pendingLabel = "En cours...",
  disabled,
  ...props
}: SubmitButtonProps) {
  const { pending } = useFormStatus();

  return (
    <Button disabled={disabled || pending} {...props}>
      {pending ? pendingLabel : idleLabel}
    </Button>
  );
}
