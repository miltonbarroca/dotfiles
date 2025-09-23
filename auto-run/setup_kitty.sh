#!/bin/bash

echo "Instalando o terminal Kitty..."

# Verifica se Kitty já está instalado
if ! command -v kitty &> /dev/null; then
    echo "Kitty não encontrado. Instalando..."
    sudo pacman -S --noconfirm kitty
else
    echo "Kitty já está instalado."
fi

# Opcional: criar alias para facilitar
echo "alias term='kitty'" >> ~/.bashrc
echo "Kitty instalado e alias 'term' criado. Use 'term' para abrir o terminal."
