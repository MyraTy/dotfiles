#!/usr/bin/bash
WALLPAPERS_DIR=~/.config/wallpapers/
CURRENT_WALLPAPER_FILE=~/.config/matugen/generated/current_wallpaper
MODE_FILE=~/.config/matugen/generated/current_mode
ROFI_THEMES_DIR=~/.config/rofi

if [[ ! -f $CURRENT_WALLPAPER_FILE || $(cat $CURRENT_WALLPAPER_FILE) =~ ^[[:space:]]*$ ]]; then
    echo "Dummy" > $CURRENT_WALLPAPER_FILE
fi

case $1 in
    random) WALLPAPER=$(find $WALLPAPERS_DIR -type f | grep -vFf $CURRENT_WALLPAPER_FILE | shuf -n 1) ;;
    choose) WALLPAPER=$(for wall in $(find $WALLPAPERS_DIR -type f); do echo -en "$wall\0icon\x1f$wall\n"; done | rofi -dmenu -theme $ROFI_THEMES_DIR/matugen_theme_wallpaper_selector.rasi) ;;
    *) WALLPAPER=$(find $WALLPAPERS_DIR -type f | grep -vFf $CURRENT_WALLPAPER_FILE | shuf -n 1) ;;

esac

if [ ! -f $MODE_FILE ]; then
    echo "dark" > $MODE_FILE
fi

sleep 1 # Give time for the daemon to start if it just has been invoked

echo $WALLPAPER > $CURRENT_WALLPAPER_FILE
matugen image -m $(cat $MODE_FILE) --source-color-index 0 $WALLPAPER
