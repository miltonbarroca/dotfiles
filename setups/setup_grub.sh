#!/bin/bash

sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="systemd.show_status=1"/' /etc/default/grub
sudo update-grub

echo "GRUB atualizado."