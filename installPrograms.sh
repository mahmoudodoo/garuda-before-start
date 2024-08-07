#!/bin/bash

# Update system and install essential packages
sudo pacman -Syu --noconfirm

# Install debtap
sudo pacman -S --noconfirm debtap

# Install Visual Studio Code
sudo pacman -S --noconfirm code

# Install vokoscreen
sudo pacman -S --noconfirm vokoscreen

# Install DBeaver
sudo pacman -S --noconfirm dbeaver

# Install Zoom
yay -S --noconfirm zoom

# Install Google Chrome
yay -S --noconfirm google-chrome

# Install Insomnia
yay -S --noconfirm insomnia

# Install WhatsApp
yay -S --noconfirm whatsapp-nativefier

# Install Telegram
sudo pacman -S --noconfirm telegram-desktop

# Install Jenkins
yay -S --noconfirm jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Docker and Docker CLI
sudo pacman -S --noconfirm docker docker-compose
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER

# Install npm and JavaScript frameworks
sudo pacman -S --noconfirm nodejs npm

# Install Shotcut
sudo pacman -S --noconfirm shotcut

# Install VLC media player
sudo pacman -S --noconfirm vlc

# Install Popsicle
yay -S --noconfirm popsicle-git

# Post-installation instructions
echo "Script completed. Some applications like Docker require a reboot or re-login to apply group changes."
