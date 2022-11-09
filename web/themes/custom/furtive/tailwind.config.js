/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./templates/**/*.twig"],
  theme: {
    extend: {
      boxShadow: {
        'hard': '6px 6px var(--tw-prose-bold)',
      }
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
