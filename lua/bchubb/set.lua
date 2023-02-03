vim.opt.nu = true
vim.opt.relativenumber = true


require('nightfox').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})
vim.cmd("colorscheme nightfox")

<<<<<<< HEAD
require('telescope').setup{file_ignore_patterns = {defaults = { "node_modules/", "acf-json/" }}}
=======
require('telescope').setup{defaults = { file_ignore_patterns = { "node_modules", "acf-json" }}}
require('treesitter-context').setup()
>>>>>>> refs/remotes/origin/main

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 8







