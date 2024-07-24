#!/bin/bash
# Update system
sudo pacman -Syu --noconfirm

# Install yay
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Install debtap
yay -S debtap --noconfirm

# Install Visual Studio Code
sudo pacman -S code --noconfirm

# Install vokoscreen
sudo pacman -S vokoscreen-ng --noconfirm

# Install DBeaver
sudo pacman -S dbeaver --noconfirm

# Install Zoom
yay -S zoom --noconfirm

# Install Google Chrome
yay -S google-chrome --noconfirm

# Install Insomnia
yay -S insomnia --noconfirm

# Install WhatsApp
yay -S whatsapp-for-linux --noconfirm

# Install Telegram
sudo pacman -S telegram-desktop --noconfirm

# Install Jenkins
yay -S jenkins --noconfirm

# Install Docker and Docker CLI
sudo pacman -S docker docker-compose --noconfirm
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

# Install AWS CLI
sudo pacman -S aws-cli --noconfirm

# Install Azure CLI
yay -S azure-cli --noconfirm

# Install Google Cloud SDK
yay -S google-cloud-sdk --noconfirm

# Install npm and JavaScript frameworks
sudo pacman -S npm --noconfirm
sudo npm install -g @angular/cli @ionic/cli react-native-cli create-react-app vue-cli

# Install Shotcut
yay -S shotcut --noconfirm

# Install VLC media player
sudo pacman -S vlc --noconfirm

# Install Popsicle
sudo pacman -S popsicle --noconfirm

# Final update and cleanup
sudo pacman -Syu --noconfirm
yay -Yc --noconfirm

echo "Installation complete. Please reboot your system to apply all changes."
