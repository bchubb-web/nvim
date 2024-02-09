return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy=false,
        build = ':TSUpdate',
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "javascript", "html", "php", "blade", "vim-blade" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    }
}
