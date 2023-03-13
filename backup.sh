#!/bin/bash
time=60
screen -S minecraft -X stuff 'say §d 自動バックアップを開始します'"$(echo -ne '\r')"
screen -S minecraft -X stuff 'say §4'$time'§d秒後にサーバーを再起動します'"$(echo -ne '\r')"
sleep "$(exrp time - 10)"
screen -S minecraft -X stuff 'say §d まもなく再起動が開始されます'"$(echo -ne '\r')"
sleep 10
screen -S minecraft -X stuff 'stop'"$(echo -ne '\r')"
abouttime=10
sleep $abouttime
screen -S minecraft -X stuff 'zip -r world.zip world/'"$(echo -ne '\r')"
mv world.zip world"$(date +%Y.%m.%d.%k%H)".zip "$(echo -ne '\r')"
screen -S minecraft -X stuff 'mv world.zip backup/'"$(echo -ne '\r')"
screen -S minecraft -X stuff 'cd ..'"$(echo -ne '\r')"
screen -S minecraft -X stuff 'LD_LIBRARY_PATH=. ./bedrock_server'"$(echo -ne '\r')"