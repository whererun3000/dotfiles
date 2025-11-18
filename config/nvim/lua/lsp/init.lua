vim.lsp.enable(vim.g.enable_lsp)
vim.lsp.on_type_formatting.enable()

vim.keymap.del('n', 'gO')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'grt')
vim.keymap.del({ 'n', 'v' }, 'gra')

local fzf = require("fzf-lua")

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'gQ', vim.lsp.buf.format, { buf = args.buffer })
		vim.keymap.set('n', 'gn', vim.lsp.buf.rename, { buf = args.buffer })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buf = args.buffer })

		vim.keymap.set('n', 'gr', fzf.lsp_references, { buf = args.buffer })
		vim.keymap.set('n', 'ga', fzf.lsp_code_actions, { buf = args.buffer })
		vim.keymap.set('n', 'gI', fzf.lsp_implementations, { buf = args.buffer })
		vim.keymap.set('n', 'go', fzf.lsp_document_symbols, { buf = args.buffer })

		vim.keymap.set('n', '<C-p>o', fzf.lsp_workspace_symbols, { buf = args.buffer })
	end,
})
