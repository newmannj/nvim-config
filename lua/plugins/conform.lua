return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = { timeout = 1000, lsp_fallback = true },
    formatters_by_ft = {
      go = { 'gofmt' },
      javascript = { 'eslint_d', 'prettier' },
      javascriptreact = { 'eslint_d', 'prettier' },
      lua = { 'stylua' },
      python = { 'ruff_fix', 'ruff_format' },
      sql = { 'sqlfmt' },
      typescript = { 'eslint_d', 'prettier' },
      typescriptreact = { 'eslint_d', 'prettier' },
    },
  },
}
