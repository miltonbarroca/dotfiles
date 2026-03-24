#!/bin/bash

command -v fastfetch &>/dev/null || sudo pacman -S --noconfirm fastfetch

DOTFILES_DIR="$HOME/Projetos/dotfiles"

# Corrige o caminho da logo no config
sed -i "s|\"source\": \".*logo.txt\"|\"source\": \"$DOTFILES_DIR/fastfetch/logo.txt\"|" \
    "$DOTFILES_DIR/fastfetch/config.jsonc"

mkdir -p ~/.config/fastfetch
ln -sf "$DOTFILES_DIR/fastfetch/config.jsonc" ~/.config/fastfetch/config.jsonc

echo "fastfetch configurado."