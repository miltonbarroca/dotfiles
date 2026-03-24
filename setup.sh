#!/bin/bash
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Criando symlinks de scripts..."
mkdir -p "$DOTFILES_DIR/scripts" "$DOTFILES_DIR/auto-run"

for file in "$DOTFILES_DIR/scripts/"*; do
    [[ -f "$file" ]] || continue
    sudo ln -sf "$file" /usr/local/bin/"$(basename "$file")"
    chmod +x "$file"
done
echo "Symlinks de scripts prontos!"

echo "Executando scripts de setup automático..."
for file in "$DOTFILES_DIR/auto-run/"*; do
    [[ -f "$file" ]] || continue
    chmod +x "$file"
    "$file"
done
echo "Setup completo!"