#! /bin/bash
sudo apt update
sudo apt -y upgrade
sudo apt install -y puredata pd-ggee pd-zexy pd-cyclone python3-rpi.gpio git htop
cd ~/Desktop
rm -rf Telephones-interactifs/
git clone https://github.com/b01xy/Telephones-interactifs/
cd Telephones-interactifs
sudo rm /etc/systemd/system/telephone.service
sudo cp telephone.desktop /etc/xdg/autostart/
chmod +x ~/Desktop/Telephones-interactifs/*.sh
sudo reboot
exit 0
