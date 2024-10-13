#!/bin/bash
distribution=$(lsb_release -i | grep ID )
if [[ "$distribution" =~ "Ubuntu" ]]; then
    echo Ubuntu family
    source "$(dirname "${BASH_SOURCE[0]}")/ubuntuInstall.sh"
elif [[ "$distribution" =~ "Debian" ]] ; then
    echo Debian family
    source "$(dirname "${BASH_SOURCE[0]}")/debianInstall.sh"
else
    echo Not ubuntu or Debian
fi