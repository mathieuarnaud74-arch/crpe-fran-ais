import type { Meta, StoryObj } from "@storybook/react";
import { Badge } from "./badge";

const meta: Meta<typeof Badge> = {
  title: "UI/Badge",
  component: Badge,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof Badge>;

export const Neutral: Story = {
  args: { tone: "neutral", children: "Neutre" },
};

export const Accent: Story = {
  args: { tone: "accent", children: "Accent" },
};

export const AccentSecondary: Story = {
  args: { tone: "accentSecondary", children: "Terracotta" },
};

export const Success: Story = {
  args: { tone: "success", children: "Succès" },
};

export const Warning: Story = {
  args: { tone: "warning", children: "Attention" },
};

export const Error: Story = {
  args: { tone: "error", children: "Erreur" },
};

export const SizeMd: Story = {
  args: { tone: "accent", size: "md", children: "Taille md" },
};

export const SizeSm: Story = {
  args: { tone: "accent", size: "sm", children: "Taille sm" },
};
