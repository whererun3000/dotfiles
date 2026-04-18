-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

map("c", "<C-b>", "<Left>")
map("c", "<C-f>", "<Right>")
map("c", "<C-a>", "<Home>")
map("c", "<C-e>", "<End>")
map("c", "<A-b>", "<C-Left>")
map("c", "<A-f>", "<C-Right>")
