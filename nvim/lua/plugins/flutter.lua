return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    keys = {
      {
        "<leader>fj",
        function()
          require("telescope").extensions.flutter.commands()
        end,
        desc = "Run Flutter Project",
      },
      {
        "<leader>fa",
        "<cmd>FlutterRun<CR>",
      },
      {
        "<leader>fq",
        "<cmd>FlutterQuit<CR>",
      },
    },
    config = function()
      require("flutter-tools").setup({})
    end,
  },
}
