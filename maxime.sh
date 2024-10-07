#!/bin/bash
sudo systemctl disable telephone.service
sudo systemctl daemon-reload
sudo rm /etc/systemd/system/telephone.service
sudo cp telephone.desktop /etc/xdg/autostart/
chmod +x ~/Desktop/Telephones-interactifs/*.sh
sudo reboot
exit 0
