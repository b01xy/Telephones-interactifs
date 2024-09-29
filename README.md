# Telephones-interactifs
Projet de téléphone interactif diffusant un message lorsque l'on décroche

Fonctionne sous Raspberry Pi 3 avec [RaspeberryPi OS avec Desktop à télécharger ici](https://downloads.raspberrypi.com/raspios_armhf/images/raspios_armhf-2024-07-04/2024-07-04-raspios-bookworm-armhf.img.xz) 

Système d'exploitation à installer avec Raspberry Pi Imager [selon les instructions ici](https://www.raspberrypi.com/software/)

Une fois le système installé et démarré sur la Raspberry Pi connectée à Internet, il faut lancer un terminal et taper les commandes suivantes (le mot de passe est celui de l'utilisateur créé à l'installation, par défaut l'utilisateur est Pi et le mot de passe raspberry) :
````
sudo apt update
sudo apt upgrade
sudo apt install puredata pd-ggee pd-zexy python3-rpi.gpio git htop
cd ~/Desktop
git clone https://github.com/b01xy/Telephones-interactifs/
pd -pa -noadc -audiooutdev 2 Telephones-interactifs/telephones01.pd
````
![terminal](images/Terminal-pi.png)

Pour debug à distance, installation de Rustdesk

````
sudo apt install libxdo3 gstreamer1.0-pipewire dpkg
wget https://github.com/rustdesk/rustdesk/releases/download/1.3.1/rustdesk-1.3.1-armv7-sciter.deb
sudo dpkg -i https://github.com/rustdesk/rustdesk/releases/download/1.3.1/rustdesk-1.3.1-armv7-sciter.deb
````

En paramètres audio dans Pure Data on doit avoir Menu Media > Paramètres Audio :
![param](images/CapturePArametresAudioPd.png)
