--require('nightfox').setup({options = {transparent = true, styles = {comments = "italic", keywords = "bold"}}})

require("catppuccin").setup({
    transparent_background = true,
    show_end_of_buffer = true,
    styles = {
        keywords = { "bold" },
        properties = { "italic" },
    }
})



-- colorscheme
--vim.cmd.colorscheme = "catppuccin"
--vim.cmd("colorscheme nightfox")
vim.cmd("colorscheme catppuccin")
vim.opt.termguicolors = true
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

--vim.opt.signcolumn = "no"
vim.opt.cursorline = true

-- statusline config (lualine)
vim.opt.laststatus = 3
vim.cmd [[highlight WinSeparator guibg=None]]

-- other functional
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50

vim.api.nvim_command("filetype plugin on")
