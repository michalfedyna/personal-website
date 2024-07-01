const colors = require("tailwindcss/colors");

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    fontFamily: {
      sans: ["Poppins", "sans-serif"],
      poppins: ["Poppins", "sans-serfi"],
      rubik: ["Rubik", "sans-serfi"],
    },
    extend: {
      colors: {
        brand: "#3178C6",
        primary: colors.blue[400],
        secondary: colors.blue[900],
        action: colors.amber[400],
      },
    },
  },
  plugins: [],
};
