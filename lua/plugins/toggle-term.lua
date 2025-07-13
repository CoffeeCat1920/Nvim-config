return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      -- You can configure general options here if needed
      open_mapping = [[<A-3>]],
      direction = 'float',
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      vim.api.nvim_set_keymap("n", "<A-3>", "<Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true })
    end,
  }
}
