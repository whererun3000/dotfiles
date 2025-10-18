require("noice").setup({
	popupmenu = {
	},
	-- you can enable a preset for easier configuration
	presets = {
		inc_rename = false,     -- enables an input dialog for inc-rename.nvim
		bottom_search = true,   -- use a classic bottom cmdline for search
		lsp_doc_border = true, -- add a border to hover docs and signature help
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
	},
})

