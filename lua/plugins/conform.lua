return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = { async = true, lsp_format = 'fallback' },
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff_fix', 'ruff_format' },
      javascript = { 'eslint_d', 'prettier' },
      javascriptreact = { 'eslint_d', 'prettier' },
      sql = { 'sqlfmt' },
      typescript = { 'eslint_d', 'prettier' },
      typescriptreact = { 'eslint_d', 'prettier' },
    },
  },
}
