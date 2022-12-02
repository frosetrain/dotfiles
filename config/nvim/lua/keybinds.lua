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

-- coc stuff
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

function _G.show_docs()
    local cw = vim.fn.expand("<cword>")
    if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
        vim.api.nvim_command("h " .. cw)
    elseif vim.api.nvim_eval("coc#rpc#ready()") then
        vim.fn.CocActionAsync("doHover")
    else
        vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
    end
end
keyset("n", "K", "<CMD>lua _G.show_docs()<CR>", { silent = true })
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")
