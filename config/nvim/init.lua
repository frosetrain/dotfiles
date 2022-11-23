-- Neovim config file by Frosetrain

require("plugins")
require("gui")
require("misc")
require("keybinds")

require("mason").setup()
require("nvim-treesitter.configs").setup({
    ensure_installed = { "cpp", "lua", "python" },
    highlight = { enable = true },
})
require("nvim-autopairs").setup()
require("lualine").setup()
require("bufferline").setup()
require("nvim-tree").setup()

vim.cmd("colo onedark")
vim.cmd("NvimTreeFocus")

