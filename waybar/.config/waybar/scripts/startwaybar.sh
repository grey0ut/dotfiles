#!/bin/bash
# start waybar


# quit runnings instances of waybar
killall waybar
sleep 0.5

# check to see which computer we're on and load the appropriate config
CHASSIS=$(hostnamectl chassis)
if [[ $CHASSIS == 'desktop' ]]; then
    config_file=~/.config/waybar/configs/desktop.jsonc
elif [[ $CHASSIS == 'laptop' ]]; then
    config_file=~/.config/waybar/configs/laptop.jsonc
else
    config_file=~/.config/waybar/config.jsonc
fi

waybar -c $config_file &
