require("mason").setup {}

local fzf = require("fzf-lua")
local config = require("config")

vim.keymap.del("n", "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "grx")
vim.keymap.del("n", "gO")

for name, _ in pairs(config.lsp) do
	vim.lsp.enable(name)
end

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local function map(lhs, rhs)
			vim.keymap.set("n", lhs, rhs, { buf = ev.buf })
		end

		map("gn", vim.lsp.buf.rename)
		map("gl", vim.lsp.codelens.run)

		map("ga", fzf.lsp_code_actions)
		map("gr", fzf.lsp_references)
		map("gd", fzf.lsp_definitions)
		map("gD", fzf.lsp_declarations)
		map("gI", fzf.lsp_implementations)
		map("gt", fzf.lsp_typedefs)
		map("go", fzf.lsp_document_symbols)
		map("gO", fzf.lsp_workspace_symbols)

		vim.lsp.inlay_hint.enable(true)

		--[[
		vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, {
			convert = function(item)
				local kind = completion_kind_map[item.kind]
				local icon = config.icons.kinds[kind]
				local result = {
					abbr = icon .. item.label,
					kind = "",
					menu = "",
					info = item.detail,
				}
				if item.documentation and item.documentation.value then
					result.info = item.documentation.value
				end

				return result
			end,
		})

		local complete_timer = vim.uv.new_timer()
		vim.api.nvim_create_autocmd("TextChangedI", {
			pattern = "*",
			callback = function(ev)
				complete_timer:stop()
				complete_timer:start(100, 0, vim.schedule_wrap(vim.lsp.completion.get))
			end,
		})
		--]]
	end,
})
