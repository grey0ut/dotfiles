#!/usr/bin/env bash
# script for hyprland to toggle refresh rate on Framework Laptop

CURRENT=$(hyprctl monitors | grep "eDP-1" -A 1 | awk -F @ 'NR>1 {print $2}' | awk -F . '{print $1}')

if [[ $CURRENT = 120 ]]; then
    hyprctl keyword monitor eDP-1,2880x1920@60,auto,1.5
else 
    hyprctl keyword monitor eDP-1,2880x1920@120,auto,1.5
fi
