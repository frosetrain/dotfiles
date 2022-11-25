-- Frosetrain's plugins

-- bootstrap packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- actual plugins
return require("packer").startup(function(use)
    -- package managers
    use("wbthomason/packer.nvim")
    use("williamboman/mason.nvim")

    -- coding things
    use({ "neoclide/coc.nvim", branch = "release" })
    use("mfussenegger/nvim-lint")
    use("mhartington/formatter.nvim")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("windwp/nvim-autopairs")
    use("gpanders/editorconfig.nvim")

    -- colorschemes
    use({ "dracula/vim", as = "dracula" })
    use({ "arcticicestudio/nord-vim", as = "nord" })
    use("joshdick/onedark.vim")
    use("drewtempelmeyer/palenight.vim")
    use("catppuccin/vim")
    use("overcache/NeoSolarized")
    use("morhetz/gruvbox")

    -- visual stuff
    use("kyazdani42/nvim-web-devicons")
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use("akinsho/bufferline.nvim")
    use("nvim-tree/nvim-tree.lua")
    use("lewis6991/gitsigns.nvim")
end)
