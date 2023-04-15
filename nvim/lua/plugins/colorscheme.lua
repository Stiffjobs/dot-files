return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "rose-pine/neovim",
    as = "rose-pine",
  },
  {
    "Mofiqul/vscode.nvim",
  },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  -- },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
