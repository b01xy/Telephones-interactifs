#!/bin/bash
cd /home/maxime/Desktop/Telephones-interactifs
python relay.py
sleep 10
export DISPLAY=:0
pd -alsa -audiobuf 122 -noadc -audiooutdev 2 /home/maxime/Desktop/Telephones-interactifs/telephones01.pd

exit 0
