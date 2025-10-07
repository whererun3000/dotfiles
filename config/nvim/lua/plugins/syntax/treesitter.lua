require("nvim-treesitter.configs").setup {
    ensure_installed = { "go", "lua", "c" },

    folds = { enable = true },
    indent = { enable = true },
    highlight = { enable = true },
}
