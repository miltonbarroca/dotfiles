#!/bin/bash

echo "Instalando o terminal..."

# Verifica se Kitty já está instalado
if ! command -v   &> /dev/null; then
    echo "Alacritty não encontrado. Instalando..."
    sudo pacman -S --noconfirm alacritty
else
    echo "Kitty já está instalado."
fi

# Opcional: criar alias para facilitar
echo "alias term='alacritty'" >> ~/.bashrc
echo "alacritty instalado e alias 'term' criado. Use 'term' para abrir o terminal."
