-- Import external configs
require("hyprland-binds") -- Put your keybinds in this file
colors = require("hyprland-colors") -- Matugen colors

-- Main Hyprand configuration
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 40,
        resize_on_border = true,
        col = {
            inactive_border = colors.outline_variant,
            active_border = colors.primary_fixed
        },
        snap = {
            enabled = true,
            window_gap = 5,
            monitor_gap = 5,
        },
    },
    decoration = {
        rounding = 10,
        rounding_power = 4,
        inactive_opacity = .8,
    },
    misc = {
        disable_hyprland_logo = true,
        animate_manual_resizes = true,
        enable_swallow = true,
        background_color = colors.background,
        col = {
            splash = colors.on_background
        }
    },
    ecosystem = {
        enforce_permissions = true
    }
})

-- Some cool animations
hl.curve("start-fast-then-settle", {type = "bezier", points = {{0.5, 0}, {0, 1}}})
hl.curve( "rubber", {type = "spring", mass = 1, stiffness = 200, dampening = 20})

hl.animation({leaf = "windows", enabled = true, speed = 2.5, bezier="start-fast-then-settle"})
hl.animation({leaf = "fade", enabled = true, speed = 2.5, bezier="start-fast-then-settle"})
hl.animation({leaf = "border", enabled = true, speed = 2.5, bezier="start-fast-then-settle"})
hl.animation({leaf = "workspaces", enabled = true, speed = 4, bezier="start-fast-then-settle"})

-- Permissions
hl.permission({binary = "*", type = "keyboard", mode = "ask"})
hl.permission({binary = "/usr/bin/hyprlock", type = "screencopy", mode = "allow"})

-- Make sure wallpaper is set up correctly
hl.on("hyprland.start", function ()
    hl.exec_cmd("~/.config/matugen/change_wallpaper.sh")
end)
