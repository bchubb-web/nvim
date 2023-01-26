vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.swapfile = false

require('nightfox').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})
vim.cmd("colorscheme nightfox")

require('telescope').setup{file_ignore_patterns = { "node%_modules/.*" }}

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
