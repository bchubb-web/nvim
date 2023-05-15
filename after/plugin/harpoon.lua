require("harpoon").setup()

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")

vim.keymap.set("n", "mf", mark.add_file)
vim.keymap.set("n", "hp", ui.toggle_quick_menu)

vim.keymap.set("n", "∆", function() ui.nav_file(1) end)
vim.keymap.set("n", "˚", function() ui.nav_file(2) end)
vim.keymap.set("n", "¬", function() ui.nav_file(3) end)
vim.keymap.set("n", "…", function() ui.nav_file(4) end)

vim.keymap.set("n", "<", function() ui.nav_prev() end)
vim.keymap.set("n", ">", function() ui.nav_next() end)


