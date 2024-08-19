#!/bin/bash
echo PREPARE Oh my posh =============================
curl -s https://ohmyposh.dev/install.sh | bash -s
eval "$(oh-my-posh init bash)" >> ~/.bashrc
echo ENDING Oh my posh =============================