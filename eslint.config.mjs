// For more info, see https://github.com/storybookjs/eslint-plugin-storybook#configuration-flat-config-format
import storybook from "eslint-plugin-storybook";

import { dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { FlatCompat } from "@eslint/eslintrc";

const compat = new FlatCompat({
  baseDirectory: dirname(fileURLToPath(import.meta.url)),
});

const config = [{
  ignores: [".next/**", "node_modules/**"],
}, ...compat.extends("next/core-web-vitals"), ...storybook.configs["flat/recommended"], {
  files: ["**/*.stories.@(ts|tsx|js|jsx)"],
  rules: {
    "storybook/no-renderer-packages": "off",
  },
}];

export default config;
