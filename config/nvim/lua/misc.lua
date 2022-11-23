-- Misc editor configs
-- Oh no there is a big blob of stuff

vim.g.mapleader = " "

local o = vim.opt
o.history = 500
o.autoread = true
o.backspace = [[indent,eol,start]]
o.hidden = true
o.splitbelow = true
o.splitright = true
o.mouse = "a"
o.scrolloff = 7
o.termguicolors = true
o.background = "dark"
o.showmode = false
o.ignorecase = true
o.autoindent = true
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.modeline = false
o.swapfile = false
o.number = true
o.relativenumber = true
o.wrap = false
