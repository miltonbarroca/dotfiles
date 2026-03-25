#!/bin/bash

# Instala yay se não tiver
if ! command -v yay &>/dev/null; then
    sudo pacman -S --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm
fi

# Instala Obsidian
yay -S --noconfirm obsidian

echo "Obsidian instalado."