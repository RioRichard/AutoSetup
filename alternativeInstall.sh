#!/bin/bash
distribution=$(lsb_release -i | grep ID | cut -d ':' -f2 | tr -d '[:space:]')
release=$(lsb_release -r | grep Release | cut -d ':' -f2 | tr -d '[:space:]')

ibus_bamboo_url="http://download.opensuse.org/repositories/home:/lamlng/${distribution}_${release}/"
ibus_bamboo_key_url="https://download.opensuse.org/repositories/home:/lamlng/${distribution}_${release}/Release.key"

echo $ibus_bamboo_url
echo $ibus_bamboo_key_url

Ibus-bamboo
echo "deb $ibus_bamboo_url /" | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL $ibus_bamboo_key_url | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_lamlng.gpg > /dev/null
sudo apt update
sudo apt install ibus-bamboo

if [[ "$distribution" =~ "Ubuntu" ]]; then
    echo Ubuntu family
    source "$(dirname "${BASH_SOURCE[0]}")/ubuntuInstall.sh"
elif [[ "$distribution" =~ "Debian" ]] ; then
    echo Debian family
    source "$(dirname "${BASH_SOURCE[0]}")/debianInstall.sh"
    
else
    echo Not ubuntu or Debian
fi

