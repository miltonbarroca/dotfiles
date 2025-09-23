#!/bin/bash

echo "Criando symlinks de scripts..."

mkdir -p ~/dotfiles/scripts
mkdir -p ~/dotfiles/auto-run

# Criar symlinks para scripts “normais”
for file in ~/dotfiles/scripts/*; do
    filename=$(basename "$file")
    sudo ln -sf "$file" /usr/local/bin/"$filename"
    chmod +x "$file"
done

echo "Symlinks de scripts prontos!"

# Executar automaticamente scripts da pasta auto-run
echo "Executando scripts de setup automático..."
for file in ~/dotfiles/auto-run/*; do
    chmod +x "$file"
    "$file"
done

echo "Setup completo!"