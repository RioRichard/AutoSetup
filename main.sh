#!/bin/bash

echo MAIN SETUP  =============================
source "$(dirname "${BASH_SOURCE[0]}")/lastUpdate.sh"
source "$(dirname "${BASH_SOURCE[0]}")/firstTool.sh"
source "$(dirname "${BASH_SOURCE[0]}")/alternativeInstall.sh"
source "$(dirname "${BASH_SOURCE[0]}")/nvmSetup.sh"
source "$(dirname "${BASH_SOURCE[0]}")/vscode.sh"
source "$(dirname "${BASH_SOURCE[0]}")/ohMyPosh.sh"
source "$(dirname "${BASH_SOURCE[0]}")/telegram.sh"
source "$(dirname "${BASH_SOURCE[0]}")/lastUpdate.sh"
source "$(dirname "${BASH_SOURCE[0]}")/awsClient.sh"
source "$(dirname "${BASH_SOURCE[0]}")/flutter.sh"
source "$(dirname "${BASH_SOURCE[0]}")/cursor.sh"
source "$(dirname "${BASH_SOURCE[0]}")/installAndroidStudio.sh"
sudo reboot -f
echo END =============================
