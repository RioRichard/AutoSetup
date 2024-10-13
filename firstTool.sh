#!/bin/bash
echo PREPARE =============================
sudo apt-get -y install openssh-server openssh-client flameshot htop neofetch apt-transport-https ca-certificates curl wget git redis-server vlc unzip xz-utils zip libglu1-mesa libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64 libncurses5:amd64 clang cmake ninja-build libgtk-3-dev

sudo systemctl enable redis-server 
sudo systemctl enable ssh
sudo ufw allow ssh

mkdir -p ~/.fonts
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IntelOneMono.tar.xz 
tar -xf IntelOneMono.tar.xz -C ~/.fonts
sudo fc-cache -f -v
echo ENDING SETUP First tool =============================