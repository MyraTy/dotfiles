# MyraTy's dotfiles

## Compatibility

Ths rice is for Hyprland desktops and assumes the machine runs Arch Linux. It uses:
- Hyprlock
- Waybar
- Matugen
- awww
- rofi

## Installation

There is currently no proper installation script yet, so users have to use a more manual approach for now:

1. Back up pre-existing configurations under `~/.config/matugen`, `~/.config/hypr`, `/.config/rofi`, `~/.config/waybar` and `~/.config/foot`
2. Install every package listed within `deps.txt` and `aur-packages.txt`. These are basic components required for the rice to work
3. Copy all subdirectories within this repository to your personal .config directory
4. Get some wallpapers and a profile image and put them in `~/.config/wallpapers` and `~/.config/profile-photo.jpg` respectively
5. Place all your Hyprland keybinds in `~/.config/hypr/hyprland-binds.lua`. There are provided two scripts, `matugen/change_wallpaper.sh` and `matugen/toggle_mode.sh`, used to change the wallpaper and to toggle the light/dark mode
6. (optional) Create a systemd unit to automatically change the wallpaper.

## Credits

General inspiration: https://www.reddit.com/r/unixporn/comments/1w8xso8/hyprland_switched_to_hyprland_a_month_ago_my/
Hyprlock screen (with some modifications): https://github.com/MrVivekRajan/Hyprlock-Styles

## TODO

- Make an installation script which handles everything
- Develop a GTK or Qt wallpaper selector for the user to be able to select a wallpaper apart from letting randomness choose one. There are already applications of this kind, but they assume control of everything instead of limiting themselves to printing out to stdout the filename of the walllpaper, the desired behavior
- Fixing the 'Dissappearing and reappearing' bar problem when changing wallpaper. There are some tools for that, but they must first be implemented in the wallpaper changing workflow.
