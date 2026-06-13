----------------------
---- WINDOW RULES ----
----------------------
--- this file can be abandoned in favor of the laptop one

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "signal-float",
    match = {
        title = "^(Signal)",
    },
    float  = true,
})

hl.window_rule({
    name = "Firefox-opac",
    match = {
        class = "firefox",
    },
    opacity = "1.0 override",
})

hl.window_rule({
    name = "Plasma-windowed",
    match = {
        class = "org.kde.plasmawindowed",
    },
    float = true,
})

hl.window_rule({
    name = "10-floats",
    match = {
        workspace = 10,
    },
    float = true,
})
-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


