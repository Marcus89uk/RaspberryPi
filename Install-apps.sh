#!/bin/bash

mkdir ~/RaspberryPi
cd ~/RaspberryPi
sudo mkdir /.raspi-backups

sudo apt install curl flatpak fasttrack-archive-keyring -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install org.desmume.DeSmuME io.github.flattool.Warehouse


wget https://raw.githubusercontent.com/Marcus89uk/RaspberryPi/refs/heads/main/custom-files/apt-sources/sources.list
sudo cp -R /etc/apt /.raspi-backups/
sudo cp sources.list /etc/apt/
sudo apt update

wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

wget https://raw.githubusercontent.com/Marcus89uk/RaspberryPi/refs/heads/main/images/ps2.png
wget https://archive.org/download/AetherSX2-Collection/AetherSX2-archive/desktop/linux/AetherSX2-v1.0-2370.AppImage
wget https://raw.githubusercontent.com/Marcus89uk/RaspberryPi/refs/heads/main/backup-files/app-launchers/aethersx2.desktop

mkdir ~/.emulator
mkdir ~/.emulator/ps2
mv AetherSX2-v1.0-2370.AppImage  ~/.emulator/ps2/
mv ps2.png ~/.emulator/ps2/
mv aethersx2.desktop ~/.local/share/applications/

wget https://download.remotegamepad.com/remotegamepad_arm64.deb

sudo apt install ./remotegamepad_arm64.deb -y



