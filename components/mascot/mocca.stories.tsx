import type { Meta, StoryObj } from "@storybook/react";
import { Mocca } from "./mocca";

const meta: Meta<typeof Mocca> = {
  title: "Mascot/Mocca",
  component: Mocca,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof Mocca>;

export const Happy: Story = {
  args: { variant: "happy" },
};

export const Neutral: Story = {
  args: { variant: "neutral" },
};

export const Grumpy: Story = {
  args: { variant: "grumpy" },
};

export const SizeSmall: Story = {
  args: { variant: "happy", size: "sm" },
};

export const SizeMedium: Story = {
  args: { variant: "happy", size: "md" },
};

export const SizeLarge: Story = {
  args: { variant: "happy", size: "lg" },
};
