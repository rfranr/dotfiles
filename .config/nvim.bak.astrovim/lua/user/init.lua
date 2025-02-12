-- ~/.config/nvim/lua/user/init.lua

-- Show a notification in Neovim
vim.notify("Francesc custom settings...", vim.log.levels.INFO)

require("toggleterm").setup {
  shell = "bash", -- Set to the shell you prefer (e.g., bash, zsh, fish)
}

-- Show another notification after the setup
vim.notify("Francesc setup completed.", vim.log.levels.INFO)
