#!/bin/bash
#Run this as a cronjob in a host
target=`curl -s https://api.coinbase.com/v2/prices/ETH-USD/buy | cut -c 47-60 | tr -d ':' | tr -d '"' |  tr -d '}'`

curl -d '{ "auth_token": "YOUR_AUTH_TOKEN", "text": "$'${target}'" }' \http://stark-caverns-64111.herokuapp.com/widgets/response_time