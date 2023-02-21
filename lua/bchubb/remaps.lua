vim.g.mapleader = " "


-- moving selected lines in V mode
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")

-- half page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- entering first tag on line
vim.keymap.set("n", "<Leader>i", "0f>a")

-- enter first tag and empty it
vim.keymap.set("n", "<Leader>I", "0f>lvt<di")

-- number namipulation
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- open error menu
vim.keymap.set('n', '<Leader>re', vim.cmd.TroubleToggle )

-- toggle side tree
vim.keymap.set("n", "<leader>q", vim.cmd.NvimTreeToggle)

-- focus of side tree
vim.keymap.set("n", "<Leader>pp", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<Leader>P", "<c-w>l")

-- add semicolon to end of line
vim.keymap.set("n", "<leader>;", "A;<Esc>")

vim.keymap.set("n", ":", "<cmd>FineCmdline<CR>")
vim.keymap.set("n", "!", "<cmd>FloatermToggle<CR>")
--vim.keymap.set("t", "<Esc><Esc>", "<cmd>FloatermToggle<CR>")
