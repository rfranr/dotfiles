return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'main',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Find
      { 'nvim-telescope/telescope.nvim' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  },

  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      ----------------------------------------------------------------------------
      -- telescope



      ------------------------------------------------------------------------------
      -- auto completition
      -- nvim-cmp setup
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          -- Required for LuaSnip, can also use other snippet engines
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For LuaSnip
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = 'nvim_lsp' }, -- LSP completions
          { name = 'luasnip' }, -- Snippets
          { name = 'buffer' }, -- Buffer completions
          { name = 'path' },   -- Path completions
          { name = 'codeium' },
          { name = 'omni' },   -- Omni completion
        },
      })



      ----------------------------------------------------------------------------------------------
      -- lspconfig
      ---
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = { 'ts_ls', 'lua_ls', 'html', 'cssls' }, -- Optional: Auto-install servers
        automatic_installation = true,
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('mason-lspconfig').setup_handlers({
        -- Default handler for all servers
        function(server_name)
          print ( server_name )

          lspconfig[server_name].setup({
            capabilities = lsp_capabilities,
            on_attach = function(client, bufnr)
              --            -- print(vim.inspect(client.server_capabilities))
              --print(vim.inspect(client))
              --print(vim.inspect(bufnr))
              if type(bufnr) == "number" and client.server_capabilities.semanticTokensProvider then
                -- vim.lsp.semantic_tokens.start ( 12

                --   {
                --   client_id = 1,
                --   bufnr = 12
                -- }
                -- )
                -- vim.lsp.semantic_tokens.start
              end
            end,
          })
        end,

        -- Custom config for tsserver if needed
       ---  ['ts_ls'] = function()
       ---    lspconfig.ts_ls.setup({
       ---      capabilities = lsp_capabilities,
       ---      on_attach = function(client, bufnr)
       ---        -- print(vim.inspect(client.server_capabilities))
       ---        if client.server_capabilities.semanticTokensProvider then
       ---          -- vim.lsp.semantic_tokens.start(bufnr)
       ---        end
       ---      end,
       ---      settings = {
       ---        typescript = {
       ---          inlayHints = {
       ---            includeInlayParameterNameHints = 'all',
       ---            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
       ---            includeInlayFunctionParameterTypeHints = true,
       ---            includeInlayVariableTypeHints = false,
       ---            includeInlayPropertyDeclarationTypeHints = true,
       ---            includeInlayFunctionLikeReturnTypeHints = true,
       ---            includeInlayEnumMemberValueHints = true,
       ---          },
       ---        },
       ---        javascript = {
       ---          inlayHints = {
       ---            includeInlayParameterNameHints = 'all',
       ---            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
       ---            includeInlayFunctionParameterTypeHints = true,
       ---            includeInlayVariableTypeHints = false,
       ---            includeInlayPropertyDeclarationTypeHints = true,
       ---            includeInlayFunctionLikeReturnTypeHints = true,
       ---            includeInlayEnumMemberValueHints = true,
       ---          },
       ---        },
       ---      },
       ---    })
       ---  end,


      })
    end,
  }
}
