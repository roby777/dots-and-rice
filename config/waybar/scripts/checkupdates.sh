#!/usr/bin/env bash

#notify-send "Step 1"
upd=`sudo apt update`
#notify-send "Step 2"
PACKS=`apt list --upgradeable | wc -l`
#notify-send "Step 3"
if [[ $PACKS > 1 ]]; then
    echo "$PACKS updates available"; exit 0
else
    echo "System is up to date"; exit 0
fi

