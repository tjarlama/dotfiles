#!/bin/bash

declare -A options=(
    ["Logout"]="swaymsg exit"
    ["Lock"]="swaylock"
    ["Suspend"]="systemctl suspend"
    ["Shutdown"]="systemctl poweroff"
    ["Reboot"]="systemctl reboot"
)

choice=$(printf "%s\n" "${!options[@]}" | wofi --show dmenu --prompt="Power Menu")

if [[ -n $choice ]]; then
    eval "${options[$choice]}"
fi
