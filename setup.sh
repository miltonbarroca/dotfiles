#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Criando symlinks de scripts..."

mkdir -p "$DOTFILES_DIR/scripts"
mkdir -p "$DOTFILES_DIR/auto-run"

for file in "$DOTFILES_DIR/scripts/"*; do
    filename=$(basename "$file")
    sudo ln -sf "$file" /usr/local/bin/"$filename"
    chmod +x "$file"
done

echo "Symlinks de scripts prontos!"

echo "Executando scripts de setup automático..."

for file in "$DOTFILES_DIR/auto-run/"*; do
    chmod +x "$file"
    "$file"
done

echo "Setup completo!"