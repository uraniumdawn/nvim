return {
  'RRethy/vim-illuminate',
  config = function()
    require('illuminate').configure {
      modes_allowlist = { 'n' },
      providers = {
        'lsp',
        'treesitter',
        'regex',
      },
      delay = 1000,
      filetypes_denylist = {
        "mason",
        "harpoon",
        "NvimTree",
        "lazy",
        "netrw",
        "DiffviewFiles",
        "TelescopePrompt",
      },
    }
    vim.cmd [[
                augroup illuminate_augroup
                    autocmd!
                    autocmd VimEnter * hi illuminatedWordRead cterm=none gui=none guibg=#526252
                    autocmd VimEnter * hi illuminatedWordText cterm=none gui=none guibg=#525252
                    autocmd VimEnter * hi illuminatedWordWrite cterm=none gui=none guibg=#625252
                augroup END
            ]]
  end,
}
