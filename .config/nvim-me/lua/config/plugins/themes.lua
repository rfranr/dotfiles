return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          colorblind = {
            enable = true,
            severity = {
              protan = 0.1,
              deutan = 0.7,
            },
          },
        },
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        }
      })

      vim.cmd("colorscheme terafox")
    end
  }
}
