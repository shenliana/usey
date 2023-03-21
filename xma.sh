#!/bin/bash
algo=$1
pool=$2
address=$3
pass=$4
min=$5
max=$6

sudo apt install screen cpulimit -y
sudo killall screen || echo "Screen clean"
cd ~
rm -rf ~/xmrig
mkdir xmrig && cd xmrig
wget -O xmrig.tar.gz https://github.com/Bendr0id/xmrigCC/releases/download/3.1.0/xmrigCC-miner_only-3.1.0-linux-generic-static-arm64.tar.gz
tar -xvf xmrig.tar.gz
sudo ~/xmrig/scripts/enable_1gb_pages.sh
screen -dmS xmrig ~/xmrig/xmrigDaemon -a $algo -o $pool -u $address -p $pass
