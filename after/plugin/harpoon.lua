require("harpoon").setup()
local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

vim.keymap.set("n", "mf", mark.add_file)
vim.keymap.set("n", "HP", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu)

vim.keymap.set("n", "<", function() ui.nav_prev() end)
vim.keymap.set("n", ">", function() ui.nav_next() end)


