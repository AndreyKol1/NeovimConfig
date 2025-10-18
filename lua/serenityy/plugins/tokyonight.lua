return {
  "folke/tokyonight.nvim",
  event = "VeryLazy",
  priority = 999,
  config = function()
    require("tokyonight").setup({
      style = "night",
      -- transparent = true,
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
