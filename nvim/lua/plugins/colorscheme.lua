function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   ColorMyPencils("gruvbox")
    -- end,
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    -- config = function()
    --   ColorMyPencils()
    -- end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "EdenEast/nightfox.nvim",
    -- config = function()
    --   ColorMyPencils("nightfox")
    -- end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },
  {
    "Mofiqul/vscode.nvim",
  },
}
