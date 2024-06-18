#!/usr/bin/env sh

# This script starts a daemon for locking, screensaving and
# suspending, after a period of inactivity.

# Note: The timeout is specified in seconds.

swayidle -w \
  timeout 300 'pgrep -x swaylock || swaylock -f' \
  timeout 600 'hyprctl dispatch dpms off eDP-1' \
  resume 'hyprctl dispatch dpms on eDP-1'
