#!/bin/bash

# Instala yay
if ! command -v yay &>/dev/null; then
    sudo pacman -S --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm
    echo "yay instalado."
else
    echo "yay já está instalado."
fi