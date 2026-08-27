#!/bin/bash
echo "⚙️  Preparando todo para actualizar el sitio web..."

echo "📄 Sobrescribiendo index.html..."
cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Optimización Windows 10 y 11 — Guía paso a paso</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- fondo de circuito animado -->
<canvas id="grid-bg"></canvas>

<div class="scan-line"></div>

<header class="site-header">
  <div class="header-inner">
    <div class="brand">
      <span class="brand-mark">&gt;_</span>
      <span class="brand-text">OPTIMIZA<span class="accent">WIN</span></span>
    </div>
    <nav class="header-nav">
      <a href="#video">Video</a>
      <a href="#pasos">Guía</a>
      <a href="#consejos">Consejos / Resultados</a>
    </nav>
  </div>
</header>

<main>

  <!-- HERO -->
  <section class="hero" id="top">
    <div class="hero-inner" style="text-align: center;">
      <p class="eyebrow"><span class="dot"></span> Guías basadas en video · Texto plano</p>
      <h1 style="margin-inline: auto;">La optimización definitiva<br>para tu PC de bajos recursos.</h1>
      <p class="hero-sub" style="margin-inline: auto;">Procesos, servicios, energía y red explicados paso a paso para que entiendas qué estás tocando. Elegí tu sistema operativo para empezar.</p>
    </div>
  </section>

  <!-- TABS SELECTOR -->
  <div class="os-tabs">
    <button class="os-tab active" data-target="win10">
      <span style="font-size: 24px; display: block; margin-bottom: 4px;">🪟</span>
      Windows 10
    </button>
    <button class="os-tab" data-target="win11">
      <span style="font-size: 24px; display: block; margin-bottom: 4px;">✨</span>
      Windows 11
    </button>
  </div>

  <!-- ========================================== -->
  <!-- ========== CONTENIDO WINDOWS 10 ========== -->
  <!-- ========================================== -->
  <div id="win10" class="os-content active">
    
    <!-- VIDEO W10 -->
    <section class="video-section" id="video-w10">
      <div class="section-head">
        <p class="section-kicker">// referencia original windows 10</p>
        <h2>Mirá el video mientras seguís la guía</h2>
        <p class="section-desc">Esta página resume y ordena en texto lo que se hace en el video de Windows 10.</p>
      </div>
      <div class="video-wrap">
        <div class="video-frame">
          <iframe src="https://www.youtube.com/embed/8lUWiZfunOM" title="La MEJOR Optimización para Windows 10 en 2023" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="video-meta">
          <span class="badge">The_Tito</span>
          <span class="video-title">La MEJOR Optimización para Windows 10 en 2023</span>
          <a href="https://www.youtube.com/watch?v=8lUWiZfunOM" target="_blank" rel="noopener" class="link-out">Ver en YouTube ↗</a>
        </div>
      </div>
    </section>

    <!-- AVISO W10 -->
    <section class="warning-strip">
      <div class="warning-inner">
        <span class="warning-icon">⚠</span>
        <p><strong>Antes de tocar nada:</strong> creá un punto de restauración (Paso 1). Si tenés SSD, <strong>nunca lo desfragmentes</strong> — solo optimizalo.</p>
      </div>
    </section>

    <!-- PASOS W10 -->
    <section class="steps-section" id="pasos-w10">
      <div class="section-head">
        <p class="section-kicker">// guía paso a paso</p>
        <h2>Los 13 pasos para Windows 10</h2>
      </div>
      <div class="timeline">
        
        <!-- Paso 1 -->
        <article class="step" data-step="1">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">01</span><span class="step-title">Crear un punto de restauración</span><span class="step-time">0:30</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Crea una "foto" del estado actual de tu sistema. Si alguna configuración te da problemas, podés usar este punto para volver atrás sin perder tus archivos personales.</div>
            <ol class="action-list">
              <li>Abrí <code>Panel de control → Sistema → Protección del sistema</code>.</li>
              <li>Configurá el uso de espacio en disco entre <strong>5% y 7%</strong>.</li>
              <li>Aplicá y aceptá. Hacé clic en <strong>"Crear"</strong> y ponele un nombre identificable.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 2 -->
        <article class="step" data-step="2">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">02</span><span class="step-title">Deshabilitar temporizador de alta precisión</span><span class="step-time">0:46</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> El HPET a veces causa micro-cortes ("stuttering") y sube el input lag. Desactivarlo obliga a Windows a usar temporizadores más ligeros.</div>
            <ol class="action-list">
              <li>Abrí el <strong>Administrador de dispositivos</strong>.</li>
              <li>Desplegá <strong>"Dispositivos del sistema"</strong>.</li>
              <li>Buscá <strong>"Temporizador de eventos de alta precisión"</strong> y deshabilitalo.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 3 -->
        <article class="step" data-step="3">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">03</span><span class="step-title">Optimización de rendimiento visual</span><span class="step-time">1:09</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Le quita carga de trabajo a la placa de video y al procesador desactivando animaciones y sombras innecesarias.</div>
            <ol class="action-list">
              <li>Buscá <strong>"Configuración de rendimiento visual"</strong>.</li>
              <li>Elegí <strong>"Ajustar para obtener el mejor rendimiento"</strong>.</li>
              <li>Volvé a activar: Suavizar bordes de fuentes, Mostrar miniaturas y Mostrar contenido al arrastrar.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 4 -->
        <article class="step" data-step="4">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">04</span><span class="step-title">Ajustes de Configuración de Windows</span><span class="step-time">1:36</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Corta de raíz la telemetría y desactiva aplicaciones en segundo plano, liberando RAM y ancho de banda.</div>
            <p class="step-group-label">Sistema y Privacidad</p>
            <ul class="action-list">
              <li>Desactivar <strong>Asistente de concentración</strong> y activar <strong>Sensor de almacenamiento</strong>.</li>
              <li>En Privacidad, desactivar: Voz, Diagnóstico, Historial, Ubicación, Notificaciones, Contactos, Aplicaciones en segundo plano, etc. (Dejar Cuenta de Microsoft activada).</li>
              <li>En Colores, desactivar <strong>Efectos de transparencia</strong>.</li>
              <li>En Optimización de distribución (Windows Update), limitar ancho de banda al <strong>5%</strong>.</li>
            </ul>
          </div>
        </article>

        <!-- Paso 5 -->
        <article class="step" data-step="5">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">05</span><span class="step-title">Plan de energía en alto rendimiento</span><span class="step-time">3:19</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Evita que los componentes entren en ahorro de energía, garantizando respuesta instantánea.</div>
            <ol class="action-list">
              <li>Seleccioná <strong>"Máximo rendimiento"</strong> en el Panel de Control.</li>
              <li>En configuración avanzada: Apagar disco duro = 0 (nunca).</li>
              <li>Estado mínimo y máximo del procesador = 100%. *(Ver consejo de temperaturas abajo si tu PC calienta mucho).*</li>
            </ol>
          </div>
        </article>

        <!-- Paso 6 -->
        <article class="step" data-step="6">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">06</span><span class="step-title">Desactivar programas de inicio</span><span class="step-time">4:24</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Acelera el encendido de la PC y evita que programas inútiles consuman RAM en segundo plano.</div>
            <ol class="action-list">
              <li>Abrí el Administrador de tareas → pestaña <strong>Inicio</strong>.</li>
              <li>Desactivá todo lo que no necesites que arranque con Windows.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 7 -->
        <article class="step" data-step="7">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">07</span><span class="step-title">Limpieza del sistema</span><span class="step-time">4:44</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Borra gigabytes de archivos temporales acumulados y agiliza las búsquedas del sistema.</div>
            <ol class="action-list">
              <li>Si tenés HDD: desfragmentar. Si tenés SSD: <strong>solo optimizar</strong>.</li>
              <li>Ejecutá los scripts de limpieza del pack (PowerRUN) y borrá registros en el Visor de Eventos.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 8 -->
        <article class="step" data-step="8">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">08</span><span class="step-title">Optimización de periféricos</span><span class="step-time">6:11</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> El movimiento del mouse en pantalla pasa a ser una representación 1:1 del movimiento físico, clave para shooters.</div>
            <ol class="action-list">
              <li>Ejecutá los scripts de periféricos del pack.</li>
              <li>En configuración del mouse, desactivá la <strong>Precisión de puntero</strong>.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 9 -->
        <article class="step" data-step="9">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">09</span><span class="step-title">Desactivar servicios innecesarios</span><span class="step-time">7:03</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Apaga procesos invisibles por defecto (fax, cola de impresión), liberando subprocesos del procesador.</div>
            <ol class="action-list">
              <li>Ejecutá el script de <strong>"Servicios innecesarios"</strong> desde el pack con PowerRUN.</li>
            </ol>
          </div>
        </article>

        <!-- Paso 10 -->
        <article class="step" data-step="10">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">10</span><span class="step-title">Ajustes en el Editor de registro</span><span class="step-time">7:56</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Cambia el "PriorityControl", forzando a Windows a dedicarle mucha más atención al juego abierto en primer plano.</div>
            <ol class="action-list">
              <li>Modificá <code>Win32PrioritySeparation</code> en regedit. Valor decimal <strong>28</strong> (estabilidad) o <strong>26</strong> (menor input lag).</li>
            </ol>
          </div>
        </article>

        <!-- Paso 11 -->
        <article class="step" data-step="11">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">11</span><span class="step-title">Optimizar la red (mejorar el ping)</span><span class="step-time">9:21</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Quita protocolos obsoletos y establece servidores DNS veloces para bajar el ping.</div>
            <ol class="action-list">
              <li>En propiedades de red, dejá solo IPv4 y QoS.</li>
              <li>Configurá DNS manuales (ej. Cloudflare 1.1.1.1 o Google 8.8.8.8).</li>
            </ol>
          </div>
        </article>

        <!-- Paso 12 -->
        <article class="step" data-step="12">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">12</span><span class="step-title">Scripts avanzados: Chris Titus y RAM</span><span class="step-time">10:17</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Aplican "tweaks" que manualmente tomarían horas, ajustando cómo Windows administra procesos y memoria.</div>
            <ol class="action-list">
              <li>Ejecutá el script de Chris Titus desde PowerShell y aplicá el perfil Desktop.</li>
              <li>Usá el script de prioridad de RAM ingresando tu memoria en MB (ej. 16GB = 16384).</li>
            </ol>
          </div>
        </article>

        <!-- Paso 13 -->
        <article class="step" data-step="13">
          <button class="step-head" aria-expanded="false">
            <span class="step-num">13</span><span class="step-title">Instalar programas de rendimiento</span><span class="step-time">12:06</span><span class="step-chevron">▾</span>
          </button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Despierta núcleos "dormidos" de la CPU y sube el polling rate de tus USBs a 1000Hz.</div>
            <ol class="action-list">
              <li>Usá Quick CPU para poner el mínimo/máximo al 100%.</li>
              <li>Usá USB Boost para mouse y teclado a 1000 Hz.</li>
            </ol>
          </div>
        </article>

      </div>
      
      <!-- DESCARGA W10 -->
      <section class="download-section" style="padding-top: 40px; padding-bottom:0;">
        <div class="download-card">
          <div class="download-left">
            <p class="section-kicker">// pack de optimización w10</p>
            <h2>Descargá el pack de The_Tito</h2>
            <div class="download-actions">
              <a href="https://www.mediafire.com/file/um4mrwl0ec10007/Pack_de_Optimizacion.rar/file" target="_blank" class="btn btn-primary btn-large">⬇ MediaFire (Win 10)</a>
            </div>
          </div>
        </div>
      </section>
    </section>
  </div>


  <!-- ========================================== -->
  <!-- ========== CONTENIDO WINDOWS 11 ========== -->
  <!-- ========================================== -->
  <div id="win11" class="os-content">
    
    <!-- VIDEO W11 -->
    <section class="video-section">
      <div class="section-head">
        <p class="section-kicker">// referencia original windows 11</p>
        <h2>Mirá el video de Windows 11</h2>
      </div>
      <div class="video-wrap">
        <div class="video-frame">
          <iframe src="https://www.youtube.com/embed/g2JOnVwzFj0" title="Optimización Windows 11" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="video-meta">
          <span class="badge">The_Tito</span>
          <span class="video-title">🔥Optimicé Windows 11 +100fps??📈🔥 | ¿Mejor para Gaming?⚙️</span>
        </div>
      </div>
    </section>

    <!-- AVISO W11 -->
    <section class="warning-strip">
      <div class="warning-inner">
        <span class="warning-icon">⚠</span>
        <p><strong>Cuidado con los mitos:</strong> El creador advierte que <strong>NO debes tocar MSConfig</strong> (Número de procesadores). Windows ya usa todos los núcleos, limitarlos ahí puede causar errores de booteo graves.</p>
      </div>
    </section>

    <!-- PASOS W11 -->
    <section class="steps-section">
      <div class="section-head">
        <p class="section-kicker">// guía paso a paso</p>
        <h2>Los 12 pasos para Windows 11</h2>
      </div>
      <div class="timeline">
        
        <article class="step" data-step="1">
          <button class="step-head" aria-expanded="false"><span class="step-num">01</span><span class="step-title">Crear un punto de restauración</span><span class="step-time">0:30</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Crea una copia de seguridad por si W11 se vuelve inestable.</div>
            <ol class="action-list">
              <li>Buscá "Crear un punto de restauración" en inicio. Asigná entre 5% y 6%.</li>
            </ol>
          </div>
        </article>

        <article class="step" data-step="2">
          <button class="step-head" aria-expanded="false"><span class="step-num">02</span><span class="step-title">Activar Sensor de Almacenamiento</span><span class="step-time">2:00</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Automatiza la limpieza del disco y papelera.</div>
            <ol class="action-list">
              <li><code>Configuración → Sistema → Almacenamiento</code>. Activar y configurar cada semana.</li>
            </ol>
          </div>
        </article>

        <article class="step" data-step="3">
          <button class="step-head" aria-expanded="false"><span class="step-num">03</span><span class="step-title">Deshabilitar Game Mode y Xbox Game Bar</span><span class="step-time">2:22</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Evita que Game Bar grabe en segundo plano y quite recursos.</div>
            <ol class="action-list"><li><code>Configuración → Juegos</code>. Apagar Modo de Juego y Game Bar.</li></ol>
          </div>
        </article>

        <article class="step" data-step="4">
          <button class="step-head" aria-expanded="false"><span class="step-num">04</span><span class="step-title">Ajustar Rendimiento Visual</span><span class="step-time">2:36</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Elimina animaciones fluidas y sombras, quitando estrés a la GPU.</div>
            <ol class="action-list"><li>Opciones avanzadas del sistema → Rendimiento → "Ajustar para obtener el mejor rendimiento" (dejando miniaturas y fuentes suavizadas).</li></ol>
          </div>
        </article>

        <article class="step" data-step="5">
          <button class="step-head" aria-expanded="false"><span class="step-num">05</span><span class="step-title">Plan de Máximo Rendimiento</span><span class="step-time">4:01</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Mantiene las frecuencias del procesador altas.</div>
            <ol class="action-list"><li><code>Configuración → Sistema → Inicio y apagado</code> → Modo de energía: Máximo rendimiento.</li></ol>
          </div>
        </article>

        <article class="step" data-step="6">
          <button class="step-head" aria-expanded="false"><span class="step-num">06</span><span class="step-title">Desactivar Notificaciones</span><span class="step-time">4:24</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Libera interrupciones del CPU y RAM.</div>
            <ol class="action-list"><li><code>Configuración → Sistema → Notificaciones</code>. Apagar interruptor principal.</li></ol>
          </div>
        </article>

        <article class="step" data-step="7">
          <button class="step-head" aria-expanded="false"><span class="step-num">07</span><span class="step-title">Privacidad y Permisos</span><span class="step-time">4:51</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Detiene telemetría pesada de Windows 11.</div>
            <ol class="action-list"><li><code>Privacidad y seguridad</code>. Apagar General, Historial, y permisos no usados (Ubicación, Contactos).</li></ol>
          </div>
        </article>

        <article class="step" data-step="8">
          <button class="step-head" aria-expanded="false"><span class="step-num">08</span><span class="step-title">Transparencia y Personalización</span><span class="step-time">5:18</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Quita el efecto "Mica" o acrílico, reduciendo trabajo de GPU al renderizar menús.</div>
            <ol class="action-list"><li><code>Personalización → Colores</code> → Desactivar Efectos de transparencia.</li></ol>
          </div>
        </article>

        <article class="step" data-step="9">
          <button class="step-head" aria-expanded="false"><span class="step-num">09</span><span class="step-title">Limitar Ancho de Banda (Updates)</span><span class="step-time">5:35</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Evita picos de ping porque Windows deje de descargar o subir updates de fondo.</div>
            <ol class="action-list"><li><code>Windows Update → Opciones avanzadas → Optimización de distribución</code>. Limitar a 5% absoluto.</li></ol>
          </div>
        </article>

        <article class="step" data-step="10">
          <button class="step-head" aria-expanded="false"><span class="step-num">10</span><span class="step-title">Limpieza Manual de Temporales</span><span class="step-time">6:11</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Libera espacio físico borrando basura de instaladores.</div>
            <ol class="action-list"><li>Windows+R → borrar contenido de <code>temp</code> y <code>%temp%</code>.</li></ol>
          </div>
        </article>

        <article class="step" data-step="11">
          <button class="step-head" aria-expanded="false"><span class="step-num">11</span><span class="step-title">Desactivar Apps de Inicio</span><span class="step-time">6:37</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Reduce dramáticamente el consumo de RAM inicial.</div>
            <ol class="action-list"><li><code>Aplicaciones → Inicio</code>. Desactivar bloatware.</li></ol>
          </div>
        </article>

        <article class="step" data-step="12">
          <button class="step-head" aria-expanded="false"><span class="step-num">12</span><span class="step-title">Script Chris Titus (Debloat)</span><span class="step-time">7:00</span><span class="step-chevron">▾</span></button>
          <div class="step-body">
            <div class="step-effect"><strong>¿Qué sucede al hacer esto?</strong> Baja de 181 a 91 procesos en segundo plano aplicando tweaks de registro.</div>
            <ol class="action-list">
              <li>PowerShell (admin) → <code>irm christitus.com/win | iex</code></li>
              <li>Pestaña Tweaks → Desktop → Run Tweaks.</li>
            </ol>
          </div>
        </article>

      </div>
      
      <!-- RESULTADOS W11 -->
      <section class="tips-section" id="resultados-w11" style="padding-top: 40px; border-top:none;">
        <div class="section-head">
          <p class="section-kicker">// conclusiones del video</p>
          <h2>Resultados W11: ¿Sirvió la optimización?</h2>
        </div>
        <div class="tips-grid">
          <div class="tip-card">
            <span class="tip-icon">🪂</span><h3>Fortnite</h3>
            <p>De 80-95 fps a 83-98 fps. <strong>+5 a 8 FPS</strong> (única mejora real).</p>
          </div>
          <div class="tip-card">
            <span class="tip-icon">🧟</span><h3>Dying Light</h3>
            <p>De 33 fps a 31 fps. <strong>-2 FPS</strong>.</p>
          </div>
          <div class="tip-card">
            <span class="tip-icon">🔫</span><h3>Counter Strike 2</h3>
            <p>De 74 fps a 70 fps. <strong>-4 FPS</strong>.</p>
          </div>
          <div class="tip-card" style="grid-column: 1 / -1; border-color: var(--warn); background: var(--warn-glow);">
            <span class="tip-icon">⚖️</span>
            <h3>Veredicto Final</h3>
            <p>Aunque el script bajó los procesos de 181 a 91 (genial para escritorio), en Gaming puro W11 no mejoró significativamente. <strong>Recomendación: Si querés exprimir máximo rendimiento en PC de bajos recursos, usá Windows 10.</strong></p>
          </div>
        </div>
      </section>
    </section>
  </div>

</main>

<script src="script.js"></script>
</body>
</html>

EOF

echo "🎨 Sobrescribiendo style.css..."
cat << 'EOF' > style.css
/* ===== Tokens ===== */
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

* { box-sizing: border-box; }

html { scroll-behavior: smooth; }

body {
  margin: 0;
  background: var(--bg);
  color: var(--text);
  font-family: var(--sans);
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
  overflow-x: hidden;
}

::selection {
  background: var(--accent-glow);
  color: var(--accent);
}

a { color: inherit; text-decoration: none; }

code {
  font-family: var(--mono);
  background: var(--bg-raised);
  border: 1px solid var(--border);
  padding: 0.1em 0.45em;
  border-radius: 4px;
  font-size: 0.88em;
  color: var(--accent);
}

/* ===== Background canvas grid ===== */
#grid-bg {
  position: fixed;
  inset: 0;
  z-index: -2;
  width: 100%;
  height: 100%;
  background: var(--bg);
}

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

/* ===== Header ===== */
.site-header {
  position: sticky;
  top: 0;
  z-index: 50;
  backdrop-filter: blur(14px);
  background: rgba(8, 9, 11, 0.72);
  border-bottom: 1px solid var(--border-soft);
}

.header-inner {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 16px 24px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.brand {
  display: flex;
  align-items: baseline;
  gap: 8px;
  font-family: var(--mono);
  font-weight: 600;
  letter-spacing: 0.02em;
}

.brand-mark {
  color: var(--accent);
}

.brand-text { font-size: 15px; }
.brand-text .accent { color: var(--accent); }

.header-nav {
  display: flex;
  align-items: center;
  gap: 28px;
  font-size: 14px;
  color: var(--text-dim);
}

.header-nav a {
  transition: color 0.15s ease;
}
.header-nav a:hover { color: var(--text); }

.nav-cta {
  color: var(--bg) !important;
  background: var(--accent);
  padding: 8px 16px;
  border-radius: 6px;
  font-weight: 600;
  font-size: 13px;
}
.nav-cta:hover { background: #5dffb3 !important; }

/* ===== Hero ===== */
.hero {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 96px 24px 64px;
}

.eyebrow {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-family: var(--mono);
  font-size: 12.5px;
  letter-spacing: 0.06em;
  color: var(--text-dim);
  border: 1px solid var(--border);
  padding: 6px 14px;
  border-radius: 100px;
  margin: 0 0 28px;
}

.dot {
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

.hero h1 {
  font-size: clamp(2.1rem, 5vw, 3.5rem);
  line-height: 1.12;
  letter-spacing: -0.02em;
  font-weight: 700;
  margin: 0 0 24px;
  max-width: 780px;
}

.hero-sub {
  font-size: 17px;
  color: var(--text-dim);
  max-width: 560px;
  margin: 0 0 36px;
}

.hero-actions {
  display: flex;
  gap: 14px;
  flex-wrap: wrap;
  margin-bottom: 56px;
}

.btn {
  font-family: var(--sans);
  font-weight: 600;
  font-size: 14.5px;
  padding: 13px 24px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  gap: 8px;
  transition: all 0.18s ease;
  border: 1px solid transparent;
  cursor: pointer;
}

.btn-primary {
  background: var(--accent);
  color: #06110c;
}
.btn-primary:hover {
  background: #a6ecff;
  transform: translateY(-1px);
  box-shadow: 0 6px 24px var(--accent-glow);
}

.btn-ghost {
  border-color: var(--border);
  color: var(--text);
}
.btn-ghost:hover {
  border-color: var(--text-dim);
  background: var(--bg-raised);
}

.btn-large {
  padding: 16px 30px;
  font-size: 15.5px;
}

.hero-stats {
  display: flex;
  gap: 48px;
  border-top: 1px solid var(--border-soft);
  padding-top: 32px;
}

.stat {
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.stat-num {
  font-family: var(--mono);
  font-size: 28px;
  font-weight: 700;
  color: var(--accent);
}

.stat-label {
  font-size: 12.5px;
  color: var(--text-faint);
  letter-spacing: 0.01em;
}

/* ===== Section headers ===== */
.section-head {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 0 24px;
  margin-bottom: 40px;
}

.section-kicker {
  font-family: var(--mono);
  font-size: 12.5px;
  color: var(--accent-dim);
  letter-spacing: 0.05em;
  margin: 0 0 12px;
}

.section-head h2 {
  font-size: clamp(1.6rem, 3.4vw, 2.1rem);
  letter-spacing: -0.01em;
  margin: 0 0 12px;
  font-weight: 700;
}

.section-desc {
  color: var(--text-dim);
  max-width: 560px;
  margin: 0;
  font-size: 15.5px;
}

/* ===== Video section ===== */
.video-section {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 72px 24px;
  border-top: 1px solid var(--border-soft);
}

.video-wrap {
  border: 1px solid var(--border);
  border-radius: var(--radius);
  overflow: hidden;
  background: var(--bg-raised);
}

.video-frame {
  position: relative;
  width: 100%;
  padding-top: 56.25%;
  background: #000;
}

.video-frame iframe {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  border: 0;
}

.video-meta {
  display: flex;
  align-items: center;
  gap: 14px;
  padding: 18px 20px;
  border-top: 1px solid var(--border-soft);
  flex-wrap: wrap;
}

.badge {
  font-family: var(--mono);
  font-size: 12px;
  background: var(--accent-glow);
  color: var(--accent);
  padding: 4px 10px;
  border-radius: 4px;
  font-weight: 600;
}

.video-title {
  font-size: 14.5px;
  color: var(--text-dim);
  flex: 1;
}

.link-out {
  font-size: 13.5px;
  color: var(--accent);
  white-space: nowrap;
}
.link-out:hover { text-decoration: underline; }

/* ===== Warning strip ===== */
.warning-strip {
  border-top: 1px solid var(--border-soft);
  border-bottom: 1px solid var(--border-soft);
  background: var(--warn-glow);
}

.warning-inner {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 18px 24px;
  display: flex;
  align-items: flex-start;
  gap: 14px;
}

.warning-icon {
  color: var(--warn);
  font-size: 18px;
  flex-shrink: 0;
  line-height: 1.4;
}

.warning-inner p {
  margin: 0;
  font-size: 14.5px;
  color: var(--text);
  line-height: 1.55;
}

.warning-inner strong { color: var(--warn); }

/* ===== Steps / timeline ===== */
.steps-section {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 72px 24px;
}

.timeline {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.step {
  border: 1px solid var(--border);
  border-radius: var(--radius);
  background: var(--bg-card);
  overflow: hidden;
  transition: border-color 0.2s ease;
}

.step:hover {
  border-color: var(--border-soft);
}

.step.is-open {
  border-color: var(--accent-dim);
}

.step-head {
  all: unset;
  box-sizing: border-box;
  width: 100%;
  display: flex;
  align-items: center;
  gap: 18px;
  padding: 18px 22px;
  cursor: pointer;
}

.step-num {
  font-family: var(--mono);
  font-size: 13px;
  font-weight: 700;
  color: var(--accent);
  background: var(--accent-glow);
  min-width: 34px;
  height: 34px;
  border-radius: 7px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.step-extra .step-num {
  color: var(--warn);
  background: var(--warn-glow);
}

.step-title {
  flex: 1;
  font-size: 15.5px;
  font-weight: 600;
  color: var(--text);
}

.step-time {
  font-family: var(--mono);
  font-size: 12.5px;
  color: var(--text-faint);
  border: 1px solid var(--border);
  padding: 3px 9px;
  border-radius: 100px;
  flex-shrink: 0;
}

.step-chevron {
  color: var(--text-faint);
  transition: transform 0.25s ease;
  flex-shrink: 0;
  font-size: 13px;
}

.step.is-open .step-chevron {
  transform: rotate(180deg);
  color: var(--accent);
}

.step-body {
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.35s ease;
  padding: 0 22px;
}

.step.is-open .step-body {
  padding: 4px 22px 26px;
}

.step-group-label {
  font-family: var(--mono);
  font-size: 12.5px;
  color: var(--accent-dim);
  letter-spacing: 0.02em;
  margin: 22px 0 10px;
  text-transform: uppercase;
}

.step-body > .step-group-label:first-child {
  margin-top: 4px;
}

.action-list {
  margin: 0 0 6px;
  padding-left: 22px;
  color: var(--text-dim);
  font-size: 14.5px;
}

.action-list li {
  margin-bottom: 10px;
}

.action-list li strong { color: var(--text); }

.action-list.two-col {
  columns: 2;
  column-gap: 32px;
  list-style: none;
  padding-left: 0;
}

.action-list.two-col li {
  position: relative;
  padding-left: 18px;
  break-inside: avoid;
}

.action-list.two-col li::before {
  content: "×";
  position: absolute;
  left: 0;
  color: var(--warn);
  font-family: var(--mono);
}

.sub-list {
  margin: 10px 0 0;
  padding-left: 20px;
  font-size: 14px;
  color: var(--text-faint);
}

.sub-list li { margin-bottom: 6px; }
.sub-list strong { color: var(--text-dim); }

.step-note {
  font-size: 13.5px;
  color: var(--text-faint);
  border-left: 2px solid var(--border);
  padding-left: 14px;
  margin: 16px 0 4px;
  font-style: italic;
}

.callout-community {
  margin-top: 20px;
  padding: 16px 18px;
  border-radius: 8px;
  background: var(--bg-raised);
  border: 1px solid var(--border);
  border-left: 3px solid var(--accent-dim);
}

.callout-label {
  font-family: var(--mono);
  font-size: 12px;
  color: var(--accent);
  margin: 0 0 8px;
  font-weight: 600;
}

.callout-community p:last-child {
  margin: 0;
  font-size: 14px;
  color: var(--text-dim);
}

.callout-community strong { color: var(--text); }

/* ===== Tips section ===== */
.tips-section {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 72px 24px;
  border-top: 1px solid var(--border-soft);
}

.tips-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 16px;
}

.tip-card {
  border: 1px solid var(--border);
  border-radius: var(--radius);
  background: var(--bg-card);
  padding: 24px;
  transition: border-color 0.2s ease, transform 0.2s ease;
}

.tip-card:hover {
  border-color: var(--accent-dim);
  transform: translateY(-2px);
}

.tip-icon {
  font-size: 22px;
  display: block;
  margin-bottom: 14px;
}

.tip-card h3 {
  font-size: 15px;
  margin: 0 0 10px;
  color: var(--text);
}

.tip-card p {
  font-size: 13.8px;
  color: var(--text-dim);
  margin: 0;
  line-height: 1.6;
}

.tip-card strong { color: var(--accent); }

/* ===== Download section ===== */
.download-section {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 72px 24px 100px;
}

.download-card {
  display: grid;
  grid-template-columns: 1.1fr 0.9fr;
  gap: 40px;
  align-items: center;
  border: 1px solid var(--border);
  border-radius: 16px;
  background: linear-gradient(135deg, var(--bg-card), var(--bg-raised));
  padding: 48px;
  position: relative;
  overflow: hidden;
}

.download-card::before {
  content: "";
  position: absolute;
  top: -50%;
  right: -20%;
  width: 500px;
  height: 500px;
  background: radial-gradient(circle, var(--accent-glow), transparent 70%);
  pointer-events: none;
}

.download-left h2 {
  font-size: clamp(1.5rem, 3vw, 1.9rem);
  margin: 0 0 16px;
  font-weight: 700;
}

.download-left p {
  color: var(--text-dim);
  font-size: 15px;
  max-width: 440px;
  margin: 0 0 28px;
}

.download-actions { margin-bottom: 16px; }

.btn-icon { font-size: 16px; }

.download-note {
  font-size: 12.5px !important;
  color: var(--text-faint) !important;
  max-width: 400px;
}

.terminal-mock {
  border: 1px solid var(--border);
  border-radius: 10px;
  background: #0a0b0d;
  overflow: hidden;
  box-shadow: 0 20px 60px rgba(0,0,0,0.5);
}

.terminal-bar {
  display: flex;
  gap: 7px;
  padding: 11px 14px;
  background: #131518;
  border-bottom: 1px solid var(--border-soft);
}

.terminal-bar .dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  animation: none;
  box-shadow: none;
}
.dot.red { background: #ff5f57; }
.dot.yellow { background: #febc2e; }
.dot.green { background: #28c840; }

.terminal-body {
  padding: 20px;
  font-family: var(--mono);
  font-size: 13px;
  line-height: 2;
}

.terminal-body p { margin: 0; color: var(--text-dim); }
.prompt { color: var(--accent); margin-right: 8px; }
.ok { color: var(--accent); }

.blink { animation: blink 1.1s step-end infinite; }
@keyframes blink {
  50% { opacity: 0; }
}

/* ===== Footer ===== */
.site-footer {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 40px 24px 80px;
  border-top: 1px solid var(--border-soft);
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 16px;
  color: var(--text-faint);
  font-size: 13px;
}

.site-footer strong { color: var(--text-dim); }

.site-footer a {
  color: var(--accent-dim);
  white-space: nowrap;
}
.site-footer a:hover { color: var(--accent); }

/* ===== Responsive ===== */
@media (max-width: 720px) {
  .header-nav { gap: 16px; font-size: 13px; }
  .header-nav a:not(.nav-cta) { display: none; }
  .hero { padding: 56px 20px 40px; }
  .hero-stats { flex-wrap: wrap; gap: 28px; }
  .video-section, .steps-section, .tips-section, .download-section { padding: 48px 20px; }
  .download-card {
    grid-template-columns: 1fr;
    padding: 28px;
  }
  .step-head { padding: 15px 16px; gap: 12px; }
  .step-title { font-size: 14px; }
  .step-time { display: none; }
  .step.is-open .step-body { padding: 4px 16px 20px; }
  .action-list.two-col { columns: 1; }
  .site-footer { flex-direction: column; align-items: flex-start; }
}

@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition: none !important; }
  html { scroll-behavior: auto; }
}

/* ===== Selector de SO (Tabs) ===== */
.os-tabs {
  display: flex;
  justify-content: center;
  gap: 16px;
  margin: -32px auto 48px;
  max-width: var(--max-w);
  padding: 0 24px;
  position: relative;
  z-index: 10;
}
.os-tab {
  background: var(--bg-card);
  border: 1px solid var(--border);
  color: var(--text-dim);
  padding: 16px 32px;
  border-radius: 12px;
  font-size: 18px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.2s ease;
  font-family: var(--sans);
  display: flex;
  flex-direction: column;
  align-items: center;
  min-width: 160px;
}
.os-tab:hover {
  border-color: var(--accent-dim);
  color: var(--text);
}
.os-tab.active {
  background: var(--accent-glow);
  border-color: var(--accent);
  color: var(--accent);
  box-shadow: 0 4px 20px var(--accent-glow);
}
.os-content {
  display: none;
}
.os-content.active {
  display: block;
  animation: fadeIn 0.4s ease forwards;
}
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

/* Explicaciones */
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
.step-effect strong {
  color: var(--accent);
}

EOF

echo "🛠️  Sobrescribiendo script.js..."
cat << 'EOF' > script.js
// ===== Acordeón de pasos =====
document.querySelectorAll('.step-head').forEach((head) => {
  head.addEventListener('click', () => {
    const step = head.closest('.step');
    const body = step.querySelector('.step-body');
    const isOpen = step.classList.contains('is-open');

    if (isOpen) {
      body.style.maxHeight = null;
      step.classList.remove('is-open');
      head.setAttribute('aria-expanded', 'false');
    } else {
      step.classList.add('is-open');
      head.setAttribute('aria-expanded', 'true');
      body.style.maxHeight = body.scrollHeight + 'px';
    }
  });
});

// Recalcular alturas si la ventana cambia de tamaño (texto reflow)
window.addEventListener('resize', () => {
  document.querySelectorAll('.step.is-open .step-body').forEach((body) => {
    body.style.maxHeight = body.scrollHeight + 'px';
  });
});

// Abrir automáticamente el paso indicado en el hash de la URL (#step-3)
window.addEventListener('DOMContentLoaded', () => {
  const hash = window.location.hash;
  if (hash && hash.startsWith('#step-')) {
    const n = hash.replace('#step-', '');
    const target = document.querySelector(`.step[data-step="${n}"] .step-head`);
    if (target) target.click();
  }
});

// ===== Fondo animado: grid de circuito con pulsos (COLOR CELESTE) =====
(function () {
  const canvas = document.getElementById('grid-bg');
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
    buildNodes();
  }

  function buildNodes() {
    nodes = [];
    for (let y = 0; y < rows; y++) {
      for (let x = 0; x < cols; x++) {
        nodes.push({ x: x * spacing, y: y * spacing });
      }
    }
  }

  function spawnPulse() {
    if (nodes.length === 0) return;
    const startCol = Math.floor(Math.random() * cols);
    const horizontal = Math.random() > 0.5;
    pulses.push({
      col: startCol,
      pos: horizontal ? 0 : 0,
      horizontal,
      progress: 0,
      speed: 0.006 + Math.random() * 0.01,
      lane: Math.floor(Math.random() * (horizontal ? rows : cols)),
    });
    if (pulses.length > 14) pulses.shift();
  }

  function draw() {
    ctx.clearRect(0, 0, w, h);

    // grid dots
    ctx.fillStyle = 'rgba(0, 210, 255, 0.05)';
    for (const n of nodes) {
      ctx.beginPath();
      ctx.arc(n.x, n.y, 1, 0, Math.PI * 2);
      ctx.fill();
    }

    // faint grid lines
    ctx.strokeStyle = 'rgba(255,255,255,0.015)';
    ctx.lineWidth = 1;
    for (let x = 0; x <= cols; x++) {
      ctx.beginPath();
      ctx.moveTo(x * spacing, 0);
      ctx.lineTo(x * spacing, h);
      ctx.stroke();
    }
    for (let y = 0; y <= rows; y++) {
      ctx.beginPath();
      ctx.moveTo(0, y * spacing);
      ctx.lineTo(w, y * spacing);
      ctx.stroke();
    }

    // pulses traveling along lines
    pulses.forEach((p) => {
      p.progress += p.speed;
      const alpha = Math.sin(p.progress * Math.PI); // fade in/out
      let px, py;
      if (p.horizontal) {
        px = p.progress * w;
        py = p.lane * spacing;
      } else {
        px = p.lane * spacing;
        py = p.progress * h;
      }
      const grad = ctx.createRadialGradient(px, py, 0, px, py, 60);
      grad.addColorStop(0, `rgba(0, 210, 255, ${0.5 * alpha})`);
      grad.addColorStop(1, 'rgba(0, 210, 255, 0)');
      ctx.fillStyle = grad;
      ctx.beginPath();
      ctx.arc(px, py, 60, 0, Math.PI * 2);
      ctx.fill();

      ctx.fillStyle = `rgba(180, 240, 255, ${alpha})`;
      ctx.beginPath();
      ctx.arc(px, py, 2, 0, Math.PI * 2);
      ctx.fill();
    });

    pulses = pulses.filter((p) => p.progress < 1);
  }

  let lastSpawn = 0;
  function loop(t) {
    if (t - lastSpawn > 900) {
      spawnPulse();
      lastSpawn = t;
    }
    draw();
    requestAnimationFrame(loop);
  }

  window.addEventListener('resize', resize);
  resize();

  if (!reduceMotion) {
    requestAnimationFrame(loop);
  } else {
    draw();
  }
})();

// ===== Selector de Sistema Operativo (Tabs) =====
document.querySelectorAll('.os-tab').forEach((tab) => {
  tab.addEventListener('click', () => {
    // 1. Quitar la clase 'active' de todos los botones y contenidos
    document.querySelectorAll('.os-tab').forEach((t) => t.classList.remove('active'));
    document.querySelectorAll('.os-content').forEach((c) => c.classList.remove('active'));
    
    // 2. Activar el botón clickeado
    tab.classList.add('active');
    
    // 3. Activar el contenedor de pasos correspondiente
    const targetId = tab.getAttribute('data-target');
    document.getElementById(targetId).classList.add('active');
  });
});

EOF

echo "✅ ¡Listo! Se han generado index.html, style.css y script.js con el nuevo diseño celeste, las explicaciones de cada paso y el sistema de pestañas para Windows 10 y Windows 11."
