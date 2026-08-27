#!/bin/bash

OUTPUT="proyecto_optiwin.txt"

echo "📦 Encapsulando proyecto en $OUTPUT..."

# Vaciar o crear el archivo de salida
> "$OUTPUT"

# 1. Incluir package.json (Nombre y contenido)
echo "➡️ Agregando package.json..."
if [ -f "package.json" ]; then
    echo "================================================================================" >> "$OUTPUT"
    echo "ARCHIVO: package.json" >> "$OUTPUT"
    echo "================================================================================" >> "$OUTPUT"
    cat "package.json" >> "$OUTPUT"
    echo -e "

" >> "$OUTPUT"
else
    echo "⚠️ package.json no encontrado."
fi

# 2. Incluir todo el directorio src/ (Nombre y contenido)
echo "➡️ Agregando código fuente de src/..."
if [ -d "src" ]; then
    # find src -type f busca todos los archivos dentro de src recursivamente
    find src -type f | while read -r filepath; do
        echo "================================================================================" >> "$OUTPUT"
        echo "ARCHIVO: $filepath" >> "$OUTPUT"
        echo "================================================================================" >> "$OUTPUT"
        cat "$filepath" >> "$OUTPUT"
        echo -e "

" >> "$OUTPUT"
    done
else
    echo "⚠️ Directorio src/ no encontrado."
fi

# 3. Incluir el directorio public/ (Solo nombre/ruta)
echo "➡️ Agregando listado de public/..."
if [ -d "public" ]; then
    echo "================================================================================" >> "$OUTPUT"
    echo "DIRECTORIO PUBLIC (Solo rutas, sin contenido):" >> "$OUTPUT"
    echo "================================================================================" >> "$OUTPUT"
    find public -type f >> "$OUTPUT"
    echo -e "

" >> "$OUTPUT"
else
    echo "⚠️ Directorio public/ no encontrado."
fi

echo "✅ ¡Listo! Todo ha sido encapsulado en el archivo: $OUTPUT"