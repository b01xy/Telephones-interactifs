#! /bin/bash
sudo apt update
sudo apt -y upgrade
sudo apt install -y puredata pd-ggee pd-zexy pd-cyclone python3-rpi.gpio git htop
cd ~/Desktop
rm -rf Telephones-interactifs/
git clone https://github.com/b01xy/Telephones-interactifs/
cd Telephones-interactifs
sudo rm /etc/systemd/system/telephone.service
sudo cp telephone.service /etc/systemd/system/telephone.service
sudo chmod 644 /etc/systemd/system/telephone.service
sudo systemctl enable telephone.service
sudo systemctl daemon-reload
sudo systemctl start telephone.service
exit 0
