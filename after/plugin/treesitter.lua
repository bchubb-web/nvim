require'nvim-treesitter.configs'.setup {

  ensure_installed = { "css", "lua", "vim", "help", "javascript", "json", "php", "python", "scss", "html" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- require('treesitter-context').setup()
