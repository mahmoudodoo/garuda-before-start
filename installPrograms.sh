#!/bin/bash

# Function to run commands as non-root user
run_as_user() {
    sudo -u $SUDO_USER "$@"
}

# Update system
sudo pacman -Syu --noconfirm

# Install yay
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed base-devel git --noconfirm
    run_as_user git clone https://aur.archlinux.org/yay.git
    cd yay
    run_as_user makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Install debtap
run_as_user yay -S debtap --noconfirm

# Install Visual Studio Code
sudo pacman -S code --noconfirm

# Install vokoscreen
sudo pacman -S vokoscreen --noconfirm

# Install DBeaver
sudo pacman -S dbeaver --noconfirm

# Install Zoom
run_as_user yay -S zoom --noconfirm

# Install Google Chrome
run_as_user yay -S google-chrome --noconfirm

# Install Insomnia
run_as_user yay -S insomnia --noconfirm

# Install WhatsApp
run_as_user yay -S whatsapp-nativefier --noconfirm

# Install Telegram
sudo pacman -S telegram-desktop --noconfirm

# Install Jenkins
run_as_user yay -S jenkins --noconfirm

# Install Docker and Docker CLI
sudo pacman -S docker docker-compose --noconfirm
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $SUDO_USER

# Install AWS CLI
sudo pacman -S aws-cli --noconfirm

# Install Azure CLI
run_as_user yay -S azure-cli-bin --noconfirm

# Install Google Cloud SDK
run_as_user yay -S google-cloud-sdk --noconfirm

# Install npm and JavaScript frameworks
sudo pacman -S npm --noconfirm
sudo npm install -g @angular/cli @ionic/cli react-native-cli create-react-app @vue/cli --force

# Install Shotcut
run_as_user yay -S shotcut --noconfirm

# Install VLC media player
sudo pacman -S vlc --noconfirm

# Install Popsicle
sudo pacman -S popsicle --noconfirm

# Final update and cleanup
sudo pacman -Syu --noconfirm
run_as_user yay -Yc --noconfirm

echo "Installation complete. Please reboot your system to apply all changes."
