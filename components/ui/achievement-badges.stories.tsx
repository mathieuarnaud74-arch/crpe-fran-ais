import type { Meta, StoryObj } from "@storybook/react";
import { AchievementBadges } from "./achievement-badges";
import type { EarnedBadge } from "@/types/domain";

const sampleBadges: EarnedBadge[] = [
  { id: "first-answer", label: "Premier pas", description: "Répondre à sa première question", icon: "\uD83C\uDF31", category: "milestone" },
  { id: "10-answers", label: "Curieux", description: "10 réponses données", icon: "\uD83D\uDD0D", category: "milestone" },
  { id: "perfect-score", label: "Sans faute", description: "100 % sur une série complète", icon: "\uD83C\uDFAF", category: "mastery" },
  { id: "3-active-days", label: "Habitude", description: "Actif sur 3 jours", icon: "\uD83D\uDD25", category: "streak" },
  { id: "first-error", label: "Errare humanum est", description: "Première mauvaise réponse", icon: "\u274C", category: "engagement" },
];

const meta: Meta<typeof AchievementBadges> = {
  title: "UI/AchievementBadges",
  component: AchievementBadges,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof AchievementBadges>;

export const WithSampleBadges: Story = {
  args: {
    earnedBadges: sampleBadges,
  },
};

export const Compact: Story = {
  args: {
    earnedBadges: sampleBadges,
    compact: true,
  },
};

export const NoBadges: Story = {
  args: {
    earnedBadges: [],
  },
};
