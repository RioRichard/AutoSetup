#!/bin/bash
echo PREPARE =============================
appDir=/home/rio/App
echo $appDir
mkdir -p ${appDir}
curl -L https://telegram.org/dl/desktop/linux --output ${appDir}/TelegramXz.tar.xz
tar -xf ${appDir}/TelegramXz.tar.xz -C $appDir
${appDir}/Telegram/Telegram & pid=$!
sleep 2
kill $pid
echo ENDING SETUP AWS =============================
