import type { Meta, StoryObj } from "@storybook/react";
import { Button } from "./button";

const meta: Meta<typeof Button> = {
  title: "UI/Button",
  component: Button,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof Button>;

export const Primary: Story = {
  args: { variant: "primary", children: "Bouton principal" },
};

export const Secondary: Story = {
  args: { variant: "secondary", children: "Bouton secondaire" },
};

export const Ghost: Story = {
  args: { variant: "ghost", children: "Bouton ghost" },
};

export const Destructive: Story = {
  args: { variant: "destructive", children: "Supprimer" },
};

export const SizeDefault: Story = {
  args: { size: "default", children: "Taille par défaut" },
};

export const SizeSmall: Story = {
  args: { size: "sm", children: "Petit" },
};

export const SizeLarge: Story = {
  args: { size: "lg", children: "Grand" },
};

export const SizeIcon: Story = {
  args: { size: "icon", children: "✕" },
};

export const Disabled: Story = {
  args: { variant: "primary", children: "Désactivé", disabled: true },
};
