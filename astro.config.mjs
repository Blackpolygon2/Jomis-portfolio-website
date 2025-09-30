// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from "@tailwindcss/vite";
import vue from '@astrojs/vue';

// https://astro.build/config
export default defineConfig({
  vite: {    plugins: [tailwindcss()],  },
    integrations: [vue()],
    site: 'https://blackpolygon2.github.io',
    base: '/Jomis-portfolio-website'
});