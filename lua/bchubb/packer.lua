vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  -- 
    use 'wbthomason/packer.nvim'

    -- my colourtheme
    use "EdenEast/nightfox.nvim"

    use { "catppuccin/nvim", as = "catppuccin"}

    -- cant rember but it is needed by other plugins
    use "nvim-lua/plenary.nvim"
    use 'nvim-tree/nvim-web-devicons'

    -- telescope - fuzzy finder for local files
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }

    -- allows for syntax highlighting 
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- dont need it tbh and could probaly get rid of it
    use ('nvim-treesitter/playground')

    -- shows the current parent function at the top of the screen when deep into it
    use ('nvim-treesitter/nvim-treesitter-context')

    -- lsp, Autocompletion, functions etc
    use {'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
        -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- shows errors in togglable menu
    use {"folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

    --sidebar file tree
    use { 'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons',
        }
    }

    -- auto complete [ { ' ":q
    use "windwp/nvim-autopairs"

    -- funky comments ;)
    use 'preservim/nerdcommenter'
    --colours css shit
    --use {"rrethy/vim-hexokinase", run = "make hexokinase",}

    use "lukas-reineke/indent-blankline.nvim"

    -- line at bottom looking nice
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'norcalli/nvim-colorizer.lua'
end)
