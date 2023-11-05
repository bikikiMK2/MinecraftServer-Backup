#!/bin/bash

screen -S <name> -X stuff 'say §d自動バックアップを開始します'"$(echo -ne '\r')"

dirpass = #GitHubのあれを参照するようにしたい

zip -r dirpass + world"{""$(date+%Y.%m.%d.%H%M)""}".zip "dirpass" + world/
