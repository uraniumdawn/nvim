-- LSP and autocompletion
return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
    -- Useful status updates for LSP
    { 'j-hui/fidget.nvim',                        opts = {} },
    -- Additional lua configuration, makes nvim stuff amazing!
    { 'folke/neodev.nvim' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },

    -- Additional user-friendly snippets
    { 'rafamadriz/friendly-snippets' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'ray-x/lsp_signature.nvim' },
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {
        'bashls', -- requires npm to be installed
        'lua_ls', -- with formatting abilities
        'gopls',
        'jsonls', -- requires npm to be installed
        'marksman',
        'pyright',
        'clojure_lsp',
        'jqls',
        'yamlls',
      },
      require('mason-tool-installer').setup({
        -- Install these linters, formatters, debuggers automatically
        ensure_installed = {
          'black',
          'isort',
          'goimports',
          'gofumpt',
          'golines',
          'stylua',
          'golangci-lint',
        },
      }),

      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            on_init = function(client)
              client.server_capabilities.documentFormattingProvider = true
              client.server_capabilities.documentFormattingRangeProvider = true
            end,
            on_attach = function()
              print('lua_ls server is attached')
            end,
            settings = {
              Lua = {
                format = {
                  enable = true,
                  defaultConfig = {
                    indent_style = 'space',
                    indent_size = 4,
                    quote_style = 'single',
                  },
                },
                diagnostics = {
                  -- Get the language server to recognize the `vim` global
                  globals = { 'vim' },
                },
              },
            },
          })
        end,
        gopls = function()
          require('lspconfig').gopls.setup({
            on_attach = function()
              print('gopls server is attached')
            end,
            settings = {
              gopls = {
                analyses = {
                  unusedparams = true,
                },
                completeUnimported = true,
                usePlaceholders = true,
                staticcheck = true,
                gofumpt = true,
              },
            }
          })
        end
      },
    })

    -- Globally configure all LSP floating preview popups (like hover, signature help, etc)
    local open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or 'rounded' -- Set border to rounded
      return open_floating_preview(contents, syntax, opts, ...)
    end

    local cmp = require('cmp')
    local luasnip = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()
    luasnip.config.setup({})

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = {
        completeopt = 'menu,menuone,noinsert',
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
        ['<C-k>'] = cmp.mapping.select_prev_item(), -- previous suggestion
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),    -- scroll backward
        ['<C-f>'] = cmp.mapping.scroll_docs(4),     -- scroll forward
        ['<C-Space>'] = cmp.mapping.complete({}),   -- show completion suggestions
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        -- Tab through suggestions or when a snippet is active, tab to the next argument
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        -- Tab backwards through suggestions or when a snippet is active, tab to the next argument
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- lsp
        { name = 'luasnip' },  -- snippets
        { name = 'buffer' },   -- text within current buffer
        { name = 'path' },     -- file system paths
      }),
      window = {
        -- Add borders to completions popups
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })

    require('lsp_signature').setup({})
  end,
}