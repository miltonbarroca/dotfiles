#!/bin/bash

# Alacritty
command -v alacritty &>/dev/null || sudo pacman -S --noconfirm alacritty

# Fastfetch
command -v fastfetch &>/dev/null || sudo pacman -S --noconfirm fastfetch

# Alias
grep -qxF "alias term='alacritty'" ~/.zshrc || echo "alias term='alacritty'" >> ~/.zshrc

# Fastfetch no zshrc
FASTFETCH_LINE='[[ "$TERM" == "alacritty" ]] && fastfetch'
grep -qxF "$FASTFETCH_LINE" ~/.zshrc || echo "$FASTFETCH_LINE" >> ~/.zshrc

# Link do config
mkdir -p ~/.config/fastfetch
ln -sf "$HOME/Projetos/dotfiles/fastfetch/config.jsonc" ~/.config/fastfetch/config.jsonc

# Config do Alacritty
mkdir -p ~/.config/alacritty
if [ -f ~/.config/alacritty/alacritty.toml ]; then
    echo "alacritty.toml já existe, mantendo."
else
    cp "$HOME/Projetos/dotfiles/alacritty.toml" ~/.config/alacritty/alacritty.toml
    echo "alacritty.toml criado a partir do dotfiles."
fi