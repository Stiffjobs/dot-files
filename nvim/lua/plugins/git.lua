return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "kdheepak/lazygit.nvim" },
  config = function()
    require("telescope").load_extension("lazygit")
  end,
}
