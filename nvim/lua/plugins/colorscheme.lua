function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
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
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "material"

      -- vim.g.gruvbox_material_colors_override = { bg0 = '#000000' } -- #0e1010
      -- vim.g.gruvbox_material_colors_override = { bg0 = "#121212" }
      vim.g.gruvbox_material_better_performance = 1

      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        highlight_groups = {
          TelescopeBorder = { fg = "highlight_high", bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopePromptNormal = { bg = "base" },
          TelescopeResultsNormal = { fg = "subtle", bg = "none" },
          TelescopeSelection = { fg = "text", bg = "base" },
          TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    {
      "craftzdog/solarized-osaka.nvim",
      lazy = true,
      priority = 1000,
      opts = function()
        return {
          transparent = true,
          styles = {
            comments = {
              italic = true,
            },
            sidebars = "transparent",
            floats = "transparent",
          },
        }
      end,
    },
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "folke/tokyonight.nvim",
    opts = function()
      return {
        transparent = true,
        styles = {
          comments = {
            italic = true,
          },
          sidebars = "transparent",
          floats = "transparent",
        },
      }
    end,
  },
}
