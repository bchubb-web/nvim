local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-d>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space"] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.configure('eslint', {
    root_dir = function(fname)
        return vim.fn.getcwd()
    end
})

lsp.configure('jq-lsp', {

})

lsp.configure('intelephense', {
    filetypes = {'php'},
    cmd = {"n", "run", "16.17.0", "/Users/billychubb/.local/share/nvim/mason/packages/intelephense/node_modules/intelephense/lib/intelephense.js", "--stdio"},
    --n run 16.17.0 /Users/billychubb/.local/share/nvim/mason/packages/intelephense/node_modules/intelephense/lib/intelephense.js
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



--[[lsp.configure('phpactor', {
    settings = {
        phpactor = {
            stubs = { "Core", "wordpress", "acf-pro", "wordpress-globals", "wp-cli", "polylang" },
            environment = { includePaths = '/Users/billychubb/.composer/vendor/php-stubs/' }
        }
    }
})]]


lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('pylsp', {})

lsp.configure('cssls', {
    cmd = {"n", "run", "16.17.0", "/Users/billychubb/.local/share/nvim/mason/packages/css-lsp/node_modules/vscode-langservers-extracted/bin/vscode-css-language-server", "--stdio"},
})

lsp.configure('tailwindcss', {})

lsp.configure('tsserver', {
    detached = false,
    filetypes = {"typescript", "typescriptreact", "typescript.tsx"}
})


lsp.setup()

-- diagnostic config
vim.diagnostic.config({
    virtual_text = true,
    underline = true,
})
