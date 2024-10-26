#!/bin/bash
echo PREPARE TELEGRAM =============================
appDir=~/App
echo $appDir
mkdir -p ${appDir}
curl -L https://telegram.org/dl/desktop/linux --output ${appDir}/TelegramXz.tar.xz
tar -xf ${appDir}/TelegramXz.tar.xz -C $appDir

# Remove the downloaded archive after extraction
rm ${appDir}/TelegramXz.tar.xz

${appDir}/Telegram/Telegram & pid=$!
sleep 2
kill $pid
echo ENDING SETUP TELEGRAM =============================
