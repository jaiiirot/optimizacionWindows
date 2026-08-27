/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        brandBg: '#08090b',
        brandCard: '#121417',
        brandAccent: '#00d2ff',
        brandAccentDim: '#008eb3',
      }
    },
  },
  plugins: [],
}
