return {
    'nvim-lualine/lualine.nvim',
    lazy=false,
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config=function()
        require("lualine").setup({
            options = { theme = 'nightfly' }
        })
        vim.opt.laststatus = 3
        vim.cmd [[highlight WinSeparator guibg=None]]
    end
}
