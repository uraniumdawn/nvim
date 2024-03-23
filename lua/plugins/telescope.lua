-- Fuzzy finder
return {
  'nvim-telescope/telescope.nvim',
  lazy = true,
  branch = '0.1.x',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    'nvim-telescope/telescope-file-browser.nvim',
    'debugloop/telescope-undo.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  configs = function()
    require('telescope').load_extension('telescope-file-browser.nvim')
    require('telescope').load_extension('undo')
  end,
  opts = {
    extensions = {
      undo = {
        side_by_side = true,
        layout_strategy = "vertical",
        layout_config = {
          preview_height = 0.8,
        },
      },
    },
    defaults = {
      layout_config = {
        vertical = {
          width = 0.75
        }
      }
    }
  }
}

-- Default Mappings

-- Mappings     Action
-- <C-n>/<Down> Next item
-- <C-p>/<Up>   Previous item
-- j/k	        Next/previous (in normal mode)
-- H/M/L	      Select High/Middle/Low (in normal mode)
-- gg/G	        Select the first/last item (in normal mode)
-- <CR>	        Confirm selection
-- <C-x>	      Go to file selection as a split
-- <C-v>	      Go to file selection as a vsplit
-- <C-t>	      Go to a file in a new tab
-- <C-u>        Scroll up in preview window
-- <C-d>	      Scroll down in preview window
-- <C-f>	      Scroll left in preview window
-- <C-k>	      Scroll right in preview window
-- <M-f>	      Scroll left in results window
-- <M-k>	      Scroll right in results window
-- <C-/>	      Show mappings for picker actions (insert mode)
-- ?	          Show mappings for picker actions (normal mode)
-- <C-c>	      Close telescope (insert mode)
-- <Esc>	      Close telescope (in normal mode)
-- <Tab>	      Toggle selection and move to next selection
-- <S-Tab>	    Toggle selection and move to prev selection
-- <C-q>	      Send all items not filtered to quickfixlist (qflist)
-- <M-q>	      Send all selected items to qflist
-- <C-r><C-w>	  Insert cword in original window into prompt (insert mode)
