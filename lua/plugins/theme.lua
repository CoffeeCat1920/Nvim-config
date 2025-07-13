return {
  { "blazkowolf/gruber-darker.nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false, -- ensure it loads immediately
    config = function()
      -- Recommended: setup options before loading the colorscheme
      require("gruvbox").setup({
        contrast = "hard", -- soft, medium, hard
        transparent_mode = true, -- or false
        overrides = {
          SignColumn = { bg = "NONE" }, -- make sign column transparent if needed
        },
      })

      vim.o.background = "dark" -- or "light"
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}
