local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


vim.keymap.set("n", "∆", function() ui.nav_file(1) end)
vim.keymap.set("i", "∆", function() ui.nav_file(1) end)

vim.keymap.set("n", "˚", function() ui.nav_file(2) end)
vim.keymap.set("i", "˚", function() ui.nav_file(2) end)

vim.keymap.set("n", "¬", function() ui.nav_file(3) end)
vim.keymap.set("i", "¬", function() ui.nav_file(3) end)

vim.keymap.set("n", "…", function() ui.nav_file(4) end)
vim.keymap.set("i", "…", function() ui.nav_file(4) end)

