return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint-cli2" },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        markdownlint = {
          command = "markdownlint-cli2",
          args = { "--fix", "$FILENAME" },
          stdin = false,
        },
      },

      formatters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
}
