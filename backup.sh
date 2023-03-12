#!/bin/bash
time=60
screen -S minecraft -X stuff 'say §d 自動バックアップを開始します' "$(echo -ne '\r')"
screen -S minecraft -X stuff 'say §4'$time'§秒後にサーバーを再起動します' "$(echo -ne '\r')"
sleep "$(exrp time - 10)"
screen -S minecraft -X stuff 'say §d まもなく再起動が開始されます' "$(echo -ne '\r')"
sleep 10
screen -S minecraft -X stuff 'stop' "$(echo -ne '\r')"
abouttime=10
sleep $abouttime
screen -S minecraft -X stuff 'zip world.zip worlds/world/' "$(echo -ne '\r')"
screen -S minecraft -X stuff 'mv world.zip backup/' "$(echo -ne '\r')"
mv /data/minecraft/bedrock/1.19.63-multi/worlds/world/world.zip world'{'"$(data'+%Y%m%d%k%H')"'}'  "$(echo -ne '\r')"
screen -S minecraft -X stuff 'rm -r worlds/backup/word.zip' "$(echo -ne '\r')"
screen -S minecraft -X stuff 'LD_LIBRARY_PATH=. ./bedrock_server' "$(echo -ne '\r')"
                              








