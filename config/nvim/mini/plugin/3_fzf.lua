local fzf = require("fzf-lua")

fzf.setup {
	fzf_opts = {
		["--no-scrollbar"] = true,
	},

	fzf_colors = {
		true,
	},
}

local function map(lhs, rhs)
	vim.keymap.set("n", "<Leader>" .. lhs, rhs)
end

map("t", fzf.tabs)
map("f", fzf.files)
map("b", fzf.buffers)
map("r", fzf.registers)
map("/c", fzf.grep_cword)
map("//", fzf.live_grep_native)
