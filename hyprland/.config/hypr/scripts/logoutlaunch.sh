#!/usr/bin/env sh

# Check if wlogout is already running
if pgrep -x "wlogout" > /dev/null
then
    pkill -x "wlogout"
    exit 0
fi

# launch wlogout
wlogout --protocol layer-shell

