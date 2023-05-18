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
    use("mfussenegger/nvim-lint")
    use("mhartington/formatter.nvim")
    use("windwp/nvim-autopairs")
    use("gpanders/editorconfig.nvim")
    use("numToStr/Comment.nvim")

    -- colorschemes
    use("sainnhe/sonokai")
    use("sainnhe/everforest")
    use("sainnhe/edge")
    use("catppuccin/nvim")
    use({ "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" })
    use("projekt0n/github-nvim-theme")
    use("cocopon/iceberg.vim")
    use("arcticicestudio/nord-vim")
    use("folke/tokyonight.nvim")
    use("nanotech/jellybeans.vim")
    use("kvrohit/substrata.nvim")
    use("kvrohit/rasmus.nvim")

    -- visual stuff
    use("kyazdani42/nvim-web-devicons")
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use("akinsho/bufferline.nvim")
    use("nvim-tree/nvim-tree.lua")
    use("lukas-reineke/indent-blankline.nvim")
    use("lewis6991/gitsigns.nvim")
end)
