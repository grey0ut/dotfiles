--------------------
---- WORKSPACES ----
--------------------

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
