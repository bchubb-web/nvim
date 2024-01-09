return {
    {
        'ThePrimeagen/harpoon',
        branch = "harpoon2",
        dependencies = {
            {"nvim-lua/plenary.nvim"}
        },
        keys={
            {"<C-h>"},
            {"∆"},
            {"˚"},
            {"¬"},
            {"…"},
        },
        config=function()
            vim.keymap.set("n", "mf", function() harpoon:list():append() end)
            vim.keymap.set("n", "HP", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
            vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "∆", function() harpoon:list():select(1) end)
            vim.keymap.set("i", "∆", function() harpoon:list():select(1) end)

            vim.keymap.set("n", "˚", function() harpoon:list():select(2) end)
            vim.keymap.set("i", "˚", function() harpoon:list():select(2) end)

            vim.keymap.set("n", "¬", function() harpoon:list():select(3) end)
            vim.keymap.set("i", "¬", function() harpoon:list():select(3) end)

            vim.keymap.set("n", "…", function() harpoon:list():select(4) end)
            vim.keymap.set("i", "…", function() harpoon:list():select(4) end)
        end
    }
}
