

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        local treesitter = require("nvim-treesitter")

        -- Install language parsers
        treesitter.install({
            "java",
            "lua",
            "json",
            "xml",
            "yaml",
            "bash",
            "sql",
            "html",
            "css",
            "javascript",
            "typescript",
            "markdown",
            "markdown_inline",
        })

        -- Enable Tree-sitter highlighting
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "java",
                "lua",
                "json",
                "xml",
                "yaml",
                "sh",
                "sql",
                "html",
                "css",
                "javascript",
                "typescript",
                "markdown",
            },

            callback = function(args)
                pcall(vim.treesitter.start, args.buf)
            end,
        })

        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldlevel = 99
    end,
}
