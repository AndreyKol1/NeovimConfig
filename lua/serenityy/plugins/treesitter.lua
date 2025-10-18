return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPre", "BufNewFile" },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.install').prefer_git = false

    require('nvim-treesitter.configs').setup({
      ensure_installed = {"python", "lua"},
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autopairs = { enable = true },
    })
  end,
}
