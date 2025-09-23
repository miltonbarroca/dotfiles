# ~/dotfiles/auto-run/setup_keyboard.sh
#!/bin/bash

# Configurar layout ABNT2 no Gnome/Wayland
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'br')]"
echo "Teclado configurado para ABNT2."