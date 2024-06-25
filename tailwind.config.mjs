const defaultTheme = require("tailwindcss/defaultTheme");
const colors = require("tailwindcss/colors");

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      fontFamily: {
        serif: ['"Poppins"', ...defaultTheme.fontFamily.serif],
      },
      colors: {
        primary: colors.blue[400],
        secondary: colors.blue[900],
        action: colors.amber[400],
      },
    },
  },
  plugins: [],
};
