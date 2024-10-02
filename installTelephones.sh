#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install puredata pd-ggee pd-zexy pd-cyclone python3-rpi.gpio git htop
cd ~/Desktop
rm -rf Telephones-interactifs/
git clone https://github.com/b01xy/Telephones-interactifs/
cd Telephones-interactifs

exit 0
