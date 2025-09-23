#!/bin/bash

echo "Criando symlinks de scripts..."

mkdir -p ~/dotfiles/scripts

for file in ~/dotfiles/scripts/*; do
    filename=$(basename "$file")
    sudo ln -sf "$file" /usr/local/bin/"$filename"
    chmod +x "$file"
done

echo "Todos os scripts prontos!"