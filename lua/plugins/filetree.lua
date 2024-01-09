return {
    {
        'nvim-tree/nvim-tree.lua',
        dependencies={ 'nvim-tree/nvim-web-devicons'},
        keys={
            { "<leader>q", "<cmd>NvimTreeToggle<cr>", desc = "FileTree" },
        },
        config=function()
            require("nvim-tree").setup({})

            vim.keymap.set("n", "<leader>q", vim.cmd.NvimTreeToggle)
        end
    }
}
