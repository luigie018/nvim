

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local map = vim.keymap.set

        -- Add current file to Harpoon
        map("n", "<leader>ha", function()
            harpoon:list():add()
        end, { desc = "Harpoon: Add file" })

        -- Show Harpoon quick menu
        map("n", "<leader>hm", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Harpoon: Quick menu" })

        -- Navigate to marked files
        for i = 1, 4 do
            map("n", "<leader>" .. i, function()
                harpoon:list():select(i)
            end, { desc = "Harpoon: File " .. i })
        end

        -- Navigate between Harpoon files
        map("n", "<leader>hn", function()
            harpoon:list():next()
        end, { desc = "Harpoon: Next file" })

        map("n", "<leader>hp", function()
            harpoon:list():prev()
        end, { desc = "Harpoon: Previous file" })
    end,
}
