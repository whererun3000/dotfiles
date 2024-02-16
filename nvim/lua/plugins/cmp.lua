return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",

        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets"
	},
    lazy = true,
	version = "*",
    event = "InsertEnter",
    keys = {
        {
            "<tab>",
            function()
                return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
            end,
            expr = true, silent = true, mode = "i",
        },
        {
            "<tab>",
            function()
                require("luasnip").jump(1)
            end,
            mode = "s",
        },
        {
            "<S-tab>",
            function()
                require("luasnip").jump(-1)
            end,
            mode = { "i", "s" }
        },
    },
    opts = function()
        local cmp = require("cmp")
        local default = require("cmp.config.default")()
        return {
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            completion = {
                completeopt = "menu,menuone,noinsert",
            },
			mapping = cmp.mapping.preset.insert({
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
				['<CR>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				},
			}, { 'i', 's' }),
			sources = cmp.config.sources({
                { name = "luasnip" },
				{ name = 'buffer' },
				{ name = 'nvim_lsp' },
			}),
            experimental = {
                ghost_text = {
                    hl_group = "CmpGhostText",
                },
            },
            sorting = default.sorting,
        }
    end,
	config = function(_, opts)
        require("luasnip.loaders.from_vscode").lazy_load()
        require("cmp").setup(opts)
	end
}
