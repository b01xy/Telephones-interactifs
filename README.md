# Telephones-interactifs
## Présentation

Projet de téléphone interactif diffusant un message / un défi lorsque l'on décroche

## Installation

Fonctionne sous Raspberry Pi 3 avec [RaspeberryPi OS avec Desktop à télécharger ici](https://downloads.raspberrypi.com/raspios_armhf/images/raspios_armhf-2024-07-04/2024-07-04-raspios-bookworm-armhf.img.xz) 

Système d'exploitation à installer avec Raspberry Pi Imager [selon les instructions ici](https://www.raspberrypi.com/software/) en choisissant le mode où l'environnement graphique se charge sans avoir à se logguer 

Une fois le système installé et démarré sur la Raspberry Pi connectée à Internet, il faut lancer un terminal et taper les commandes suivantes (le mot de passe est celui de l'utilisateur créé à l'installation, par défaut l'utilisateur est Pi et le mot de passe raspberry) :
````
wget https://raw.githubusercontent.com/b01xy/Telephones-interactifs/refs/heads/main/installTelephones.sh
chmod +x installTelephones.sh
./installTelephones.sh
````
![terminal](images/Terminal-pi.png)

En paramètres audio dans Pure Data on doit avoir Menu Media > On choisit Alsa puis dans Paramètres Audio la carte bcm2835 en sortie, on décoche l'entrée, on met 120ms en buffer/délais
![param](images/CapturePArametresAudioPd.png)

L'interface graphique au final ressemble à ça :



## Pour debug à distance, installation de Rustdesk (en option)

````
sudo apt install libxdo3 gstreamer1.0-pipewire dpkg
wget https://github.com/rustdesk/rustdesk/releases/download/1.3.1/rustdesk-1.3.1-armv7-sciter.deb
sudo dpkg -i https://github.com/rustdesk/rustdesk/releases/download/1.3.1/rustdesk-1.3.1-armv7-sciter.deb
````
