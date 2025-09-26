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
          automatic_installation = true,
          --opts = {
          --  auto_install = true,
          --},
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function ()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.powershell_es.setup({
                capabilities = capabilities,
                bundle_path = '~/.config/powershell_es',
                init_options = {
                    enableProfileLoading = false,
                }
            })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
        end,
    },
}
