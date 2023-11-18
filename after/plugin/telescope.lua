local colors = require("catppuccin.palettes").get_palette()
local TelescopeColor = {
	TelescopeMatching = { fg = colors.peach },
	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

    --TelescopePromptNormal = { bg = colors.surface0 },
	TelescopePromptPrefix = { bg = colors.surface0 },
    TelescopePromptBorder = { fg = colors.mauve },
    TelescopePromptTitle = { fg = colors.mauve },

	TelescopeResultsNormal = {},
    TelescopeResultsBorder = { fg = colors.mauve },
    TelescopeResultsTitle = { fg = colors.mauve },

	--TelescopePreviewNormal = { bg = colors.mantle },
	TelescopePreviewBorder = { fg = colors.mantle },
	TelescopePreviewTitle = { fg = colors.flamingo },
}

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
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
--vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})


for hl, col in pairs(TelescopeColor) do
	vim.api.nvim_set_hl(0, hl, col)
end
require('telescope').load_extension('fzf')
