return {

    {
            
        'nvim-telescope/telescope.nvim', 

        dependencies = { 
            {'nvim-lua/plenary.nvim'}, 
            {'BurntSushi/ripgrep'},
            'nvim-telescope/telescope-fzf-native.nvim', 
        },

        keys = {
            { "<C-f>", desc="start" }
        },

        config=function()
            require('telescope').setup{
                defaults = { 
                    file_ignore_patterns = { "node_modules", "acf-json", "dist", "package-lock.json", "_package", "old", "build", }
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                    -- false will only do exact matching
                        override_generic_sorter = true,  -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    }
                }
            }

            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<C-f>', builtin.find_files, {})
            vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        end
    },
}
