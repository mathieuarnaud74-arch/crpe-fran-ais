import type { Meta, StoryObj } from "@storybook/react";
import { DomainGauge } from "./domain-gauge";

const meta: Meta<typeof DomainGauge> = {
  title: "Dashboard/DomainGauge",
  component: DomainGauge,
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof DomainGauge>;

export const ZeroPercent: Story = {
  args: {
    label: "Grammaire",
    percentage: 0,
    status: "prioritaire",
  },
};

export const ThirtyThreePercent: Story = {
  args: {
    label: "Orthographe",
    percentage: 33,
    status: "fragile",
  },
};

export const SixtySevenPercent: Story = {
  args: {
    label: "Conjugaison",
    percentage: 67,
    status: "en_cours",
  },
};

export const HundredPercent: Story = {
  args: {
    label: "Lexique",
    percentage: 100,
    status: "acquis",
  },
};
