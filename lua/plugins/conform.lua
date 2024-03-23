return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      go = { { 'goimports', 'gofumpt', 'golines' } },
      python = { 'isort', 'black' },
    },
    log_level = vim.log.levels.DEBUG,
  },
}
