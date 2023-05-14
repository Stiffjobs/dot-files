return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   vim.o.background = "dark"
    --   vim.cmd([[colorscheme gruvbox]])
    -- end,
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    -- config = function()
    --   vim.cmd.colorscheme("rose-pine")

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- end,
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "nightfox",
  -- colorscheme = "gruvbox",
  -- colorscheme = "vscode",
  -- colorscheme = "rose-pine-moon",
  -- colorscheme = "catppuccin-macchiato",
  -- colorscheme = "tokyonight",
  --   },
  -- },
}
