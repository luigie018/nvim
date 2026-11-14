


return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    event = "VeryLazy",

    config = function()
        vim.opt.laststatus = 3
        vim.opt.showmode = false

        -- Disable Neovim's top winbar
        vim.opt.winbar = ""

        require("lualine").setup({
            options = {
                theme = "auto",
                icons_enabled = true,
                globalstatus = true,

                component_separators = {
                    left = "",
                    right = "",
                },

                section_separators = {
                    left = "",
                    right = "",
                },
            },

            -- Bottom statusline
            sections = {
                lualine_a = { "mode" },

                lualine_b = {
                    {
                        "branch",
                        icon = "",
                    },
                    {
                        "diagnostics",
                        sources = { "nvim_diagnostic" },
                        sections = { "error", "warn", "info" },
                        symbols = {
                            error = " ",
                            warn = " ",
                            info = " ",
                        },
                    },
                },

                lualine_c = {
                    {
                        "filename",
                        symbols = {
                            modified = "[+]",
                            readonly = "[-]",
                            unnamed = "[No Name]",
                        },
                    },
                },

                lualine_x = { "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },

            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },

            -- No top bar
            winbar = {},
            inactive_winbar = {},
        })
    end,
}

