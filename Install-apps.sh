#!/bin/bash

mkdir ~/RaspberryPi
cd ~/RaspberryPi


sudo apt install curl flatpak -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install org.desmume.DeSmuME io.github.flattool.Warehouse


curl -o https://raw.githubusercontent.com/Marcus89uk/RaspberryPi/refs/heads/main/custom-files/apt-sources/sources.list
sudo cp sources.list /etc/apt/


wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

curl -o https://archive.org/download/AetherSX2-Collection/AetherSX2-archive/desktop/linux/AetherSX2-v1.0-2370.AppImage

mkdir ~/.emulator
mkdir ~/.emulator/ps2
mv AetherSX2-archive/desktop/linux/AetherSX2-v1.0-2370.AppImage  ~/.emulator/ps2/

curl - o https://download.remotegamepad.com/remotegamepad_arm64.deb

sudo apt install ./remotegamepad_arm64.deb -y

sudo echo "deb https://fasttrack.debian.net/debian-fasttrack/ bookworm-fasttrack main contrib" | tee -a /etc/apt/sources.list >/dev/null

