#!/bin/bash
time=60
screen -S minecraft -X stuff 'say §d 自動バックアップを開始します'"$(echo -ne '\r')"
screen -S minecraft -X stuff "say §4$time§d秒後にサーバーを再起動します""$(echo -ne '\r')"
sleep "$(exrp time - 10)"
screen -S minecraft -X stuff 'say §d まもなく再起動が開始されます'"$(echo -ne '\r')"
sleep 10
screen -S minecraft -X stuff 'stop'"$(echo -ne '\r')"
abouttime=10
sleep $abouttime
cp -r world/ backups/
# shellcheck disable=SC2164
cd backups/
zip -r world"{""$(date +%Y.%m.%d.%H%M)""}".zip world/
rm -r world/
screen -S minecraft -X stuff 'LD_LIBRARY_PATH=. ./bedrock_server'"$(echo -ne '\r')"