#!/bin/bash

# Remove plymouth (7s de boot)
sudo pacman -Rns --noconfirm plymouth 2>/dev/null || true

# Desabilita serviços desnecessários
services=(
    ModemManager
    lvm2-monitor
    cups
    bluetooth
    NetworkManager-wait-online
    avahi-daemon
)

for service in "${services[@]}"; do
    sudo systemctl disable --now "$service" 2>/dev/null \
        && echo "$service desabilitado." \
        || echo "$service não encontrado."
done

# Serviços de usuário
user_services=(
    gnome-remote-desktop
)

for service in "${user_services[@]}"; do
    systemctl --user disable --now "$service" 2>/dev/null \
        && echo "$service (user) desabilitado." \
        || echo "$service (user) não encontrado."
done

echo "Otimização de boot concluída."