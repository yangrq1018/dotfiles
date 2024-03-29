#!/usr/bin/env sh

ConfDir="${XDG_CONFIG_HOME:-$HOME/.config}"

# theme var
# gtkTheme=`gsettings get org.gnome.desktop.interface gtk-theme | sed "s/'//g"`
# gtkMode=`gsettings get org.gnome.desktop.interface color-scheme | sed "s/'//g" | awk -F '-' '{print $2}'`

# hypr var
hypr_border=`hyprctl -j getoption decoration:rounding | jq '.int'`
hypr_width=`hyprctl -j getoption general:border_size | jq '.int'`

