local cmp = require("cmp")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered({
            -- Use the 'rounded' border style common in aesthetic configs
            border = 'rounded',
            -- Customize highligh groups to match your theme/noice.nvim's look
            winhighlight = 'Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
        }),
        documentation = cmp.config.window.bordered({
            -- Ensure documentation window (if used) also has the rounded border
            border = 'rounded',
            -- Use highligh groups consistent with noice's popups
            winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder', 
        }),
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "nvim_buffer" },
		{ name = "nvim_cmdline" },
	}),
})

require("plugins.cmp.lsp")
require("plugins.cmp.cmdline")

