return {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    build = function()
	    pcall(require("nvim-treesitter.install").update({ with_sync = true }))
    end,
    opts = {
        ensure_installed = { "go", "lua" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
