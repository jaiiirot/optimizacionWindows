import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  // IMPORTANTE PARA GITHUB PAGES:
  // site: 'https://TU_USUARIO.github.io',
  // base: '/NOMBRE_DEL_REPOSITORIO',
  integrations: [tailwind()],
  outDir: 'dist',
});
