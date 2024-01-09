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
                        filetypes = {'php'},
                        cmd = {"n", "run", "16.17.0", "/Users/billychubb/.local/share/nvim/mason/packages/intelephense/node_modules/intelephense/lib/intelephense.js", "--stdio"},
                        settings = {
                            intelephense = {
                                files = {
                                    associations = {"*.php"},
                                    maxSize = 5000000
                                },
                                --stubs = { "Core", "wordpress", "acf-pro", "wordpress-globals", "wp-cli", "polylang" },
                                stubs = { "bcmath", "bz2", "calendar", "Core",
                                "curl", "date", "dba", "dom", "enchant",
                                "fileinfo", "filter", "ftp", "gd", "gettext",
                                "hash", "iconv", "imap", "intl", "json",
                                "ldap", "libxml", "mbstring", "mcrypt", "mysql",
                                "mysqli", "password", "pcntl", "pcre", "PDO",
                                "pdo_mysql", "Phar", "readline", "recode", "Reflection",
                                "regex", "session", "SimpleXML", "soap", "sockets",
                                "sodium", "SPL", "standard", "superglobals", "sysvsem",
                                "sysvshm", "tokenizer", "xml", "xdebug", "xmlreader",
                                "xmlwriter", "yaml", "zip", "zlib", "wordpress",
                                "woocommerce", "acf-pro", "wordpress-globals", "wp-cli",
                                "genesis", "polylang", "sbi"
                            },
                            --environment = { includePaths = '/Users/billychubb/.composer/vendor/php-stubs/' }
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
