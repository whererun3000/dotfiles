local icons = require("config.icons")

vim.diagnostic.config({
	signs = {
		underline = true,
		severity_sort = true,
		update_in_insert = false,

		virtual_text = {
			prefix = "●",
			source = "if_many",
			spacing = 4,
			-- this will set set the prefix to a function that returns the diagnostics icon based on the severity
			-- prefix = "icons",
		},

		text = {
			[vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
			[vim.diagnostic.severity.INFO] = icons.diagnostics.Info,
			[vim.diagnostic.severity.WARN] = icons.diagnostics.Warn,
			[vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
		},
	},
})

vim.lsp.enable({ 'gopls', 'clangd', 'lua_ls', 'ruff' })

vim.keymap.del({ 'n', 'v' }, 'gra')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'grt')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'gQ', vim.lsp.buf.format, { buf = args.buffer })
		vim.keymap.set('n', 'gN', vim.lsp.buf.rename, { buf = args.buffer })
		vim.keymap.set('n', 'gD', vim.lsp.buf.definition, { buf = args.buffer })
	end,
})
