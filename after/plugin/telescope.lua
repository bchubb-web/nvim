local builtin = require('telescope.builtin')
builtin.find_files{ on_complete = {function () vim.cmd("stopinsert") end}}
builtin.git_files{ on_complete = {function () vim.cmd("stopinsert") end}}
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
