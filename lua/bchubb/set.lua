require('nightfox').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})
require('telescope').setup{defaults = { file_ignore_patterns = { "node_modules", "acf-json" }}}
require('treesitter-context').setup()


-- colorscheme
vim.cmd("colorscheme nightfox")

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
vim.opt.scrolloff = 8
vim.g.netrw_banner = 0

vim.opt.signcolumn = "no"

-- other functional
vim.opt.swapfile = false
vim.opt.backup = false










