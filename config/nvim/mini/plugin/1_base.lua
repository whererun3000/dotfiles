local g = vim.g

g.theme = "everforest"
g.mapleader = " "
g.maplocalleader = "\\"

local o = vim.o

o.list = true
o.confirm = true
o.number = true
o.relativenumber = true
o.showmode = false
o.smartcase = true
o.ignorecase = true
o.cursorline = true
o.shiftround = true
o.autocomplete = true

o.wildmode = "longest:full,full"
o.winborder = "rounded"
o.completeopt = "menu,menuone,noinsert,popup"

local map = function(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs)
end

map("n", "<Esc>", vim.cmd.nohl)
map("n", "]b", function() vim.cmd("bn") end)
map("n", "[b", function() vim.cmd("bp") end)

map("n", "<C-h>", function() vim.cmd("wincmd h") end)
map("n", "<C-j>", function() vim.cmd("wincmd j") end)
map("n", "<C-k>", function() vim.cmd("wincmd k") end)
map("n", "<C-l>", function() vim.cmd("wincmd l") end)

map("c", "<C-b>", "<Left>")
map("c", "<C-f>", "<Right>")
map("c", "<C-a>", "<Home>")
map("c", "<C-e>", "<End>")
map("c", "<A-b>", "<C-Left>")
map("c", "<A-f>", "<C-Right>")
