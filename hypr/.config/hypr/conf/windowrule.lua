----------------------
---- WINDOW RULES ----
----------------------

local func = require("conf.functions")

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
    name = "plexamp-float",
    match = {
        title = "^(Plexamp)",
    },
    float  = true,
})

hl.window_rule({
    name = "networks-float",
    match = {
        title = "^(Networks)$",
    },
    float  = true,
})

hl.window_rule({
    name = "nextcloud-float",
    match = {
        title = "^(Nextcloud)",
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
    name = "Waterfox-opac",
    match = {
        class = "waterfox",
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
    name = "overthehill-windowed",
    match = {
        title = "over the hill"
    },
   float = true,
})

if func.is_laptop() then
    hl.window_rule({
        name = "10-floats",
        match = {
            workspace = 10,
        },
        float = true,
    })
    hl.window_rule({
        match = { class = "dev.noctalia.Noctalia" },
        float = true,
        size = { 1080, 920 },
    })
end
-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    match = {
        content = "game",
        fullscreen = true
    },
    confine_pointer = true
})

hl.on("window.open", function(w)
    if w.class ~= "waterfox" then return end
    if w.initial_title ~= "Waterfox" then return end

    local ff_windows = hl.get_windows({ class = "waterfox" })
    if #ff_windows <= 1 then return end

    hl.dispatch(hl.dsp.window.float({ action = "set", window = w }))

    local sub
    sub = hl.on("window.title", function(tw)
        if tw.address ~= w.address then return end
        if tw.title == ""
            or tw.title == "Waterfox"
            or tw.title == "about:blank"
            or tw.title:match("^about:.*Waterfox$") then return end

        sub:remove()

        if tw.title:match("^Extension:") then
            hl.dispatch(hl.dsp.window.resize({ x = 800, y = 600, window = tw }))
            hl.dispatch(hl.dsp.window.center({ window = tw }))
            hl.dispatch(hl.dsp.focus({ window = tw }))
        else
            hl.dispatch(hl.dsp.window.float({ action = "unset", window = tw }))
        end
    end)
end)
