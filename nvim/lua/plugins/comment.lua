opts = {
  hooks = {
    pre = function()
      require("ts_context_commentstring.internal").update_commentstring({})
    end,
  },
}
return {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    hooks = {
      pre = function()
        require("ts_context_commentstring.internal").update_commentstring({})
      end,
    },

    mappings = {
      comment = "gc",
      comment_line = "gc",
    },
  },
  config = function(_, opts)
    require("mini.comment").setup(opts)
  end,
}
