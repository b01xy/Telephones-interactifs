#!/bin/bash
cd /home/pi/Desktop/Telephones-interactifs
python relay.py
pd -alsa -audiobuf 122 -noadc -audiooutdev 2 telephones01.pd

exit 0
