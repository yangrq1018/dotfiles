#!/usr/bin/env sh

# rofi action
case $1 in
    d)  r_mode="drun" ;;  # Launch applications based on desktop files
    w)  r_mode="window" ;;  # Switch between windows
    f)  r_mode="filebrowser" ;;  # A simple file browser
    h)  echo -e "rofilaunch.sh [action]\nwhere action,"
        echo "d :  drun mode"
        echo "w :  window mode"
        echo "f :  filebrowser mode,"
        exit 0 ;;
    *)  r_mode="drun" ;;
esac

rofi -show $r_mode
