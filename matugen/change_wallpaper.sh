#!/usr/bin/bash
WALLPAPERS_DIR=~/.config/wallpapers
CURRENT_WALLPAPER_FILE=~/.config/matugen/generated/current_wallpaper
MODE_FILE=~/.config/matugen/generated/current_mode

if [[ ! -f $CURRENT_WALLPAPER_FILE || $(cat $CURRENT_WALLPAPER_FILE) =~ ^[[:space:]]*$ ]]; then
    echo "Dummy" > $CURRENT_WALLPAPER_FILE
fi

if [ -z $1 ]; then
    WALLPAPER=$(find $WALLPAPERS_DIR -type f | grep -vFf $CURRENT_WALLPAPER_FILE | shuf -n 1)
else
    WALLPAPER=$1
fi

if [ ! -f $MODE_FILE ]; then
    echo "dark" > $MODE_FILE
fi

sleep 1 # Give time for the daemon to start if it just has been invoked

echo $WALLPAPER > $CURRENT_WALLPAPER_FILE
matugen image -m $(cat $MODE_FILE) --source-color-index 0 $WALLPAPER
