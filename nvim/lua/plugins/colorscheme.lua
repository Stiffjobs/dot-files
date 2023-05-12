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
  },
  -- {
  --   "Mofiqul/vscode.nvim",
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox",
      -- colorscheme = "gruvbox",
      -- colorscheme = "vscode",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "tokyonight",
    },
  },
}
