import type { Meta, StoryObj } from "@storybook/react";
import { XpBar } from "./xp-bar";

const meta: Meta<typeof XpBar> = {
  title: "UI/XpBar",
  component: XpBar,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof XpBar>;

export const LowXp: Story = {
  args: {
    currentLevel: 1,
    xpInCurrentLevel: 50,
    xpNeededForNext: 200,
    progress: 50 / 200,
    totalXp: 50,
  },
};

export const MidXp: Story = {
  args: {
    currentLevel: 5,
    xpInCurrentLevel: 500,
    xpNeededForNext: 800,
    progress: 500 / 800,
    totalXp: 2500,
  },
};

export const NearLevelUp: Story = {
  args: {
    currentLevel: 3,
    xpInCurrentLevel: 180,
    xpNeededForNext: 200,
    progress: 180 / 200,
    totalXp: 780,
  },
};

export const Compact: Story = {
  args: {
    currentLevel: 2,
    xpInCurrentLevel: 100,
    xpNeededForNext: 300,
    progress: 100 / 300,
    totalXp: 400,
    compact: true,
  },
};
