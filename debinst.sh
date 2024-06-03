#!/bin/bash

mkdir ~/debs
cd ~/debs
wget https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-linux-amd64.deb
dpkg -i fastfetch-linux-amd64.deb
apt install -f

apt install xserver-xorg-core xinit x11-xserver-utils libx11-dev libxinerama-dev libxft-dev -y
apt install pamix nmctl -y
apt install build-essential git make -y

cd ~
git clone https://github.com/uwicode/dots ~
mv fonts .fonts
rm -rf .git
git clone https://github.com/uwicode/suckless repos/suckless
cd ~/repos/suckless
cd dwm
make clean install
cd ..
cd dmenu
make clean install
cd ..
cd slstatus
make clean install
cd ~

apt install rxvt-unicode feh -y

reboot