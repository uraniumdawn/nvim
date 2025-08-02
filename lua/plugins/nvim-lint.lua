-- General purpose linters
return {
  'mfussenegger/nvim-lint',
  event = 'BufWritePost',
  config = function()
    -- This function conditionally sets the linter for Go files.
    -- By default, no linter is active for Go.
    local go_linters = {}

    -- If a .golangci.yml file is found in the project's root directory,
    -- 'golangci-lint' is enabled as the linter for Go files.
    -- This ensures that linting is only performed when a project is
    -- explicitly configured for it.
    if vim.fn.filereadable(vim.loop.cwd() .. '/.golangci.yml') == 1 then
      go_linters = { 'golangcilint' }
    end

    require('lint').linters_by_ft = {
      python = {
        'flake8',
      },
      go = go_linters,
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      pattern = { "*.py", "*.go" },
      callback = function()
        require("lint").try_lint()
      end,
    })
  end
}
