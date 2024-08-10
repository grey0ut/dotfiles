return {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
        require("bluloco").setup({
            style = "dake",
            transparent = true,
        })
        vim.cmd.colorscheme("bluloco")
    end,
}
