return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    local config = {
      cmd = {
        "/opt/homebrew/Cellar/jdtls/1.22.0/bin/jdtls",
        -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
        -- Must point to the                                                     Change this to
        -- eclipse.jdt.ls installation                                           the actual version

        -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
        -- Must point to the                      Change to one of `linux`, `win` or `mac`
        -- eclipse.jdt.ls installation            Depending on your system.

        -- See `data directory configuration` section in the README
      },
      root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
      settings = {
        java = {},
      },
      handlers = {
        ["language/status"] = function(_, result)
          -- print(result)
        end,
        ["$/progress"] = function(_, result, ctx)
          -- disable progress updates.
        end,
      },
    }
    require("jdtls").start_or_attach(config)
  end,
}
