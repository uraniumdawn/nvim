local M = {}

local help_win = nil

function M.toggle()
  if help_win and vim.api.nvim_win_is_valid(help_win) then
    vim.api.nvim_win_close(help_win, true)
    help_win = nil
    return
  end

  local keybindings_path = vim.fn.stdpath('config') .. '/keybindings.md'
  local file = io.open(keybindings_path, 'r')

  if not file then
    print("Error: keybindings.md not found!")
    return
  end

  local content = file:read('*a')
  file:close()

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
  vim.api.nvim_buf_set_option(buf, 'filetype', 'markdown')
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(content, '\n'))

  local win_opts = {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  }

  help_win = vim.api.nvim_open_win(buf, true, win_opts)
end

return M
