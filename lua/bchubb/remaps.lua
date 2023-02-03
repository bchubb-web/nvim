vim.g.mapleader = " "

-- enter file manager
--vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.cmd.NvimTreeToggle)
-- moving selected lines in V mode
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")

-- half page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- entering first tag on line
vim.keymap.set("n", "<Leader>I", "0f>a")

-- number namipulation
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- open error menu
vim.keymap.set('n', '<Leader>re', vim.cmd.TroubleToggle )

-- toggle side tree
vim.keymap.set("n", "<Leader>pp", ":NvimTreeToggle<CR>")

--select all
-- vim.keymap.set("n", "<C-a>", "gg<S-v>G")
