require('nightfox').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})
--require('catppuccin').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})


-- colorscheme
vim.cmd("colorscheme nightfox")
--vim.cmd("colorscheme catppuccin_mocha")
-- colour css colours
--vim.g.Hexokinase_highlighters = 'backgroundfull'

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- make tabs normal
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- formatting
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 6
vim.g.netrw_banner = 0

vim.opt.signcolumn = "no"
vim.opt.cursorline = true

-- other functional
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50

vim.api.nvim_command("filetype plugin on")








