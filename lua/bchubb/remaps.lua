vim.g.mapleader = " "


------ VISUAL ------
-- moving selected lines in V mode
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")

--indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--formatted indenting
vim.keymap.set("v", "<Leader><", "<gv=gv")
vim.keymap.set("v", "<Leader>>", ">gv=gv")

-- copy to system clipboard
vim.keymap.set("v", "<Leader>y", '"+y')

------ NORMAL ------
-- half page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- entering first tag on line
vim.keymap.set("n", "<Leader>i", "F>a")
vim.keymap.set("n", "<Leader>a", "0f>a")

-- enter first tag and empty it
vim.keymap.set("n", "<Leader>I", "F>lvt<di")
vim.keymap.set("n", "<Leader>A", "0f>lv$F<hdi")

-- integer manipulation
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- toggle side tree
vim.keymap.set("n", "<leader>q", vim.cmd.NvimTreeToggle)

-- focus of side tree
vim.keymap.set("n", "<Leader>pp", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<Leader>P", "<c-w>l")

-- add semicolon to end of line
vim.keymap.set("n", "<leader>;", "A;<Esc>")

-- find and replace
vim.keymap.set("n", "<Leader>fr", ":%s//<Left>")

-- find
vim.keymap.set("n", "fd", "/")

-- empty all buffers except this one
vim.keymap.set("n", "<Leader>bd", "<cmd>w|%bd|e#|bd#<CR>")

-- apend to current line without coving cursor
vim.keymap.set("n", "J", "mzJ`z")


-- git commands
vim.keymap.set("n", "<Leader>ga", "<cmd>Git add .<CR>")
vim.keymap.set("n", "<Leader>gc", "<cmd>Git commit<CR>")

-- makes tag with class on default opening tag
vim.keymap.set("n", "mt", "yypa/<Esc>kea class=''<Esc>i")
vim.keymap.set("v", "ma", "ygv<Esc>a\"><Esc>gvo<Esc>i<a href=\"<Esc>f>a</a><Esc>F>p")
