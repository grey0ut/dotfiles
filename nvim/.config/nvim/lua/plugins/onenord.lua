return {
    'rmehri01/onenord.nvim',
    lazy = false,
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    enabled = true,
    priority = 1000,
    config = function()
        require('onenord').setup({
            borders = true,
            disable = {
                background = false,
            },
            vim.cmd.colorscheme('onenord')
        })
    end,
}
