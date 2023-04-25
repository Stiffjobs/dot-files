return {
  {
    "goolord/alpha-nvim",
    config = function()
      local dashboard = require("alpha.themes.dashboard")

      -- Footer
      local function footer()
        local version = vim.version()
        local print_version = "v" .. version.major .. "." .. version.minor .. "." .. version.patch
        local datetime = os.date("%Y/%m/%d %H:%M:%S")

        return print_version .. " - " .. datetime
      end

      -- Banner
      local banner = {
        "________   .__   .__                           _________   ",
        "\\_____  \\  |  |  |__|___  __  ____ _______     \\_   ___ \\  ",
        " /   |   \\ |  |  |  |\\  \\/ /_/ __ \\\\_  __ \\    /    \\  \\/  ",
        "/    |    \\|  |__|  | \\   / \\  ___/ |  | \\/    \\     \\____ ",
        "\\_______  /|____/|__|  \\_/   \\___  >|__|        \\______  / ",
        "        \\/                       \\/                    \\/  ",
      }

      dashboard.section.header.val = banner

      -- Menu
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }

      dashboard.section.footer.val = footer()

      require("alpha").setup(dashboard.config)
    end,
  },
}
