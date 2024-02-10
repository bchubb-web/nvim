return {
    "neovim/nvim-lspconfig",

    dependencies={
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',

        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
    },

    config=function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            handlers={

                ['lua_ls'] = function()
                    require('lspconfig').lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' }
                                }
                            }
                        }
                    })
                end,


                ['intelephense'] = function()
                    require('lspconfig').intelephense.setup({
                        filetypes = {'php', 'blade'},
                        settings = {
                            intelephense = {
                                files = {
                                    associations = { "*.php", "*.blade.php" }
                                }
                            }
                        },
                        root_dir = function(fname)
                            return vim.fn.getcwd()
                        end

                    })
                end
            },
        })

        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
            confirmation = {
                completeopt = 'menu,menuone,noinsert,select',
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            window = {
                completion    = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-d>'] = cmp.mapping.select_next_item(cmp_select),
                ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                ['<cr>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
            }, {
                { name = 'buffer' },
            })
        })


        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
        })

    end
}
