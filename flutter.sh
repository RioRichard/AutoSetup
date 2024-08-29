#!/bin/bash
echo INSTALL FLUTTER =============================
mkdir -p ~/App
curl https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.1-stable.tar.xz --output ~/App/flutter_linux_3.24.1-stable.tar.xz
tar -xf ~/App/flutter_linux_3.24.1-stable.tar.xz -C ~/App
rm -rf ~/App/flutter_linux_3.24.1-stable.tar.xz 

echo 'export PATH="~/App/flutter/bin:$PATH"' >> ~/.bashrc

flutter upgrade

echo ENDING SETUP FLUTTER =============================