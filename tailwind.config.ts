import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./features/**/*.{js,ts,jsx,tsx,mdx}",
    "./lib/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        paper: "#F5F1E8",
        secondary: "#EAE4D8",
        ink: "#2C2420",
        muted: "#6B534A",
        accent: "#4A6E8F",
        accentDark: "#3A5A7A",
        accentSecondary: "#A46849",
        accentSecondaryDark: "#7E4E36",
        accentSecondarySoft: "#F1E0D5",
        border: "#D8D2C6",
        card: "#FDF9F3",
        surface: "#FFFDF9",
        pine: "#31463E",
        warning: "#92400E",
        warningBg: "#FEF3C7",
        warningBorder: "#F59E0B",
        error: "#991B1B",
        errorBg: "#FEF2F2",
        errorBorder: "#F87171",
        successBg: "#F0FAF5",
        successBorder: "#6EE7B7",
      },
      borderRadius: {
        inner: "1.1rem",
        card: "1.25rem",
        panel: "1.5rem",
        shell: "1.75rem",
        pill: "2rem",
      },
      boxShadow: {
        panel: "0 16px 36px rgba(44, 36, 32, 0.09), 0 2px 8px rgba(44, 36, 32, 0.04)",
        subtle: "0 2px 10px rgba(44, 36, 32, 0.06)",
        elevated: "0 24px 56px rgba(44, 36, 32, 0.13), 0 4px 12px rgba(44, 36, 32, 0.06)",
      },
      backgroundImage: {
        "gradient-panel": "linear-gradient(135deg, rgba(241,224,213,0.75), rgba(252,250,246,1) 52%, rgba(234,228,216,0.7))",
        "gradient-panel-light": "linear-gradient(135deg, rgba(241,224,213,0.4), rgba(252,250,246,1) 60%)",
        "gradient-progress": "linear-gradient(90deg, #4A6E8F, #A46849)",
      },
      fontFamily: {
        sans: ["var(--font-sans)", '"Avenir Next"', '"Segoe UI"', "sans-serif"],
        serif: ["var(--font-serif)", '"Iowan Old Style"', '"Palatino Linotype"', "serif"],
      },
    },
  },
  plugins: [],
};

export default config;
