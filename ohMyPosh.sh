#!/bin/bash
echo PREPARE Oh my posh =============================
curl -s https://ohmyposh.dev/install.sh | bash -s
echo 'PATH=$PATH:/home/rio/.local/bin' >> ~/.bashrc
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc 
echo ENDING Oh my posh =============================