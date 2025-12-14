require("mason").setup()

vim.lsp.enable(vim.g.enable_lsp)
vim.lsp.on_type_formatting.enable()

vim.keymap.del('n', 'gO')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'grt')
vim.keymap.del({ 'n', 'v' }, 'gra')

local fzf = require("fzf-lua")
local picker = Snacks.picker

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		--[[
		vim.keymap.set('n', 'gQ', vim.lsp.buf.format, { buf = args.buffer })
		vim.keymap.set('n', 'gn', vim.lsp.buf.rename, { buf = args.buffer })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buf = args.buffer })

		vim.keymap.set('n', 'gr', fzf.lsp_references, { buf = args.buffer })
		vim.keymap.set('n', 'ga', fzf.lsp_code_actions, { buf = args.buffer })
		vim.keymap.set('n', 'gI', fzf.lsp_implementations, { buf = args.buffer })
		vim.keymap.set('n', 'go', fzf.lsp_document_symbols, { buf = args.buffer })

		vim.keymap.set('n', '<C-p>o', fzf.lsp_workspace_symbols, { buf = args.buffer })
		--]]

		vim.keymap.set('n', 'gn', vim.lsp.buf.rename, { buf = args.buffer })
		vim.keymap.set('n', 'gQ', vim.lsp.buf.format, { buf = args.buffer })

		vim.keymap.set('n', 'ga', fzf.lsp_code_actions, { buf = args.buffer })

		vim.keymap.set('n', 'gd', picker.lsp_definitions, { buf = args.buffer, desc = "Goto Definition" })
		vim.keymap.set('n', 'gy', picker.lsp_type_definitions, { buf = args.buffer, desc = "Goto Type Definition" })
		vim.keymap.set('n', 'gD', picker.lsp_declarations, { buf = args.buffer, desc = "Goto Declaration" })
		vim.keymap.set('n', 'gr', picker.lsp_references, { buf = args.buffer, desc = "Goto References" })
		vim.keymap.set('n', 'gI', picker.lsp_implementations, { buf = args.buffer, desc = "Goto Implementations" })
		vim.keymap.set('n', 'go', picker.lsp_symbols, { buf = args.buffer, desc = "LSP Symbols" })
		vim.keymap.set('n', 'gO', picker.lsp_workspace_symbols, { buf = args.buffer, desc = "LSP Workspace Symbols" })
	end,
})
