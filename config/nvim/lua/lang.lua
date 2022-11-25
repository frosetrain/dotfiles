local util = require("formatter.util")

require("nvim-treesitter.configs").setup({
    ensure_installed = { "cpp", "lua", "python" },
    highlight = { enable = true },
})

require("lint").linters_by_ft = {
    python = { "flake8", "pydocstyle" },
}

require("formatter").setup({
    filetype = {
        python = {
            require("formatter.filetypes.python").black,
            require("formatter.filetypes.python").isort,
        },
        lua = {
            require("formatter.filetypes.lua").stylua,
            function()
                return {
                    exe = "stylua",
                    args = {
                        "--indent-type Spaces",
                    },
                }
            end,
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
        vim.cmd("Format")
    end,
})
