#!/bin/bash
#Run this as a cronjob in a host. Set it to execute every min
URL=http://stark-caverns-64111.herokuapp.com/widgets
target=`curl -s https://api.coinbase.com/v2/prices/ETH-USD/buy | cut -c 47-60 | tr -d ':' | tr -d '"' |  tr -d '}'`
DISK=`df -h | grep mapper | awk '{print $4}' | sed -e 's/G//g'`
MEM=`free -h | grep Mem | awk '{print $3}' | sed -e 's/M//g'`
CPUAVG5=`uptime | awk '{print $10}' | tr -d ','`

curl -d '{ "auth_token": "YOUR_AUTH_TOKEN", "text": "$'${target}'" }' ${URL}/response_time
curl -d '{ "auth_token": "YOUR_AUTH_TOKEN", "value": "'${DISK}'" }' ${URL}/synergy
curl -d '{ "auth_token": "YOUR_AUTH_TOKEN", "value": "'${MEM}'" }' ${URL}/mem
curl -d '{ "auth_token": "YOUR_AUTH_TOKEN", "value": "'${CPUAVG5}'" }' ${URL}/cpu5
