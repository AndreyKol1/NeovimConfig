return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'folke/lsp-colors.nvim'
  },
  config = function()
    -- Lua LSP
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })

    -- Python LSP
    vim.lsp.config("pyright", {})

    -- Enable both servers
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("pyright")
  end,
}
