local wk = require("which-key")

local set = {
  opts = {
    loop = true,
    delay = 1100,
    notify = true,
    debug = true,
    show_keys = true,
    show_help = true,
    -- debug = true,
  },
  -- keys = {
  --        { "<leader>çk", "<cmd>Legendary<cr>", desc = " Search command", mode = "n" },
  --    },
  win = {
    title = false,
    border = "single",
    padding = { 2, 2 },
  }
}

wk.setup(set)
wk.add({
  { "<leader>ç",   group = "utils" }, -- group
  { "<leader>çl",  "<cmd>Legendary<cr>",                                  desc = " Search command",                mode = "n" },
  { "<leader>çt",  "<cmd>TabnineChat<cr>",                                desc = " Tabnine",                       mode = "n" },
  { "<leader>çd",  "<cmd>DiffviewOpen<cr>",                               desc = " Diffview open",                 mode = "n" },
  { "<leader>çP",  "<cmd>DiffviewOpen<cr>",                               desc = " Diffview open 2",               mode = "n" },
  { "<leader>çR",  "<cmd>lua vim.lsp.buf.rename()<cr>",                   desc = " Rename symbol",                 mode = "n" },
  --
  { "<leader>çmo", "<cmd>lua vim.lsp.buf.rename()<cr>",                   desc = " --- Open minimap",                  mode = "n" },
  -- minmap
  { "<leader>çmo", "<cmd>lua require('codewindow').open_minimap()<cr>",   desc = "Open minimap",                   mode = "n" },
  { "<leader>çmc", "<cmd>lua require('codewindow').close_minimap()<cr>",  desc = "Close minimap",                  mode = "n" },
  { "<leader>çmt", "<cmd>lua require('codewindow').toggle_minimap()<cr>", desc = "Toggle minimap",                 mode = "n" },
  { "<leader>çmf", "<cmd>lua require('codewindow').toggle_focus()<cr>",   desc = "Toggle focus",                   mode = "n" },

  -- formatting
  { "<leader>çff", "<cmd>lua vim.lsp.buf.format({async = true})<cr>",     desc = "Format document",                mode = "n" },
  { "<leader>çfc", "<cmd>lua require('conform').format()<cr>",          desc = "Format document (with conform)", mode = "n" },




  -- functions F
  { "<F9>",        "<cmd>lua vim.lsp.buf.rename()<cr>",                   desc = " Rename symbol",                 mode = "n" },
  { "<F10>",       "<cmd>lua vim.lsp.buf.code_action()<cr>",              desc = " Code actions",                  mode = "n" },
  { "<F11>",       "<cmd>lua vim.lsp.buf.definition()<cr>",               desc = " Go to declaration",             mode = "n" },
  { "<F12>",       "<cmd>lua vim.lsp.buf.definition()<cr>",               desc = " Go to definition",              mode = "n" },

  ------ -- Go to Definition
  ------ vim.api.nvim_set_keymap('n', '<F12>', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true, desc = "Go to Definition" })
  ------ -- Rename symbol
  ------ vim.api.nvim_set_keymap('n', '<F9>', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true, desc = "Rename symbol" })
  ------ -- Show Hover information
  ------ vim.api.nvim_set_keymap('n', '<F1>', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true, desc = "Show Hover" })
  ------ -- Show Signature Help
  ------ vim.api.nvim_set_keymap('n', '<F2>', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true, desc = "Show Signature Help" })
  ------ -- Go to Type Definition
  ------ vim.api.nvim_set_keymap('n', '<F3>', ':lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true, desc = "Go to Type Definition" })
  ------ -- Show Code Actions
  ------ vim.api.nvim_set_keymap('n', '<F4>', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = "Show Code Actions" })
  ------ -- Show Document Symbols
  ------ vim.api.nvim_set_keymap('n', '<F5>', ':lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true, desc = "Show Document Symbols" })
  ------ -- Format Code
  ------ vim.api.nvim_set_keymap('n', '<F6>', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true, desc = "Format Code" })





  -- { "<leader>çd", "<cmd>lua openDashboard()<cr>", desc = " Dashboard", mode = "n" },

  --{ "<leader>f", group = "file" }, -- group
  --{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  --{ "<leader>fb", function() print("hello") end, desc = "Foobar" },
  --{ "<leader>fn", desc = "New File" },
  --{ "<leader>f1", hidden = true }, -- hide this keymap
  --{ "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  --{ "<leader>b", group = "buffers", expand = function()
  --    return require("which-key.extras").expand.buf()
  --  end
  --},
  {
    -- Nested mappings are allowed and can be added in any order
    -- Most attributes can be inherited or overridden on any level
    -- There's no limit to the depth of nesting
    mode = { "n", "v" },                          -- NORMAL and VISUAL mode
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  }
})






-- local setup = {
--     plugins = {
--         marks = true, -- shows a list of your marks on ' and `
--         registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
--         spelling = {
--             enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
--             suggestions = 20, -- how many suggestions should be shown in the list?
--         },
--         -- the presets plugin, adds help for a bunch of default keybindings in Neovim
--         -- No actual key bindings are created
--         presets = {
--             operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
--             motions = true, -- adds help for motions
--             text_objects = true, -- help for text objects triggered after entering an operator
--             windows = true, -- default bindings on <c-w>
--             nav = true, -- misc bindings to work with windows
--             z = true, -- bindings for folds, spelling and others prefixed with z
--             g = true, -- bindings for prefixed with g
--         },
--     },
--     -- add operators that will trigger motion and text object completion
--     -- to enable all native operators, set the preset / operators plugin above
--     -- operators = { gc = "Comments" },
--     key_labels = {
--         -- override the label used to display some keys. It doesn't effect WK in any other way.
--         -- For example:
--         -- ["<space>"] = "SPC",
--         -- ["<cr>"] = "RET",
--         -- ["<tab>"] = "TAB",
--     },
--     icons = {
--         breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
--         separator = "➜", -- symbol used between a key and it's label
--         group = "+", -- symbol prepended to a group
--     },
--     popup_mappings = {
--         scroll_down = "<c-d>", -- binding to scroll down inside the popup
--         scroll_up = "<c-u>", -- binding to scroll up inside the popup
--     },
--     window = {
--         border = "double", -- none, single, double, shadow
--         position = "bottom", -- bottom, top
--         margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
--         padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
--         winblend = 0,
--     },
--     layout = {
--         height = { min = 4, max = 25 }, -- min and max height of the columns
--         width = { min = 20, max = 50 }, -- min and max width of the columns
--         spacing = 3, -- spacing between columns
--         align = "left", -- align columns left, center or right
--     },
--     ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
--     hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
--     show_help = true, -- show help message on the command line when the popup is visible
--     triggers = "auto", -- automatically setup triggers
--     triggers = {"<leader>", "<C>"}, -- or specify a list manually
--     triggers_blacklist = {
--         -- list of mode / prefixes that should never be hooked by WhichKey
--         -- this is mostly relevant for key maps that start with a native binding
--         -- most people should not need to change this
--         i = { "j", "k" },
--         v = { "j", "k" },
--     },
-- }
--
-- local opts = {
--     mode = {"n", "v"}, -- NORMAL and VISUAL mode
--     prefix = "<leader>",
--     buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--     silent = true, -- use `silent` when creating keymaps
--     noremap = true, -- use `noremap` when creating keymaps
--     nowait = true, -- use `nowait` when creating keymaps
-- }
--
-- local mappings = {
--
--     ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
--     ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
--     ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
--     ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file
--     ["l"] = { "<cmd>Legendary<CR>", "Legendary"},
-- }
--
-- which_key.setup(setup)
-- which_key.register(mappings, opts)
--
