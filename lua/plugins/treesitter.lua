return {
    'nvim-treesitter/nvim-treesitter',
    lazy=false,
    build = ':TSUpdate',
    config = function () 

        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "javascript", "html", "php", "blade" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })

        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "blade",
        }
    end
}
