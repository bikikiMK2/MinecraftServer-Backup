#!/bin/bash
time=60
screen -S minecraft -X stuff 'say §d自動バックアップを開始します' `echo -ne '\r'`
screen -S minecraft -X stuff 'say §4'$time'§秒後にサーバーを停止後再起動を実施' `echo -ne '\r'`
time2=`expr $time - 10`
sleep `expr $time2`

