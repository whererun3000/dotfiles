return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              staticcheck = false,
            },
          },
          cmd_env = {
            GOGC = "90",
            GOMEMLIMIT = "8GiB",
          },
        },
      },
    },
  },
}
