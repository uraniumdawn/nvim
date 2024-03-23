-- Code Tree Support / Syntax Highlighting
return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    "nvim-treesitter/nvim-treesitter-context",
  },
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    auto_install = true, -- automatically install syntax support when entering new file type buffer
    ensure_installed = {
      'bash',
      'clojure',
      'go',
      'gomod',
      'gosum',
      'lua',
      'python',
      'markdown',
      'markdown_inline',
      'xml',
      'yaml',
      'csv',
      'json',
    },
  },
  config = function(_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end
}
