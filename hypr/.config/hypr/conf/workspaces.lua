--------------------
---- WORKSPACES ----
--------------------

local func = require("conf.functions")

if func.is_laptop() then
    hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0, no_border = true })
    hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0, no_border = true  })
    hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0 })
    hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, rounding = 0 })
    hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0 })
    hl.window_rule({ match = { float = false, workspace = "f[1]" }, rounding = 0 })
    hl.workspace_rule({ workspace = "1", monitor = "eDP-1",  default = true, persistent = true, layout = "scrolling" })
    hl.workspace_rule({ workspace = "2", monitor = "eDP-1", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "3", monitor = "eDP-1", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "4", monitor = "eDP-1", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "5", monitor = "eDP-1", default = true, persistent = true,})
else
    hl.workspace_rule({ workspace = "1", monitor = "DP-3",  default = true, persistent = true, layout = "scrolling" })
    hl.workspace_rule({ workspace = "2", monitor = "DP-3", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "3", monitor = "DP-3", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "4", monitor = "DP-3", default = true, persistent = true,})
    hl.workspace_rule({ workspace = "9", monitor = "DP-2", default = true, persistent = true, gaps_in = 1, gaps_out = 1, no_rounding = true, })
    hl.workspace_rule({ workspace = "10", monitor = "DP-2", default = true, persistent = true, gaps_in = 1, gaps_out = 1, no_rounding = true, })
end
