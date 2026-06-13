------------------
---- MONITORS ----
------------------
local func = require("conf.functions")

if func.is_laptop() then
    hl.monitor({
        output  = "eDP-1",
        mode    = "preferred",
        scale   = "1.5",
    })

    hl.monitor({
        output  = "DP-1",
        mode    = "preferred",
        scale   = "1.333",
    })

    hl.monitor({
        output  = "",
        mode    = "preferred",
        position = "auto",
        scale   = "1",
    })
else 
    hl.monitor({
        output   = "DP-3",
        mode     = "2560x1440@144",
        position = "0x0",
        scale    = "1",
    })

    hl.monitor({
        output   = "DP-2",
        mode     = "2560x1440@60",
        position = "2560x0",
        scale    = "1",
        transform = true,
    })
end
