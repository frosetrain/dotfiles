-- Some nice keybindings

local keyset = vim.keymap.set

-- nvim-tree
keyset("n", "<leader>t", function()
    vim.cmd("NvimTreeToggle")
end)

-- moving between windows
keyset("n", "<leader>h", "<C-w>h")
keyset("n", "<leader>j", "<C-w>j")
keyset("n", "<leader>k", "<C-w>k")
keyset("n", "<leader>l", "<C-w>l")

-- moving windows
keyset("n", "<leader>H", "<C-w>H")
keyset("n", "<leader>J", "<C-w>J")
keyset("n", "<leader>K", "<C-w>K")
keyset("n", "<leader>L", "<C-w>L")

-- resizing windows
keyset("n", "<leader>+", "<C-w>+")
keyset("n", "<leader>-", "<C-w>-")
keyset("n", "<leader>=", "<C-w>=")
keyset("n", "<leader>,", "<C-w><")
keyset("n", "<leader>.", "<C-w>>")

-- clear search highlighting
keyset("n", "<leader>c", function()
    vim.cmd("noh")
end)

-- bufferline
keyset("n", "gt", function()
    vim.cmd("BufferLineCycleNext")
end)
keyset("n", "gT", function()
    vim.cmd("BufferLineCyclePrev")
end)
keyset("n", "<leader>q", function()
    vim.cmd("BufferLineCloseLeft")
end)
