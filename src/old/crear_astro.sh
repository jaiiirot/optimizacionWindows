#!/bin/bash

# Nombre de la carpeta del proyecto
PROJECT_NAME="optimizawin-astro"

echo "🚀 Iniciando la creación del proyecto Astro: $PROJECT_NAME..."
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME

# 1. Iniciar package.json
echo "📦 Configurando package.json..."
cat << 'EOF' > package.json
{
  "name": "optimizawin-astro",
  "type": "module",
  "version": "1.0.0",
  "scripts": {
    "dev": "astro dev",
    "start": "astro dev",
    "build": "astro check && astro build",
    "preview": "astro preview",
    "astro": "astro"
  },
  "dependencies": {
    "@astrojs/check": "^0.5.10",
    "@astrojs/tailwind": "^5.1.0",
    "astro": "^4.5.0",
    "tailwindcss": "^3.4.1",
    "typescript": "^5.4.3"
  }
}
EOF

# 2. Crear estructura de directorios
echo "📂 Creando estructura de carpetas..."
mkdir -p src/pages src/layouts src/styles public .github/workflows

# 3. Configuración de Astro
echo "⚙️ Configurando Astro y Tailwind..."
cat << 'EOF' > astro.config.mjs
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
EOF

# 4. Configuración de Tailwind
cat << 'EOF' > tailwind.config.mjs
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
EOF

# 5. Estilos Globales (Combinando Tailwind y CSS puro)
echo "🎨 Generando global.css..."
cat << 'EOF' > src/styles/global.css
@tailwind base;
@tailwind components;
@tailwind utilities;

/* ===== Variables y CSS Personalizado (Lo que Tailwind no cubre bien) ===== */
:root {
  --bg: #08090b;
  --bg-raised: #0e1013;
  --bg-card: #121417;
  --border: #1f2327;
  --border-soft: #191c1f;
  --text: #e8eaed;
  --text-dim: #8b929c;
  --text-faint: #565c64;
  --accent: #00d2ff; 
  --accent-dim: #008eb3;
  --accent-glow: rgba(0, 210, 255, 0.18);
  --warn: #ffb02e;
  --warn-glow: rgba(255, 176, 46, 0.12);
  --mono: "JetBrains Mono", "Fira Code", ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
  --sans: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  --radius: 10px;
  --max-w: 1080px;
}

body {
  background: var(--bg);
  color: var(--text);
  font-family: var(--sans);
  -webkit-font-smoothing: antialiased;
  overflow-x: hidden;
}

::selection {
  background: var(--accent-glow);
  color: var(--accent);
}

/* Componentes personalizados que mantenemos en CSS puro */
.scan-line {
  position: fixed;
  inset: 0;
  z-index: -1;
  pointer-events: none;
  background: repeating-linear-gradient(
    to bottom,
    rgba(255, 255, 255, 0.012) 0px,
    rgba(255, 255, 255, 0.012) 1px,
    transparent 1px,
    transparent 3px
  );
}

.eyebrow .dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: var(--accent);
  box-shadow: 0 0 8px var(--accent);
  animation: pulse 2s ease-in-out infinite;
}

@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.35; }
}

.step {
  border: 1px solid var(--border);
  border-radius: var(--radius);
  background: var(--bg-card);
  overflow: hidden;
  transition: border-color 0.2s ease;
}
.step:hover { border-color: var(--border-soft); }
.step.is-open { border-color: var(--accent-dim); }

.step-body {
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.35s ease;
  padding: 0 22px;
}
.step.is-open .step-body {
  padding: 4px 22px 26px;
}
.step-chevron {
  transition: transform 0.25s ease;
}
.step.is-open .step-chevron {
  transform: rotate(180deg);
  color: var(--accent);
}

.os-tab.active {
  background: var(--accent-glow);
  border-color: var(--accent);
  color: var(--accent);
  box-shadow: 0 4px 20px var(--accent-glow);
}
.os-content { display: none; }
.os-content.active {
  display: block;
  animation: fadeIn 0.4s ease forwards;
}
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

/* Efectos visuales */
.step-effect {
  font-size: 14px;
  color: var(--text);
  background: var(--accent-glow);
  padding: 12px 16px;
  border-radius: 6px;
  margin-bottom: 16px;
  border-left: 3px solid var(--accent);
  line-height: 1.5;
}
EOF

# 6. Layout de Astro
echo "🧩 Creando Layout..."
cat << 'EOF' > src/layouts/Layout.astro
---
import '../styles/global.css';
interface Props {
  title: string;
}
const { title } = Astro.props;
---
<!doctype html>
<html lang="es" class="scroll-smooth">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Guía de optimización de Windows para Gaming" />
    <meta name="viewport" content="width=device-width" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <meta name="generator" content={Astro.generator} />
    <title>{title}</title>
  </head>
  <body class="m-0 bg-brandBg text-gray-200">
    <!-- Fondo Animado Canvas -->
    <canvas id="grid-bg" class="fixed inset-0 w-full h-full -z-20 bg-brandBg"></canvas>
    <div class="scan-line"></div>

    <header class="sticky top-0 z-50 border-b border-[#1f2327] backdrop-blur-md bg-[#08090b]/70">
      <div class="max-w-[1080px] mx-auto px-6 py-4 flex items-center justify-between">
        <div class="font-mono font-semibold tracking-wide flex items-baseline gap-2">
          <span class="text-brandAccent">&gt;_</span>
          <span class="text-[15px]">OPTIMIZA<span class="text-brandAccent">WIN</span></span>
        </div>
        <nav class="hidden md:flex items-center gap-7 text-sm text-[#8b929c]">
          <a href="#video" class="hover:text-white transition-colors">Video</a>
          <a href="#pasos" class="hover:text-white transition-colors">Guía</a>
          <a href="#consejos" class="hover:text-white transition-colors">Resultados</a>
        </nav>
      </div>
    </header>

    <slot />
  </body>
</html>
EOF

# 7. Index de Astro (con Tailwind inyectado donde era HTML crudo)
echo "📄 Creando Index de Astro..."
cat << 'EOF' > src/pages/index.astro
---
import Layout from '../layouts/Layout.astro';
---
<Layout title="Optimización Windows 10 y 11 — Guía">
  <main>
    <!-- HERO (Usando Tailwind) -->
    <section class="max-w-[1080px] mx-auto px-6 pt-24 pb-16 text-center" id="top">
      <div class="inline-flex items-center gap-2 font-mono text-xs tracking-wider text-[#8b929c] border border-[#1f2327] px-4 py-1.5 rounded-full mb-7 eyebrow">
        <span class="dot"></span> Guías basadas en video · Texto plano
      </div>
      <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold leading-tight tracking-tight mb-6 max-w-3xl mx-auto">
        La optimización definitiva<br>para tu PC de bajos recursos.
      </h1>
      <p class="text-[17px] text-[#8b929c] max-w-xl mx-auto mb-9">
        Procesos, servicios, energía y red explicados paso a paso para que entiendas qué estás tocando. Elegí tu sistema operativo.
      </p>
    </section>

    <!-- TABS SELECTOR (Usando CSS híbrido) -->
    <div class="os-tabs">
      <button class="os-tab active" data-target="win10">
        <span class="text-2xl block mb-1">🪟</span> Windows 10
      </button>
      <button class="os-tab" data-target="win11">
        <span class="text-2xl block mb-1">✨</span> Windows 11
      </button>
    </div>

    <!-- ======================= -->
    <!-- CONTENIDO WINDOWS 10 -->
    <!-- ======================= -->
    <div id="win10" class="os-content active">
      <!-- ADVERTENCIA Tailwind -->
      <section class="border-y border-[#191c1f] bg-[rgba(255,176,46,0.12)]">
        <div class="max-w-[1080px] mx-auto px-6 py-4 flex items-start gap-4 text-sm text-[#e8eaed]">
          <span class="text-[#ffb02e] text-lg font-bold">⚠</span>
          <p class="m-0 leading-relaxed">
            <strong class="text-[#ffb02e]">Antes de tocar nada:</strong> creá un punto de restauración (Paso 1). Si tenés SSD, <strong class="text-[#ffb02e]">nunca lo desfragmentes</strong> — solo optimizalo.
          </p>
        </div>
      </section>

      <section class="max-w-[1080px] mx-auto px-6 py-16" id="pasos-w10">
        <div class="mb-10">
          <p class="font-mono text-xs text-brandAccentDim tracking-widest uppercase mb-2">// guía paso a paso</p>
          <h2 class="text-3xl font-bold">Los 13 pasos para Windows 10</h2>
        </div>
        
        <div class="flex flex-col gap-3">
          <!-- PASO 1 -->
          <article class="step group">
            <button class="w-full flex items-center gap-4 p-5 cursor-pointer text-left step-head">
              <span class="font-mono text-sm font-bold text-brandAccent bg-[rgba(0,210,255,0.18)] min-w-[34px] h-[34px] rounded-md flex items-center justify-center">01</span>
              <span class="flex-1 font-semibold text-[15.5px]">Crear un punto de restauración</span>
              <span class="text-xs text-[#565c64] step-chevron">▾</span>
            </button>
            <div class="step-body">
              <div class="step-effect">
                <strong class="text-brandAccent">¿Qué sucede al hacer esto?</strong> Crea una "foto" del estado actual de tu sistema para revertir cambios.
              </div>
              <ol class="list-decimal list-inside text-sm text-[#8b929c] space-y-2 ml-2 pb-4">
                <li>Abrí <code class="bg-[#0e1013] border border-[#1f2327] px-1 rounded text-brandAccent">Sistema → Protección del sistema</code>.</li>
                <li>Configurá el espacio al <strong class="text-gray-200">5% - 7%</strong>.</li>
                <li>Hacé clic en <strong class="text-gray-200">Crear</strong>.</li>
              </ol>
            </div>
          </article>

          <!-- PASO 2 -->
          <article class="step group">
            <button class="w-full flex items-center gap-4 p-5 cursor-pointer text-left step-head">
              <span class="font-mono text-sm font-bold text-brandAccent bg-[rgba(0,210,255,0.18)] min-w-[34px] h-[34px] rounded-md flex items-center justify-center">02</span>
              <span class="flex-1 font-semibold text-[15.5px]">Ajustes de Configuración y Privacidad</span>
              <span class="text-xs text-[#565c64] step-chevron">▾</span>
            </button>
            <div class="step-body">
              <div class="step-effect">
                <strong class="text-brandAccent">¿Qué sucede al hacer esto?</strong> Corta de raíz la telemetría, liberando RAM.
              </div>
              <ul class="list-disc list-inside text-sm text-[#8b929c] space-y-2 ml-2 pb-4">
                <li>Desactivar <strong class="text-gray-200">Asistente de concentración</strong>.</li>
                <li>En Privacidad, desactivar todo excepto Cuenta de Microsoft.</li>
              </ul>
            </div>
          </article>
        </div>
      </section>
    </div>

    <!-- ======================= -->
    <!-- CONTENIDO WINDOWS 11 -->
    <!-- ======================= -->
    <div id="win11" class="os-content">
      <section class="border-y border-[#191c1f] bg-[rgba(255,176,46,0.12)] mt-8">
        <div class="max-w-[1080px] mx-auto px-6 py-4 flex items-start gap-4 text-sm text-[#e8eaed]">
          <span class="text-[#ffb02e] text-lg font-bold">⚠</span>
          <p class="m-0 leading-relaxed">
            <strong class="text-[#ffb02e]">Cuidado con los mitos en W11:</strong> NO debes tocar MSConfig. Windows ya usa todos los núcleos automáticamente.
          </p>
        </div>
      </section>

      <section class="max-w-[1080px] mx-auto px-6 py-16" id="pasos-w11">
        <div class="mb-10">
          <p class="font-mono text-xs text-brandAccentDim tracking-widest uppercase mb-2">// guía paso a paso</p>
          <h2 class="text-3xl font-bold">Los ajustes para Windows 11</h2>
        </div>
        
        <div class="flex flex-col gap-3">
          <!-- PASO 1 W11 -->
          <article class="step group">
            <button class="w-full flex items-center gap-4 p-5 cursor-pointer text-left step-head">
              <span class="font-mono text-sm font-bold text-brandAccent bg-[rgba(0,210,255,0.18)] min-w-[34px] h-[34px] rounded-md flex items-center justify-center">01</span>
              <span class="flex-1 font-semibold text-[15.5px]">Deshabilitar Game Mode y Game Bar</span>
              <span class="text-xs text-[#565c64] step-chevron">▾</span>
            </button>
            <div class="step-body">
              <div class="step-effect">
                <strong class="text-brandAccent">¿Qué sucede al hacer esto?</strong> Evita que Game Bar grabe en segundo plano.
              </div>
              <ul class="list-disc list-inside text-sm text-[#8b929c] space-y-2 ml-2 pb-4">
                <li><code class="bg-[#0e1013] border border-[#1f2327] px-1 rounded text-brandAccent">Configuración → Juegos</code>. Apagar Modo de Juego y Game Bar.</li>
              </ul>
            </div>
          </article>
        </div>
      </section>
    </div>

  </main>

  <script is:inline>
    // ===== Acordeón de pasos =====
    document.querySelectorAll('.step-head').forEach((head) => {
      head.addEventListener('click', () => {
        const step = head.closest('.step');
        const body = step.querySelector('.step-body');
        const isOpen = step.classList.contains('is-open');

        if (isOpen) {
          body.style.maxHeight = null;
          step.classList.remove('is-open');
        } else {
          step.classList.add('is-open');
          body.style.maxHeight = body.scrollHeight + 'px';
        }
      });
    });

    // ===== Selector de Sistema Operativo (Tabs) =====
    document.querySelectorAll('.os-tab').forEach((tab) => {
      tab.addEventListener('click', () => {
        document.querySelectorAll('.os-tab').forEach((t) => t.classList.remove('active'));
        document.querySelectorAll('.os-content').forEach((c) => c.classList.remove('active'));
        tab.classList.add('active');
        const targetId = tab.getAttribute('data-target');
        document.getElementById(targetId).classList.add('active');
      });
    });

    // ===== Fondo Animado Canvas =====
    (function () {
      const canvas = document.getElementById('grid-bg');
      if (!canvas) return;
      const ctx = canvas.getContext('2d');
      const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

      let w, h, cols, rows;
      const spacing = 46;
      let nodes = [];
      let pulses = [];

      function resize() {
        w = canvas.width = window.innerWidth;
        h = canvas.height = window.innerHeight;
        cols = Math.ceil(w / spacing) + 1;
        rows = Math.ceil(h / spacing) + 1;
        nodes = [];
        for (let y = 0; y < rows; y++) {
          for (let x = 0; x < cols; x++) {
            nodes.push({ x: x * spacing, y: y * spacing });
          }
        }
      }

      function spawnPulse() {
        if (nodes.length === 0) return;
        const horizontal = Math.random() > 0.5;
        pulses.push({
          progress: 0,
          speed: 0.006 + Math.random() * 0.01,
          horizontal,
          lane: Math.floor(Math.random() * (horizontal ? rows : cols)),
        });
        if (pulses.length > 14) pulses.shift();
      }

      function draw() {
        ctx.clearRect(0, 0, w, h);
        
        ctx.fillStyle = 'rgba(0, 210, 255, 0.05)';
        for (const n of nodes) {
          ctx.beginPath(); ctx.arc(n.x, n.y, 1, 0, Math.PI * 2); ctx.fill();
        }

        ctx.strokeStyle = 'rgba(255,255,255,0.015)';
        ctx.lineWidth = 1;
        for (let x = 0; x <= cols; x++) {
          ctx.beginPath(); ctx.moveTo(x * spacing, 0); ctx.lineTo(x * spacing, h); ctx.stroke();
        }
        for (let y = 0; y <= rows; y++) {
          ctx.beginPath(); ctx.moveTo(0, y * spacing); ctx.lineTo(w, y * spacing); ctx.stroke();
        }

        pulses.forEach((p) => {
          p.progress += p.speed;
          const alpha = Math.sin(p.progress * Math.PI);
          let px = p.horizontal ? p.progress * w : p.lane * spacing;
          let py = p.horizontal ? p.lane * spacing : p.progress * h;
          
          const grad = ctx.createRadialGradient(px, py, 0, px, py, 60);
          grad.addColorStop(0, `rgba(0, 210, 255, ${0.5 * alpha})`);
          grad.addColorStop(1, 'rgba(0, 210, 255, 0)');
          ctx.fillStyle = grad;
          ctx.beginPath(); ctx.arc(px, py, 60, 0, Math.PI * 2); ctx.fill();
          
          ctx.fillStyle = `rgba(180, 240, 255, ${alpha})`;
          ctx.beginPath(); ctx.arc(px, py, 2, 0, Math.PI * 2); ctx.fill();
        });
        pulses = pulses.filter((p) => p.progress < 1);
      }

      let lastSpawn = 0;
      function loop(t) {
        if (t - lastSpawn > 900) { spawnPulse(); lastSpawn = t; }
        draw();
        requestAnimationFrame(loop);
      }

      window.addEventListener('resize', resize);
      resize();
      if (!reduceMotion) requestAnimationFrame(loop); else draw();
    })();
  </script>
</Layout>
EOF

# 8. GitHub Actions Workflow para GitHub Pages
echo "🤖 Configurando GitHub Actions..."
cat << 'EOF' > .github/workflows/deploy.yml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      
      - name: Setup Node
        uses: actions/setup-node@v4
        with:
          node-version: "20"
          cache: npm
          
      - name: Install dependencies
        run: npm ci

      - name: Build Astro
        run: npm run build

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: './dist'

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
EOF

# 9. Instalar dependencias
echo "📥 Instalando dependencias de NPM (Astro + Tailwind)..."
npm install

echo ""
echo "✅ ¡Proyecto Astro creado exitosamente!"
echo "➡️  Para probarlo localmente:"
echo "   cd $PROJECT_NAME"
echo "   npm run dev"
echo ""
echo "🌐 Para subir a GitHub Pages:"
echo "   1. Crea un repositorio en GitHub."
echo "   2. Cambia 'site' y 'base' en astro.config.mjs si es necesario (ej: base: '/nombre-repo')."
echo "   3. Haz git init, add, commit y push a la rama 'main'."
echo "   4. Ve a Settings > Pages en tu repo y selecciona 'GitHub Actions' como source."
