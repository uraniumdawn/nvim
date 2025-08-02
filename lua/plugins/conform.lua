-- Formatter
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = function()
    -- This function conditionally sets the formatter for Go files.
    -- By default, it uses a standard set of formatters.
    local go_formatters = { 'goimports', 'gofumpt', 'golines' }

    -- However, if a .golangci.yml file is found in the project's root directory,
    -- it switches to using 'golangci-lint' as the sole formatter.
    -- This allows for project-specific formatting rules defined in .golangci.yml.
    if vim.fn.filereadable(vim.loop.cwd() .. '/.golangci.yml') == 1 then
      go_formatters = { 'golangci-lint' }
    end

    return {
      formatters_by_ft = {
        lua = { 'stylua' },
        go = go_formatters,
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
    }
  end,
}