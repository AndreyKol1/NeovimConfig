return {
  'williamboman/mason.nvim',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup({})
    require('mason-lspconfig').setup({
      automatic_enable = false,
      ensure_installed = {
        'lua_ls',
        'pyright',
        'dockerls',
        'docker_compose_language_service',
        'sqlls',
      },
    })
  end,
}
