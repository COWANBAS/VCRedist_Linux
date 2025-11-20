#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads/VC_Redist"

mkdir -p "$DOWNLOAD_DIR"

if [ ! -d "$DOWNLOAD_DIR" ]; then
    echo "O diretório '$DOWNLOAD_DIR' não foi encontrado."
    exit 1
fi

echo "Iniciando a instalação dos pacotes..."

for file in "$DOWNLOAD_DIR"/*.exe; do
    if [ -f "$file" ]; then
        echo "Instalando: $file"
        wine "$file"
    fi
done


