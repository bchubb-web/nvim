vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use "EdenEast/nightfox.nvim" 
    use "nvim-lua/plenary.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',

        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
