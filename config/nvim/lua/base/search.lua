--[[
local fzf = require("fzf-lua")

vim.keymap.set('n', '<C-p>f', fzf.files)
vim.keymap.set('n', '<C-p>g', fzf.global)
vim.keymap.set('n', '<C-p>b', fzf.buffers)
vim.keymap.set('n', '<C-p>r', fzf.registers)
vim.keymap.set('n', '<C-p>/', fzf.live_grep_native)
--]]

local picker = Snacks.picker

vim.keymap.set('n', '<C-p>,', picker.buffers, { desc = "Buffers" })
vim.keymap.set('n', '<C-p>r', picker.buffers, { desc = "Registers" })
vim.keymap.set('n', '<C-p>f', picker.files, { desc = "Files" })
vim.keymap.set('n', '<C-p>/', picker.grep, { desc = "Grep" })
vim.keymap.set('v', '<C-p>/', picker.grep_word, { desc = "Grep Words" })
