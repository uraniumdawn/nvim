-- Formatter
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      go = { { 'goimports', 'gofumpt', 'golines' } },
      python = { 'isort', 'black' },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000,
    },
    black = {
      prepend_args = { '--line-length=200' },
    },
    log_level = vim.log.levels.DEBUG,
  },
}