---@diagnostic disable: undefined-doc-name, undefined-global
return {
  "folke/snacks.nvim",
  priority = 1000,
  enabled = true,
  lazy = false,
  ---@type Snacks.Config
  opts = {
    notifier = {
            enabled = true,
            top_down = true,
        },
    git = {
            enabled = true,
        },
    indent = {
            enabled = true,
        },
    words = {
            enabled = true,
        },
    lazygit = {
            enabled = true,
        },
    dashboard = {
            enabled = true,
            preset = {
                header = [[
                                                                    
      ████ ██████           █████      ██                     
     ███████████             █████                             
     █████████ ███████████████████ ███   ███████████   
    █████████  ███    █████████████ █████ ██████████████   
   █████████ ██████████ █████████ █████ █████ ████ █████   
 ███████████ ███    ███ █████████ █████ █████ ████ █████  
██████  █████████████████████ ████ █████ █████ ████ ██████ 

                ]]
            },
            sections = {
                { section = "header"},
                { section = "keys", padding = 1},
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            }
        },
    statuscolumn = {
            enabled = true
        },
    image = {
            enabled = true,
            doc = {
                enabled = true,
                inline = true,
            },
        },
    picker = {
            enabled = true,
            sources = {
                explorer = {
                    layout = {
                        preset = "sidebar",
                        cycle = false,
                        preview = false,
                        formatters = {
                            file = { filename_only = true},
                        },
                    },
                },
            },
            layout = {
                preset = "telescope",
            layout = {
                    layout = {
                        position = "right",
                    },
                },
                cycle = false,
            },
            layouts = {
                telescope = {
                      reverse = true,
                      layout = {
                        box = "horizontal",
                        backdrop = false,
                        width = 0.8,
                        height = 0.9,
                        border = "none",
                        {
                          box = "vertical",
                          { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
                          { win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center" },
                        },
                        {
                          win = "preview",
                          title = "{preview:Preview}",
                          width = 0.45,
                          border = "rounded",
                          title_pos = "center",
                        },
                      },
                   },
                },
        },
    explorer = {
            enabled = true,
        },
    win = {
        enabled = true,
        input = {
            keys = {
                    ["<Esc>"] = { "close", mode = { "n", "i" } },
                },
            },
        },
    terminal = {
        enabled = true,
        win = {
            position = "float",
            style = "terminal",
            border = "rounded",
            },
        },
    styles = {
        float = {
            backdrop = 100,
            },
        },
  },
  keys = {
    { "<leader>db", function() Snacks.dashboard() end, desc = "Snacks Dashboard" },
    { "<leader>lg", function() Snacks.lazygit() end, desc = "LazyGit" },
    { "<leader>gl", function() Snacks.lazygit.log_file() end, desc = "LazyGit Log (cwd)" },
    { "<leader>ie", function() Snacks.indent.enable() end, desc = "Indent Enabled" },
    { "<leader>id", function() Snacks.indent.disable() end, desc = "Indent Disabled" },
    { "<leader>pe", function() Snacks.explorer() end, desc = "Explorer" },
    { "<leader>pf", function() Snacks.picker.files() end, desc = "File Picker" },
    { "<leader>pc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Config Files" },
    { "<leader>pg", function() Snacks.picker.grep()  end, desc = "Grep word" },
    { "<leader>pk", function() Snacks.picker.keymaps({ layout = "ivy" })  end, desc = "Keymaps" },
    { "<leader>ph", function() Snacks.notifier.show_history()  end, desc = "Notification History" },
    { "<leader>pt", function() Snacks.picker.colorschemes({ layout = "ivy" })  end, desc = "Pick Colorscheme" },
    { "<leader>pb",
            function()
                Snacks.picker.buffers({
                    on_show = function()
                      vim.cmd.stopinsert()
                    end,
                })
            end,
            desc = "Buffers Explorer"
    },
    { "<leader>t", function() Snacks.terminal()  end, desc = "Toggle Terminal" },
    { "<leader>is", function() Snacks.image.hover()  end, desc = "Show image under cursor" },
  },
}
