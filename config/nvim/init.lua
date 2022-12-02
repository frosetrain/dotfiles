-- Neovim config file by Frosetrain

require "plugins"
require "gui"
require "misc"

require("mason").setup()
require("nvim-autopairs").setup()
require("lualine").setup()
require("bufferline").setup()
require("nvim-tree").setup()
require("gitsigns").setup()
require("Comment").setup {
  toggler = {
    line = "<leader>/",
    block = "<leader>?",
  },
}
-- more stuff is set up in lang.lua

require "lang"
require "keybinds"
require "theme"
