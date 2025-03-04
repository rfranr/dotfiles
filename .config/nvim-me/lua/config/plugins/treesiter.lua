return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter-context"
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    local treesitterContext = require("treesitter-context")

    treesitter.setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "c",
        "rust",
        "java"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      rainbow = {
        enable = true,
        disable = { "html" },
        extended_mode = false,
        max_file_lines = nil,
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    })

    -- TODO: support slow scrolling with arrow keys
     treesitterContext.setup({
       enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
       multiwindow = false, -- Enable multiwindow support.
       max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
       min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
       line_numbers = true,
       multiline_threshold = 20, -- Maximum number of lines to show for a single context
       trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
       mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
       -- Separator between context and content. Should be a single character string, like '-'.
       -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
       separator = nil,
       zindex = 20, -- The Z-index of the context window
       on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
     })
  end,
}
