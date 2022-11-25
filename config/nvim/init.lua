-- Neovim config file by Frosetrain

require("plugins")
require("gui")
require("misc")
require("keybinds")
require("lang")

require("mason").setup()
require("nvim-autopairs").setup()
require("lualine").setup()
require("bufferline").setup()
require("nvim-tree").setup()
require("gitsigns").setup()
-- more stuff is set up in lang.lua

vim.cmd("colo onedark")
