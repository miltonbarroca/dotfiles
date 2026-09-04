#!/bin/bash

# Abre um terminal (Alacritty) ao iniciar a sessão GNOME.
# O fastfetch é exibido via ~/.zshrc ([[ "$TERM" == "alacritty" ]] && fastfetch),
# que mantém o shell aberto interativamente após mostrar as info do sistema.

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

command -v alacritty &>/dev/null || sudo pacman -S --noconfirm alacritty
command -v fastfetch &>/dev/null || sudo pacman -S --noconfirm fastfetch

mkdir -p ~/.config/autostart

cat << 'EOF' > ~/.config/autostart/fastfetch.desktop
[Desktop Entry]
Type=Application
Name=Fastfetch
Comment=Mostra informações do sistema ao iniciar a sessão
Exec=alacritty
Terminal=false
X-GNOME-Autostart-enabled=true
EOF

echo "Autostart configurado."
