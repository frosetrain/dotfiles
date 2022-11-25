-- Configuration for Neovim gui (Gnvim)

vim.o.guifont = [[FiraCode Nerd Font,monospace:h13]]
vim.o.linespace = 3

local ok, _ = pcall(
    vim.cmd,
    "call gnvim#enable_ext_tabline(0); call gnvim#enable_ext_cmdline(0); call gnvim#enable_ext_popupmenu(0)"
)
if not ok then
    -- not loaded
end
