#!/bin/bash

echo MAIN SETUP  =============================
source "$(dirname "${BASH_SOURCE[0]}")/ubuntuRestrictedExtra.sh"
source "$(dirname "${BASH_SOURCE[0]}")/bambooVietnamese.sh"
source "$(dirname "${BASH_SOURCE[0]}")/nvmSetup.sh"
source "$(dirname "${BASH_SOURCE[0]}")/redis.sh"
source "$(dirname "${BASH_SOURCE[0]}")/vlc.sh"
source "$(dirname "${BASH_SOURCE[0]}")/vscode.sh"
source "$(dirname "${BASH_SOURCE[0]}")/lastUpdate.sh"
source "$(dirname "${BASH_SOURCE[0]}")/awsClient.sh"
echo END =============================
