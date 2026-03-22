import type { Meta, StoryObj } from "@storybook/react";
import { LevelBadge } from "./level-badge";

const meta: Meta<typeof LevelBadge> = {
  title: "UI/LevelBadge",
  component: LevelBadge,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof LevelBadge>;

export const Level1: Story = {
  args: { level: 1 },
};

export const Level5: Story = {
  args: { level: 5 },
};

export const Level10: Story = {
  args: { level: 10 },
};

export const SizeSmall: Story = {
  args: { level: 3, size: "sm" },
};

export const SizeLarge: Story = {
  args: { level: 7, size: "lg" },
};
