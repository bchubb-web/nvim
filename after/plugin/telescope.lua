require('telescope').setup{defaults = { file_ignore_patterns = { "node_modules", "acf-json", "dist", "package-lock.json"}}}


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

