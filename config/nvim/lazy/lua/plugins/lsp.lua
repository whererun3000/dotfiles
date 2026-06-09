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
            GOGC = "70",
            GOMEMLIMIT = "8GiB",
          },
        },
      },
    },
  },
}
