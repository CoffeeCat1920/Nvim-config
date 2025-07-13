return {
  -- Autopairs: auto-close brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Surround: add/change/delete parentheses, quotes, tags, etc.
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },

  -- Better `f`/`F`/`t`/`T` motions with labels
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {}, -- can be customized later
    key = {
      {
        "<leader>s",
        function() require("flash").jump() end,
        desc = "Flash Jump",
      },
    },
  },

  {
    "czfadmin/titlebar.nvim",
    enabled = true,
  },

}
