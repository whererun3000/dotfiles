local ts = require("nvim-treesitter")
local config = require("config").treesitter

ts.setup {
	install_dir = vim.fn.stdpath('data') .. '/site'
}

local uninstall = vim.tbl_filter(
	function(lang)
		return vim.tbl_contains(ts.get_available(), lang) and not vim.tbl_contains(ts.get_installed(), lang)
	end,
	config.ensure_installed
)

if #uninstall > 0 then
	ts.install(uninstall)
end

local filetypes = {}
for _, lang in ipairs(config.ensure_installed) do
	for _, ft in ipairs(vim.treesitter.language.get_filetypes(lang)) do
		table.insert(filetypes, ft)
	end
end

if #filetypes > 0 then
	vim.api.nvim_create_autocmd("FileType", {
		pattern = filetypes,
		callback = function()
			vim.treesitter.start()
		end,
	})
end
