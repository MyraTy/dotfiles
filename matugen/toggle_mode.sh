#!/usr/bin/bash
MODE_FILE=~/.config/matugen/generated/current_mode
CURRENT_WALLPAPER_FILE=~/.config/matugen/generated/current_wallpaper # Matugen needs it!

if [ ! -f $CURRENT_WALLPAPER_FILE ]; then
    /home/etb/.config/matugen/change_wallpaper.sh
fi

if [ ! -f $MODE_FILE ]; then
    echo "light" > $MODE_FILE # Later changed to dark mode
fi

case $(cat $MODE_FILE) in
    dark) echo "light" > $MODE_FILE ;;
    light) echo "dark" > $MODE_FILE ;;
    *) echo "dark" > $MODE_FILE ;;
esac

matugen -m $(cat $MODE_FILE) --source-color-index 0 image $(cat $CURRENT_WALLPAPER_FILE)
