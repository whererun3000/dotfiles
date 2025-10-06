require("nvim-treesitter.configs").setup {
    ensure_installed = { "go", "lua" },

    folds = { enable = true },
    indent = { enable = true },
    highlight = { enable = true },
}
