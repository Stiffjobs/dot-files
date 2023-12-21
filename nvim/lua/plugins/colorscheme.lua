function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
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
    {
      "craftzdog/solarized-osaka.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        transparent = false,
        -- styles = {
        --   sidebars = "transparent",
        --   floats = "normal",
        -- },
      },
    },
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
}
