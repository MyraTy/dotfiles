# MyraTy's dotfiles

## Compatibility

Ths rice is for Hyprland desktops and assumes the machine runs Arch Linux. It uses:
- Hyprlock
- Waybar
- Matugen
- awww
- rofi

## Installation

Given that I haven't had enought time to create a proper installation program yet, users for now have to use a more manual approach:
1. Back up pre-existing configurations under `~/.config/matugen`, `~/.config/hypr`, `/.config/rofi`, `~/.config/waybar` and `~/.config/foot`
2. Everything under the deps.txt and aur-packages.txt should be installed for the rice to work
3. All subdirectories within this repo may be copied to your personal .config directory
4. Put all your Hyprland keybinds in `~/.config/hypr/hyprland-binds.lua` (remember that two scripts, `matugen/change_wallpaper.sh` and `matugen/toggle_mode.sh`, are provided to change the wallapper and appearance)
5. (optional) Select background and profile images and put them in `~/.config/wallpapers/` and `~/.config/profile-photo.jpg`
6. (optional) Create a systemd unit to automatically change the wallpaper.
