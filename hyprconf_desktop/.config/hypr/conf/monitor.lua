------------------
---- MONITORS ----
------------------

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

