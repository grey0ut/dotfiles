return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    config = function()
        require('lualine').setup({
            options = {
                theme = 'onenord',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'filename'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'location'}
            },
        })
    end,
}
