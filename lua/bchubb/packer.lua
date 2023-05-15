vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

    --packer itself??? meta AF
    use 'wbthomason/packer.nvim'

    -- my colourthemes
    use "EdenEast/nightfox.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'maxmx03/dracula.nvim'

    -- cant rember but it is needed by other plugins
    use "nvim-lua/plenary.nvim"

    -- adds icons for other plugons
    use 'nvim-tree/nvim-web-devicons'

    -- telescope - fuzzy finder for local files
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'} } }

    -- telescope enhancer
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    -- allows for syntax highlighting 
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- shows the current parent function at the top of the screen when it
    use ('nvim-treesitter/nvim-treesitter-context')

    -- lsp, Autocompletion, functions etc
    use {
        'VonHeikemen/lsp-zero.nvim',
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

    --sidebar file tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons'}
    }

    -- auto complete [ { ( ' ` " 
    use "windwp/nvim-autopairs"

    -- adds lines for indents
    use "lukas-reineke/indent-blankline.nvim"

    -- line at bottom looking nice
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- colours hex codes stc in css
    use 'norcalli/nvim-colorizer.lua'

    -- emmet keybindingd
    use 'mattn/emmet-vim'

    -- git commands
    use 'tpope/vim-fugitive'

end)
