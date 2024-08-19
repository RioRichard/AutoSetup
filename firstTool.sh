#!/bin/bash
echo PREPARE =============================
sudo apt-get -y install flameshot htop neofetch apt-transport-https ca-certificates curl wget git redis-server vlc ubuntu-restricted-extras language-pack-vi language-pack-vi-base unzip xz-utils zip libglu1-mesa libc6:amd64 libstdc++6:amd64 libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
 libbz2-1.0:amd64 libncurses5:amd64 ${check-language-support -l vi}
echo ENDING SETUP AWS =============================
