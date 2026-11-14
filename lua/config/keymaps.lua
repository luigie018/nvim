vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Open Explorer
map("n", "<leader>pv", vim.cmd.Ex)

-- Save
map("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file",
})

-- Quit
map("n", "<leader>q", "<cmd>quit<CR>", {
    desc = "Quit",
})

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>")


-- Buffer navigation
map("n", "<S-l>", "<cmd>bnext<CR>", {
    desc = "Next buffer",
})

map("n", "<S-h>", "<cmd>bprevious<CR>", {
    desc = "Previous buffer",
})

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
    desc = "Close buffer",
})

-- Split windows
map("n", "<leader>sv", "<cmd>vsplit<CR>", {
    desc = "Vertical split",
})

map("n", "<leader>sh", "<cmd>split<CR>", {
    desc = "Horizontal split",
})
