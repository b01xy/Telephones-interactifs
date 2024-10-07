#!/bin/bash
sudo rm /etc/systemd/system/telephone.service
sudo cp telephone.service /etc/systemd/system/telephone.service
chmod +x ~/Desktop/Telephones-interactifs/*.sh
sudo systemctl enable telephone.service
sudo systemctl daemon-reload
sudo systemctl start telephone.service

exit 0
