

return {
    "nvim-telescope/telescope.nvim",
    version = "*",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    cmd = "Telescope",

    opts = {
        defaults = {
            layout_strategy = "horizontal",

            layout_config = {
                horizontal = {
                    preview_width = 0.55,
                },
            },

            sorting_strategy = "ascending",

            prompt_prefix = " ",
            selection_caret = "➜ ",
        },
    },

    keys = {
        {
            "<leader>ff",
            "<cmd>Telescope find_files<CR>",
            desc = "Find files",
        },
        {
            "<leader>fg",
            "<cmd>Telescope live_grep<CR>",
            desc = "Search text in project",
        },
        {
            "<leader>fb",
            "<cmd>Telescope buffers<CR>",
            desc = "Find open buffers",
        },
        {
            "<leader>fr",
            "<cmd>Telescope oldfiles<CR>",
            desc = "Recent files",
        },
        {
            "<leader>fh",
            "<cmd>Telescope help_tags<CR>",
            desc = "Search help",
        },
    },
}
