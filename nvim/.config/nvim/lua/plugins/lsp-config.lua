return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            -- install these automatically so binaries exist
            ensure_installed = { "lua_ls", "pyright", "powershell_es" },
            automatic_installation = true,
        },
    },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- tiny helper so we don’t repeat ourselves
            local function cfg(server, opts)
                opts = opts or {}
                opts.capabilities = capabilities
                vim.lsp.config(server, opts)    -- define
            end

            -- LSP servers
            cfg("lua_ls", {
                settings = {
                    Lua = { diagnostics = { globals = { "vim" } } },
                },
            })

            cfg("pyright", {})

            cfg("powershell_es", {
                bundle_path = vim.fn.expand("~/.config/powershell_es"),
                init_options = { enableProfileLoading = false },
            })

            -- now turn them on
            vim.lsp.enable({ "lua_ls", "pyright", "powershell_es" })

            -- keymaps
            local map = vim.keymap.set
            map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
            map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            map("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
            map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
            map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
        end,
    },
}
