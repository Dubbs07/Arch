#!/bin/bash

WALLPAPER_DIR="/home/tyler/.config/hypr/wallpapers"
MONITOR="DP-3"

FULL_PATH=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

hyprctl hyprpaper preload "$FULL_PATH"
hyprctl hyprpaper wallpaper "$MONITOR,$FULL_PATH"
hyprctl hyprpaper unload unused