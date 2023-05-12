-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = "onedarker"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>j"

lvim.format_on_save.enabled = true

-- neovim mappings
-- x closes a buffer
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"

--disable <leader>q
lvim.keys.normal_mode["<leader>q"] = false


-- jj to normal_mode
lvim.keys.insert_mode["jj"] = "<esc>"

--qq to quit all
lvim.keys.normal_mode["<leader>qq"] = ":qa<cr>"


-- treesitter highlight
lvim.builtin.treesitter.highlight.enabled = true

-- Centers cursor when moving 1/2 page
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

--autotag plugin
lvim.plugins = { {
  "nvim-treesitter/nvim-treesitter",
},
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require('nvim-ts-autotag').setup({
        -- your config
      })
    end,
    lazy = true,
    event = "VeryLazy"
  },
}
lvim.builtin.treesitter.autotag.enable = true
--tmux
lvim.plugins = {
  "nathom/tmux.nvim",
  keys = {
    {
      "<C-h>",
      "[[<cmd>lua require('tmux').move_left()<cr>]]"
    },
    {
      "<C-l>",
      "[[<cmd>lua require('tmux').move_right()<cr>]]"
    },
    {
      "<C-k>",
      "[[<cmd>lua require('tmux').move_up()<cr>]]"
    },
    {
      "<C-j>",
      "[[<cmd>lua require('tmux').move_down()<cr>]]"
    }
  }
}

--trouble
lvim.plugins = {
  { "folke/trouble.nvim", cmd = "TroubleToggle" }
  , { "rafi/awesome-vim-colorschemes" }
}
