vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set clipboard+=unnamedplus")
vim.g.mapleader = " "
--vim.g.background = "light"

vim.wo.number = true
vim.opt.swapfile = false
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure code folding
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     callback = function()
--         if require("nvim-treesitter.parsers").has_parser() then
--             vim.opt.foldmethod = "expr"
--             vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--         else
--             vim.opt.foldmethod = "syntax"
--         end
--     end,
-- })
-- vim.opt.foldenable = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
