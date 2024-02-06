#!/usr/bin/env sh

# Check if swaylock is running
if ! pgrep -x "swaylock" > /dev/null; then
 swaylock --debug --trace >> $HOME/.swaylock/swaylock.log 2>&1
fi
