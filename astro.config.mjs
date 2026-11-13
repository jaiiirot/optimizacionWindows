import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";

export default defineConfig({
  site: "https://jaiiirot.github.io",
  base: "/optimizacionWindows/",
  integrations: [tailwind()],
  outDir: "dist",
});
