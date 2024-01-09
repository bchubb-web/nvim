vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.wo.cursorline = true

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

-- other functional
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.updatetime = 50

vim.api.nvim_command("filetype plugin on")
